import csv
import xml.etree.ElementTree as ET
import sys
import uuid

FALLBACK_PROFILE_TYPE_ID = '725a358c-765b-498c-8de5-399fc0c0725f'
FALLBACK_CHARACTERISTIC_TYPE_IDS = {
    'HP': 'f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5',
    'Frontal': '8cdd4fef-d1ba-4007-992c-b6f93e86d43f',
    'Lateral': '5f9a3780-eecb-4c70-be1d-e5bd06b06e9e',
    'Posterior': '0a9f33cb-0412-420a-89d2-20707c360bd2',
    'Tipo': '077c342f-d7b9-45c6-b8af-88e97cafd3a2',
}

"""
Script para actualizar perfiles de vehículos en archivos CAT de BattleScribe.

Uso:
    python update_vehicle_profiles.py [archivo_cat] [archivo_csv]

Argumentos:
    archivo_cat: Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')
    archivo_csv: Archivo CSV con perfiles de vehículos (por defecto: 'PerfilesVehiculos.csv')

El script actualiza los perfiles de vehículos en el archivo CAT usando los datos del CSV.
Los perfiles se actualizan en el orden en que aparecen en el XML.
"""

# Este script actualiza perfiles de vehículos en archivos XML de NewRecruit.
# Si el CSV contiene más filas que perfiles existentes, crea perfiles nuevos
# con IDs únicos para evitar depender de entradas preexistentes.


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

def update_vehicle_profiles(xml_file, csv_file):
    # Leer datos del CSV
    vehicles_data = []
    with open(csv_file, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            vehicles_data.append({
                'Nombre': row['Nombre'],
                'HP': row['HP'],
                'Frontal': row['BF'],  # Asumiendo BF = Frontal
                'Lateral': row['BL'],  # BL = Lateral
                'Posterior': row['BP'],  # BP = Posterior
                'Tipo': 'Vehículo'
            })

    # Parsear el XML
    tree = ET.parse(xml_file)
    root = tree.getroot()

    # Namespace
    ns = {'bs': 'http://www.battlescribe.net/schema/catalogueSchema'}
    ET.register_namespace('', ns['bs'])

    ns_uri = ns['bs']
    shared_profiles = root.find(f'{{{ns_uri}}}sharedProfiles')
    if shared_profiles is None:
        raise ValueError('No se encontró la sección sharedProfiles en el CAT')

    vehicle_profiles = root.findall('.//bs:profile[@typeName="Vehículo"]', ns)
    profile_type_id = get_profile_type_id(root, ns_uri, 'Vehículo', vehicle_profiles)
    characteristic_type_ids = get_characteristic_type_ids(root, ns_uri, 'Vehículo', vehicle_profiles)
    char_order = ['HP', 'Frontal', 'Lateral', 'Posterior', 'Tipo']

    # Actualizar o crear perfiles según sea necesario
    for i, data in enumerate(vehicles_data):
        if i < len(vehicle_profiles):
            profile = vehicle_profiles[i]
        else:
            profile_attrs = {
                'name': data['Nombre'],
                'typeId': profile_type_id,
                'typeName': 'Vehículo',
                'hidden': 'false',
                'id': str(uuid.uuid4())
            }
            profile = ET.SubElement(shared_profiles, f'{{{ns_uri}}}profile', profile_attrs)
            ET.SubElement(profile, f'{{{ns_uri}}}characteristics')
            vehicle_profiles.append(profile)

        # Cambiar el nombre del perfil
        profile.set('name', data['Nombre'])

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

    ET.indent(tree, space='  ')
    tree.write(xml_file, encoding='UTF-8', xml_declaration=True)

    ensure_xml_declaration(xml_file)

    print(f"Actualizados/creados {len(vehicles_data)} perfiles de vehículos correctamente")

if __name__ == "__main__":
    # Permitir especificar archivos desde línea de comandos
    # Uso: python update_vehicle_profiles.py [archivo_cat] [archivo_csv]
    xml_file = 'Guardia Imperial.cat'
    csv_file = 'PerfilesVehiculos.csv'
    
    if len(sys.argv) >= 2:
        xml_file = sys.argv[1]
    if len(sys.argv) >= 3:
        csv_file = sys.argv[2]
    
    print(f"Procesando: CAT={xml_file}, CSV={csv_file}")
    update_vehicle_profiles(xml_file, csv_file)