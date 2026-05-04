import csv
import xml.etree.ElementTree as ET
import sys
import uuid

FALLBACK_PROFILE_TYPE_ID = '2d6001b0-980e-46d2-bcc2-a9fc60109afd'
FALLBACK_CHARACTERISTIC_TYPE_IDS = {
    'Tipo': 'c2b4b061-a0fd-499d-8a3d-6ee52587cbd5',
    'HA': '5ee4ff0b-b244-4670-9d05-91d10f80c32e',
    'HP': 'f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5',
    'F': 'da036dbb-32c2-430a-9dd5-aa74e0c4f74b',
    'R': '3f9ed75c-36cd-4169-9cef-48391bb55cfd',
    'H': '17ee558f-3014-4bd2-afc1-b474d8d2b7a8',
    'I': 'a558b3ef-04d0-440e-a312-bac3255bf592',
    'A': '5dff3e7c-e024-4030-a71d-03195ec06ea7',
    'L': '4a42059d-12cd-4c1f-a4c7-bb569d13eeea',
    'S': 'b215fe72-dbce-4ad6-89ec-c4bb3962c39d',
}

"""
Script para actualizar perfiles de unidades en archivos CAT de BattleScribe.

Uso:
    python update_unit_profiles.py [archivo_cat] [archivo_csv]

Argumentos:
    archivo_cat: Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')
    archivo_csv: Archivo CSV con perfiles de unidades (por defecto: 'PerfilesUnidades.csv')

El script identifica los perfiles por su atributo 'name' en el XML:
- Si un perfil del CSV ya existe en el CAT (mismo nombre), se actualizan sus características.
- Si un perfil del CSV no existe en el CAT, se crea uno nuevo con UUID.
- Los perfiles que existen en el CAT pero no en el CSV se mantienen intactos.
"""


def get_profile_type_id(root, ns_uri, type_name, profiles):
    if profiles and profiles[0].get('typeId'):
        return profiles[0].get('typeId')

    profile_type = root.find(f'.//{{{ns_uri}}}profileType[@name="{type_name}"]')
    if profile_type is not None and profile_type.get('id'):
        return profile_type.get('id')

    return FALLBACK_PROFILE_TYPE_ID


def get_characteristic_type_ids(root, ns_uri, type_name, profiles):
    type_ids = {}

    for profile in profiles:
        characteristics = profile.find(f'{{{ns_uri}}}characteristics')
        if characteristics is None:
            continue
        for char in characteristics:
            char_name = char.get('name')
            char_type_id = char.get('typeId')
            if char_name and char_type_id and char_name not in type_ids:
                type_ids[char_name] = char_type_id

    if type_ids:
        return type_ids

    profile_type = root.find(f'.//{{{ns_uri}}}profileType[@name="{type_name}"]')
    if profile_type is not None:
        for char_type in profile_type.findall(f'.//{{{ns_uri}}}characteristicType'):
            char_name = char_type.get('name')
            char_type_id = char_type.get('id')
            if char_name and char_type_id:
                type_ids[char_name] = char_type_id

    for char_name, char_type_id in FALLBACK_CHARACTERISTIC_TYPE_IDS.items():
        if char_name not in type_ids:
            type_ids[char_name] = char_type_id

    return type_ids


def ensure_xml_declaration(xml_file):
    with open(xml_file, 'r', encoding='utf-8') as f:
        content = f.read()

    lines = content.splitlines()
    if lines and lines[0].startswith('<?xml'):
        lines[0] = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
        content = '\n'.join(lines)

    with open(xml_file, 'w', encoding='utf-8') as f:
        f.write(content)

