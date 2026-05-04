"""
Script para generar sharedSelectionEntries que apuntan a sharedInfoGroups.

Uso:
    python generate_selection_entries.py [archivo_cat]

Argumentos:
    archivo_cat: Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')

El script automáticamente:
1. Carga todos los infoGroups del archivo CAT
2. Genera selectionEntries correspondientes para cada infoGroup
3. Cada selectionEntry apunta al infoGroup mediante un infoLink
4. Formatea el XML correctamente

Ejemplos:
    python generate_selection_entries.py
    python generate_selection_entries.py "Marines Espaciales.cat"
"""

import xml.etree.ElementTree as ET
from xml.dom import minidom
import uuid
import sys


# Mapeo de nombres de perfil a tipo de selectionEntry y tipo de infoLink esperado
PROFILE_TO_SELECTION_TYPE = {
    'Arma': 'upgrade',
    'Unidad': 'unit',
    'Vehículo': 'unit',
    'Bípode': 'unit'
}


def load_infogroups_from_cat(cat_file):
    """Load all infoGroups from CAT file"""
    tree = ET.parse(cat_file)
    root = tree.getroot()
    
    infogroups = {}
    
    # Find all infoGroups (with namespace)
    for infogroup in root.findall('.//{http://www.battlescribe.net/schema/catalogueSchema}infoGroup'):
        name = infogroup.get('name')
        id_val = infogroup.get('id')
        
        if name and id_val:
            # Try to determine the type from the infoLinks inside
            profile_type = None
            for infolink in infogroup.findall('.//{http://www.battlescribe.net/schema/catalogueSchema}infoLink'):
                if infolink.get('type') == 'profile':
                    # This is likely for a weapon, unit, vehicle, or bípode
                    # We'll determine based on context
                    profile_type = 'Desconocido'
                    break
            
            if profile_type:
                infogroups[name] = {
                    'id': id_val,
                    'type': profile_type
                }
            else:
                # Default type if we can't determine
                infogroups[name] = {
                    'id': id_val,
                    'type': 'upgrade'  # default
                }
    
    return infogroups, tree, root


def build_profile_type_map(root):
    """Build a map of profile name -> profile type from CAT root once."""
    ns = 'http://www.battlescribe.net/schema/catalogueSchema'
    profile_type_map = {}

    for profile in root.findall(f'.//{{{ns}}}profile'):
        profile_name = profile.get('name')
        profile_type = profile.get('typeName')
        if profile_name and profile_type:
            profile_type_map[profile_name] = profile_type

    return profile_type_map


def generate_selection_entries(cat_file):
    """Generate selectionEntries for all infoGroups"""
    # Load infoGroups
    infogroups, tree, root = load_infogroups_from_cat(cat_file)
    profile_type_map = build_profile_type_map(root)

    print(f"Encontrados {len(infogroups)} infoGroups")

    # Register namespace
    ET.register_namespace('', 'http://www.battlescribe.net/schema/catalogueSchema')

    # Find sharedSelectionEntries
    ns_uri = 'http://www.battlescribe.net/schema/catalogueSchema'
    shared_selection_entries = None
    for elem in root.iter():
        if elem.tag.endswith('sharedSelectionEntries'):
            shared_selection_entries = elem
            break

    if shared_selection_entries is None:
        print("No se encontró la sección sharedSelectionEntries, creándola...")
        shared_selection_entries = ET.SubElement(root, f'{{{ns_uri}}}sharedSelectionEntries')
    
    # Clear existing selectionEntries
    for child in list(shared_selection_entries):
        shared_selection_entries.remove(child)
    
    # Generate selectionEntries
    total_generated = 0
    
    for infogroup_name, infogroup_info in sorted(infogroups.items()):
        # Determine profile type
        profile_type = profile_type_map.get(infogroup_name, 'Desconocido')

        # Determine selectionEntry type
        selection_type = PROFILE_TO_SELECTION_TYPE.get(profile_type, 'upgrade')
        
        # Create selectionEntry
        selection_entry_id = str(uuid.uuid4())
        selection_entry = ET.SubElement(shared_selection_entries, 'selectionEntry',
                                       {'type': selection_type, 'import': 'true',
                                        'name': infogroup_name, 'hidden': 'false',
                                        'id': selection_entry_id})
        
        # Create infoLinks
        info_links = ET.SubElement(selection_entry, 'infoLinks')
        
        # InfoLink to the infoGroup
        info_link = ET.SubElement(info_links, 'infoLink',
                                 {'name': infogroup_name, 'id': str(uuid.uuid4()),
                                  'hidden': 'false', 'type': 'infoGroup',
                                  'targetId': infogroup_info['id']})
        
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
    
    print(f"Total de selectionEntries generados: {total_generated}")
    print(f"SelectionEntries generados exitosamente en {cat_file}")


if __name__ == '__main__':
    # Allow specifying file from command line
    cat_file = 'Guardia Imperial.cat'
    
    if len(sys.argv) >= 2:
        cat_file = sys.argv[1]
    
    print(f"Procesando: CAT={cat_file}")
    generate_selection_entries(cat_file)
