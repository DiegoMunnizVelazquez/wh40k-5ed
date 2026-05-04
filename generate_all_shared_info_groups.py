"""
Script para generar sharedInfoGroups de todos los tipos de perfil en archivos CAT de BattleScribe.

Uso:
    python generate_all_shared_info_groups.py [archivo_cat] [archivo_csv]

Argumentos:
    archivo_cat: Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')
    archivo_csv: Archivo CSV con perfiles de armas (por defecto: 'PerfilesArmas.csv')

El script automáticamente:
1. Carga todos los perfiles de armas, unidades, vehículos y bípodes desde el archivo CAT
2. Genera sharedInfoGroups para cada tipo de perfil
3. Para armas: incluye referencias a las reglas basadas en el tipo
4. Formatea el XML correctamente

Ejemplos:
    python generate_all_shared_info_groups.py
    python generate_all_shared_info_groups.py "Marines Espaciales.cat" "PerfilesArmas.csv"
"""

import xml.etree.ElementTree as ET
from xml.dom import minidom
import uuid
import sys
import csv

# Mapeo de tipos de armas a IDs de reglas del .gst
RULE_MAPPING = {
    'Pesada': '2e56-6b02-4343-0e40',
    'Área grande': '952e-d8aa-7560-44b9',
    'Asalto': '8714-46ad-62c0-ce35',
    'Fuego rápido': 'e15d-1437-cfb2-b8dd',
    'Acoplado': 'a06f-e29d-bcf4-ed75',
    'Área': '31c7-fe6c-af95-f0b5',
    'Fusión': '2d66-d516-2bf5-5751',
    'Sobrecalentamiento': 'f6bb-191b-f63a-0ec5',
    'Pistola': 'ff92-d10b-2808-eb79',
    'Envenenado': '48c8-bb35-6595-03d1',
    'Francotirador': '7636-0a2f-8c61-f9b2',
    'Artillería': '93b8-287b-914c-9e43',
    'Barrera de artillería': 'eae1-d240-afcf-4b81',
    'Plantilla': 'd094-3fd7-bd10-443d'
}


def parse_weapon_types(type_str):
    """Parse weapon types from CSV, handling quoted multi-types"""
    if type_str.startswith('"') and type_str.endswith('"'):
        type_str = type_str[1:-1]
    types = [t.strip() for t in type_str.split(',')]
    # Extract base type (remove numbers and modifiers)
    base_types = []
    for t in types:
        # Handle special cases
        if 'Barrera de artillería' in t:
            base_types.append('Barrera de artillería')
        elif 'Artillería' in t:
            base_types.append('Artillería')
        elif 'Área grande' in t:
            base_types.append('Área grande')
        elif 'Área' in t and 'grande' not in t:
            base_types.append('Área')
        else:
            # Remove numbers and get first word
            base_type = t.split()[0] if ' ' in t else t
            if base_type in RULE_MAPPING:
                base_types.append(base_type)
            elif t in RULE_MAPPING:
                base_types.append(t)
    return list(set(base_types))  # Remove duplicates