def update_unit_profiles(xml_file, csv_file):
    # Leer datos del CSV y detectar nombres duplicados
    units_data = []
    seen_names = {}
    duplicates = []
    with open(csv_file, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for line_num, row in enumerate(reader, start=2):
            nombre = row['Nombre']
            if nombre in seen_names:
                duplicates.append(f"  - \"{nombre}\" (líneas {seen_names[nombre]} y {line_num})")
                continue
            seen_names[nombre] = line_num
            units_data.append({
                'Nombre': nombre,
                'Tipo': row['Tipo'],
                'HA': row['HA'],
                'HP': row['HP'],
                'F': row['F'],
                'R': row['R'],
                'H': row['H'],
                'I': row['I'],
                'A': row['A'],
                'L': row['L'],
                'S': row['S'],
            })

    if duplicates:
        print(f"⚠️  AVISO: Se encontraron nombres duplicados en {csv_file}:")
        for d in duplicates:
            print(d)
        print("  Solo se procesará la primera aparición de cada nombre.")
        print("  Revisa el CSV y corrige los nombres duplicados.")

    # Parsear el XML
    tree = ET.parse(xml_file)
    root = tree.getroot()

    # Namespace
    ns = {'bs': 'http://www.battlescribe.net/schema/catalogueSchema'}
    ET.register_namespace('', ns['bs'])

    ns_uri = ns['bs']
    shared_profiles = root.find(f'{{{ns_uri}}}sharedProfiles')
    if shared_profiles is None:
        print('No se encontró la sección sharedProfiles, creándola...')
        shared_profiles = ET.SubElement(root, f'{{{ns_uri}}}sharedProfiles')

    unit_profiles = root.findall('.//bs:profile[@typeName="Unidad"]', ns)
    profile_type_id = get_profile_type_id(root, ns_uri, 'Unidad', unit_profiles)
    characteristic_type_ids = get_characteristic_type_ids(root, ns_uri, 'Unidad', unit_profiles)
    char_order = ['Tipo', 'HA', 'HP', 'F', 'R', 'H', 'I', 'A', 'L', 'S']

    # Indexar perfiles existentes por nombre
    profiles_by_name = {}
    for profile in unit_profiles:
        name = profile.get('name')
        if name:
            profiles_by_name[name] = profile

    total_existing = len(profiles_by_name)
    updated = 0
    created = 0

    # Actualizar existentes o crear nuevos, identificando por nombre
    for data in units_data:
        nombre = data['Nombre']
        profile = profiles_by_name.get(nombre)

        if profile is not None:
            updated += 1
        else:
            # No existe en el CAT: crear nuevo
            profile_attrs = {
                'name': nombre,
                'typeId': profile_type_id,
                'typeName': 'Unidad',
                'hidden': 'false',
                'id': str(uuid.uuid4())
            }
            profile = ET.SubElement(shared_profiles, f'{{{ns_uri}}}profile', profile_attrs)
            ET.SubElement(profile, f'{{{ns_uri}}}characteristics')
            created += 1

        # Actualizar características
        characteristics = profile.find(f'{{{ns_uri}}}characteristics')
        if characteristics is None:
            characteristics = ET.SubElement(profile, f'{{{ns_uri}}}characteristics')

        existing_chars = {char.get('name'): char for char in characteristics}

        for char_name in char_order:
            char = existing_chars.get(char_name)
            if char is None:
                char_attrs = {'name': char_name}
                char_type_id = characteristic_type_ids.get(char_name)
                if char_type_id:
                    char_attrs['typeId'] = char_type_id
                char = ET.SubElement(characteristics, f'{{{ns_uri}}}characteristic', char_attrs)

            char.text = data.get(char_name, '')

    preserved = total_existing - updated

    ET.indent(tree, space='  ')
    tree.write(xml_file, encoding='UTF-8', xml_declaration=True)

    ensure_xml_declaration(xml_file)

    print(f"Resultado: {updated} actualizados, {created} creados, {preserved} preservados (solo en CAT)")

if __name__ == "__main__":
    xml_file = 'Guardia Imperial.cat'
    csv_file = 'PerfilesUnidades.csv'
    
    if len(sys.argv) >= 2:
        xml_file = sys.argv[1]
    if len(sys.argv) >= 3:
        csv_file = sys.argv[2]
    
    print(f"Procesando: CAT={xml_file}, CSV={csv_file}")
    update_unit_profiles(xml_file, csv_file)
