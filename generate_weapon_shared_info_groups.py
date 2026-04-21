"""
Script para generar sharedInfoGroups de armas en archivos CAT de BattleScribe.

Uso:
    python generate_weapon_shared_info_groups.py [archivo_cat] [archivo_csv]

Argumentos:
    archivo_cat: Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')
    archivo_csv: Archivo CSV con perfiles de armas (por defecto: 'PerfilesArmas.csv')

El script automáticamente:
1. Carga todos los perfiles de armas desde el archivo CAT
2. Lee los tipos de armas desde el CSV
3. Genera sharedInfoGroups con referencias a perfiles y reglas
4. Formatea el XML correctamente

Ejemplos:
    python generate_weapon_shared_info_groups.py
    python generate_weapon_shared_info_groups.py "Marines Espaciales.cat" "PerfilesArmas.csv"
    python generate_weapon_shared_info_groups.py "Eldars.cat" "armas_eldars.csv"
"""

import csv
import xml.etree.ElementTree as ET
from xml.dom import minidom
import uuid
import sys

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

# IDs de perfiles de armas (obtenidos de Guardia Imperial.cat)
# NOTA: Este diccionario se genera automáticamente del archivo CAT
WEAPON_PROFILES = {}

def load_weapon_profiles_from_cat(cat_file):
    """Load weapon profile IDs from the CAT file automatically"""
    global WEAPON_PROFILES
    
    tree = ET.parse(cat_file)
    root = tree.getroot()
    
    # Clear existing profiles
    WEAPON_PROFILES.clear()
    
    ns_uri = 'http://www.battlescribe.net/schema/catalogueSchema'

    # Find all weapon profiles with namespace
    for profile in root.findall(f'.//{{{ns_uri}}}profile[@typeName="Arma"]'):
        name = profile.get('name')
        id_val = profile.get('id')
        if name and id_val:
            WEAPON_PROFILES[name] = id_val
    
    print(f"Cargados {len(WEAPON_PROFILES)} perfiles de armas desde {cat_file}")

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

def generate_shared_info_groups(cat_file='Guardia Imperial.cat', csv_file='PerfilesArmas.csv'):
    # Cargar perfiles de armas automáticamente desde el archivo CAT
    load_weapon_profiles_from_cat(cat_file)
    
    # Leer el archivo CAT para obtener la estructura
    tree = ET.parse(cat_file)
    root = tree.getroot()

    # Registrar namespace
    ns = {'bs': 'http://www.battlescribe.net/schema/catalogueSchema'}
    ET.register_namespace('', ns['bs'])

    # Encontrar la sección sharedInfoGroups
    shared_info_groups = None
    for elem in root.iter():
        if elem.tag.endswith('sharedInfoGroups'):
            shared_info_groups = elem
            break

    if shared_info_groups is None:
        print("No se encontró la sección sharedInfoGroups")
        return

    # Limpiar elementos existentes en sharedInfoGroups
    for child in list(shared_info_groups):
        shared_info_groups.remove(child)

    # Leer CSV de armas
    with open(csv_file, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            weapon_name = row['Arma']
            weapon_types = parse_weapon_types(row['Tipo'])

            # Generar ID único para el infoGroup
            info_group_id = str(uuid.uuid4())

            # Crear infoGroup
            info_group = ET.SubElement(shared_info_groups, 'infoGroup',
                                     {'name': weapon_name, 'id': info_group_id, 'hidden': 'false'})

            # Crear infoLinks
            info_links = ET.SubElement(info_group, 'infoLinks')

            # InfoLink al perfil del arma
            if weapon_name in WEAPON_PROFILES:
                profile_link = ET.SubElement(info_links, 'infoLink',
                                           {'name': weapon_name, 'type': 'profile',
                                            'targetId': WEAPON_PROFILES[weapon_name],
                                            'id': str(uuid.uuid4()), 'hidden': 'false'})

            # InfoLinks a las reglas
            for weapon_type in weapon_types:
                if weapon_type in RULE_MAPPING:
                    rule_link = ET.SubElement(info_links, 'infoLink',
                                            {'name': weapon_type, 'type': 'rule',
                                             'targetId': RULE_MAPPING[weapon_type],
                                             'id': str(uuid.uuid4()), 'hidden': 'false'})

    # Guardar el XML con formato bonito
    rough_string = ET.tostring(root, encoding='utf-8')
    reparsed = minidom.parseString(rough_string)
    pretty_xml = reparsed.toprettyxml(indent="  ", encoding='utf-8')

    # Remover líneas vacías extra y preservar declaración XML
    lines = pretty_xml.decode('utf-8').split('\n')
    non_empty_lines = [line for line in lines if line.strip()]
    
    # Reemplazar la declaración XML para mantener standalone="yes" y UTF-8 mayúscula
    if non_empty_lines and non_empty_lines[0].startswith('<?xml'):
        non_empty_lines[0] = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
    
    final_xml = '\n'.join(non_empty_lines)

    with open(cat_file, 'w', encoding='utf-8') as f:
        f.write(final_xml)

    print(f"SharedInfoGroups generados exitosamente en {cat_file}")

if __name__ == '__main__':
    # Permitir especificar archivos desde línea de comandos
    # Uso: python generate_weapon_shared_info_groups.py [archivo_cat] [archivo_csv]
    cat_file = 'Guardia Imperial.cat'
    csv_file = 'PerfilesArmas.csv'
    
    if len(sys.argv) >= 2:
        cat_file = sys.argv[1]
    if len(sys.argv) >= 3:
        csv_file = sys.argv[2]
    
    print(f"Procesando: CAT={cat_file}, CSV={csv_file}")
    generate_shared_info_groups(cat_file, csv_file)