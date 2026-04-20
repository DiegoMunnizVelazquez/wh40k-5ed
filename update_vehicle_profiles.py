import csv
import xml.etree.ElementTree as ET
from xml.dom import minidom
import sys

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
# NewRecruit usa una estructura similar a BattleScribe, pero puede tener diferencias
# en el esquema y en los nombres de etiquetas. Ajustaremos las modificaciones
# teniendo en cuenta el formato de NewRecruit.

def update_vehicle_profiles(xml_file, csv_file):
    # Leer datos del CSV
    vehicles_data = {}
    with open(csv_file, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            name = row['Nombre']
            vehicles_data[name] = {
                'HP': row['HP'],
                'Frontal': row['BF'],  # Asumiendo BF = Frontal
                'Lateral': row['BL'],  # BL = Lateral
                'Posterior': row['BP'],  # BP = Posterior
                'Tipo': 'Vehículo'
            }

    # Parsear el XML
    tree = ET.parse(xml_file)
    root = tree.getroot()

    # Namespace
    ns = {'bs': 'http://www.battlescribe.net/schema/catalogueSchema'}
    ET.register_namespace('', ns['bs'])

    # Encontrar perfiles de vehículos
    vehicle_profiles = []
    for profile in root.findall('.//bs:profile[@typeName="Vehículo"]', ns):
        vehicle_profiles.append(profile)

    # Asumir que los perfiles están en el mismo orden que el CSV
    vehicle_names = list(vehicles_data.keys())

    if len(vehicle_profiles) < len(vehicle_names):
        print(f"Error: Hay más entradas en CSV ({len(vehicle_names)}) que perfiles en XML ({len(vehicle_profiles)})")
        return

    # Actualizar cada perfil
    for i in range(min(len(vehicle_profiles), len(vehicle_names))):
        profile = vehicle_profiles[i]
        name = vehicle_names[i]
        data = vehicles_data[name]

        # Cambiar el nombre del perfil
        profile.set('name', name)

        # Actualizar características
        characteristics = profile.find('bs:characteristics', ns)
        if characteristics is not None:
            for char in characteristics:
                char_name = char.get('name')
                if char_name in data:
                    char.text = data[char_name]

    # Guardar el XML con formato bonito
    rough_string = ET.tostring(root, encoding='utf-8')
    reparsed = minidom.parseString(rough_string)
    pretty_xml = reparsed.toprettyxml(indent="  ", encoding='utf-8')

    # Remover líneas vacías extra
    lines = pretty_xml.decode('utf-8').split('\n')
    non_empty_lines = [line for line in lines if line.strip()]
    final_xml = '\n'.join(non_empty_lines)

    with open(xml_file, 'w', encoding='utf-8') as f:
        f.write(final_xml)

    print(f"Actualizados {len(vehicle_names)} perfiles de vehículos correctamente")

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