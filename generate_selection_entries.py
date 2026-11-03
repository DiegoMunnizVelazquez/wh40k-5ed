"""
Script para generar sharedSelectionEntries que apuntan directamente a los perfiles.

Uso:
    python generate_selection_entries.py [archivo_cat]

Argumentos:
    archivo_cat: Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')

El script automáticamente:
1. Carga los perfiles de armas, unidades, vehículos y bípodes del archivo CAT
2. Crea una selectionEntry por cada perfil que todavía no tenga una
3. Cada selectionEntry apunta al perfil mediante un infoLink de tipo "profile"
   (sin infoGroups ni referencias a reglas)
4. Conserva las sharedSelectionEntries existentes sin modificarlas

Ejemplos:
    python generate_selection_entries.py
    python generate_selection_entries.py "Marines Espaciales.cat"
"""

import xml.etree.ElementTree as ET
import uuid
import sys

NS_URI = 'http://www.battlescribe.net/schema/catalogueSchema'
NS = f'{{{NS_URI}}}'

PROFILE_TO_SELECTION_TYPE = {
    'Arma': 'upgrade',
    'Unidad': 'unit',
    'Vehículo': 'unit',
    'Bípode': 'unit'
}


def load_profiles(root):
    """Return {profile name: (profile id, typeName)} for the supported profile types"""
    profiles = {}
    for profile in root.iter(f'{NS}profile'):
        name = profile.get('name')
        id_val = profile.get('id')
        type_name = profile.get('typeName')
        if name and id_val and type_name in PROFILE_TO_SELECTION_TYPE:
            profiles[name] = (id_val, type_name)
    return profiles


def linked_profile_ids(shared_selection_entries):
    """Return the ids of the profiles already linked by a selectionEntry"""
    linked = set()
    for entry in shared_selection_entries.findall(f'{NS}selectionEntry'):
        for info_link in entry.iter(f'{NS}infoLink'):
            if info_link.get('type') == 'profile':
                linked.add(info_link.get('targetId'))
    return linked


def generate_selection_entries(cat_file):
    """Create the missing selectionEntries, one per profile"""
    ET.register_namespace('', NS_URI)
    tree = ET.parse(cat_file)
    root = tree.getroot()

    profiles = load_profiles(root)
    print(f"Encontrados {len(profiles)} perfiles")

    shared_selection_entries = root.find(f'{NS}sharedSelectionEntries')
    if shared_selection_entries is None:
        print("No se encontró la sección sharedSelectionEntries, creándola...")
        shared_selection_entries = ET.SubElement(root, f'{NS}sharedSelectionEntries')

    already_linked = linked_profile_ids(shared_selection_entries)
    total_generated = 0

    for profile_name, (profile_id, profile_type) in sorted(profiles.items()):
        if profile_id in already_linked:
            continue

        selection_entry = ET.SubElement(
            shared_selection_entries, f'{NS}selectionEntry',
            {'type': PROFILE_TO_SELECTION_TYPE[profile_type], 'import': 'true',
             'name': profile_name, 'hidden': 'false', 'id': str(uuid.uuid4())})
        info_links = ET.SubElement(selection_entry, f'{NS}infoLinks')
        ET.SubElement(info_links, f'{NS}infoLink',
                      {'name': profile_name, 'id': str(uuid.uuid4()),
                       'hidden': 'false', 'type': 'profile',
                       'targetId': profile_id})
        total_generated += 1

    ET.indent(tree, space='  ')
    tree.write(cat_file, encoding='utf-8',
               xml_declaration=True)

    with open(cat_file, 'r', encoding='utf-8') as f:
        lines = f.read().split('\n')
    lines[0] = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
    with open(cat_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))

    print(f"Perfiles que ya tenían selectionEntry: {len(already_linked)}")
    print(f"Total de selectionEntries generados: {total_generated}")
    print(f"SelectionEntries generados exitosamente en {cat_file}")


if __name__ == '__main__':
    cat_file = 'Guardia Imperial.cat'

    if len(sys.argv) >= 2:
        cat_file = sys.argv[1]

    print(f"Procesando: CAT={cat_file}")
    generate_selection_entries(cat_file)