def load_weapon_types_from_csv(csv_file):
    """Load weapon types from CSV file"""
    weapon_types = {}
    try:
        with open(csv_file, 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            for row in reader:
                weapon_name = row.get('Arma')
                weapon_type = row.get('Tipo')
                if weapon_name and weapon_type:
                    weapon_types[weapon_name] = parse_weapon_types(weapon_type)
    except FileNotFoundError:
        print(f"Advertencia: No se encontró {csv_file}, se usarán solo infoLinks al perfil")
    return weapon_types


def load_profiles_by_type(cat_file):
    """Load all profiles from CAT file organized by type"""
    tree = ET.parse(cat_file)
    root = tree.getroot()
    
    profiles_by_type = {
        'Arma': {},
        'Unidad': {},
        'Vehículo': {},
        'Bípode': {}
    }
    
    # Find all profiles (without namespace since we'll search in the parsed tree)
    for profile in root.findall('.//{http://www.battlescribe.net/schema/catalogueSchema}profile'):
        name = profile.get('name')
        id_val = profile.get('id')
        type_name = profile.get('typeName')
        
        if name and id_val and type_name and type_name in profiles_by_type:
            profiles_by_type[type_name][name] = id_val
    
    return profiles_by_type, tree, root


def generate_infogroups(cat_file, csv_file=None):
    """Generate infoGroups for all profile types"""
    # Load profiles
    profiles_by_type, tree, root = load_profiles_by_type(cat_file)
    
    # Load weapon types from CSV if available
    weapon_types = {}
    if csv_file:
        weapon_types = load_weapon_types_from_csv(csv_file)
    
    # Register namespace
    ns = {'bs': 'http://www.battlescribe.net/schema/catalogueSchema'}
    ET.register_namespace('', 'http://www.battlescribe.net/schema/catalogueSchema')
    
    # Find or create sharedInfoGroups
    shared_info_groups = None
    for elem in root.iter():
        if elem.tag.endswith('sharedInfoGroups'):
            shared_info_groups = elem
            break
    
    if shared_info_groups is None:
        print("No se encontró la sección sharedInfoGroups, creándola...")
        ns_uri = 'http://www.battlescribe.net/schema/catalogueSchema'
        shared_info_groups = ET.SubElement(root, f'{{{ns_uri}}}sharedInfoGroups')
    
    # Clear existing infoGroups (keep only those that reference infoGroups in infoLinks)
    # For now, just clear all to regenerate from scratch
    for child in list(shared_info_groups):
        shared_info_groups.remove(child)
    
    # Generate infoGroups for each profile type
    total_generated = 0
    
    for profile_type, profiles in profiles_by_type.items():
        if not profiles:
            print(f"No se encontraron perfiles de tipo {profile_type}")
            continue
        
        print(f"Generando {len(profiles)} infoGroups de tipo {profile_type}...")
        
        for profile_name, profile_id in profiles.items():
            # Create infoGroup
            info_group_id = str(uuid.uuid4())
            info_group = ET.SubElement(shared_info_groups, 'infoGroup',
                                     {'name': profile_name, 'id': info_group_id, 'hidden': 'false'})
            
            # Create infoLinks
            info_links = ET.SubElement(info_group, 'infoLinks')
            
            # InfoLink to the profile
            profile_link = ET.SubElement(info_links, 'infoLink',
                                       {'name': profile_name, 'type': 'profile',
                                        'targetId': profile_id,
                                        'id': str(uuid.uuid4()), 'hidden': 'false'})
            
            # For weapons, add infoLinks to rules based on weapon type
            if profile_type == 'Arma' and profile_name in weapon_types:
                weapon_rule_types = weapon_types[profile_name]
                for rule_type in weapon_rule_types:
                    if rule_type in RULE_MAPPING:
                        rule_id = RULE_MAPPING[rule_type]
                        rule_link = ET.SubElement(info_links, 'infoLink',
                                                {'name': rule_type, 'type': 'rule',
                                                 'targetId': rule_id,
                                                 'id': str(uuid.uuid4()), 'hidden': 'false'})
            
            total_generated += 1
    
    # Save XML with proper formatting
    rough_string = ET.tostring(root, encoding='utf-8')
    reparsed = minidom.parseString(rough_string)
    pretty_xml = reparsed.toprettyxml(indent="  ", encoding='utf-8')
    
    # Remove extra empty lines
    lines = pretty_xml.decode('utf-8').split('\n')
    non_empty_lines = [line for line in lines if line.strip()]
    
    # Replace XML declaration
    if non_empty_lines and non_empty_lines[0].startswith('<?xml'):
        non_empty_lines[0] = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
    
    final_xml = '\n'.join(non_empty_lines)
    
    with open(cat_file, 'w', encoding='utf-8') as f:
        f.write(final_xml)
    
    print(f"Total de infoGroups generados: {total_generated}")
    print(f"InfoGroups generados exitosamente en {cat_file}")


if __name__ == '__main__':
    # Allow specifying files from command line
    cat_file = 'Guardia Imperial.cat'
    csv_file = 'PerfilesArmas.csv'
    
    if len(sys.argv) >= 2:
        cat_file = sys.argv[1]
    if len(sys.argv) >= 3:
        csv_file = sys.argv[2]
    
    print(f"Procesando: CAT={cat_file}, CSV={csv_file}")
    generate_infogroups(cat_file, csv_file)
