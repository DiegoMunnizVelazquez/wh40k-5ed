import csv
import xml.etree.ElementTree as ET
import sys

"""
Script para actualizar perfiles de bípodes en archivos CAT de BattleScribe.

Uso:
    python update_bipode_profiles.py [archivo_cat] [archivo_csv]

Argumentos:
    archivo_cat: Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')
    archivo_csv: Archivo CSV con perfiles de bípodes (por defecto: 'PerfilesBipodes.csv')

El script actualiza los perfiles de bípodes en el archivo CAT usando los datos del CSV.
Los perfiles se actualizan en el orden en que aparecen en el XML.
"""

# Este script actualiza perfiles de bípodes en archivos XML de NewRecruit.
# Lee los datos de PerfilesBipodes.csv y actualiza los perfiles de tipo Bípode
# en el XML en el mismo orden en que aparecen en el CSV.

def update_bipode_profiles(xml_file, csv_file):
    bipode_data = []
    with open(csv_file, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            bipode_data.append({
                'Nombre': row['Nombre'],
                'HA': row['HA'],
                'HP': row['HP'],
                'F': row['F'],
                'Frontal': row['BF'],
                'Lateral': row['BL'],
                'Posterior': row['BP'],
                'I': row['I'],
                'A': row['A'],
            })

    tree = ET.parse(xml_file)
    root = tree.getroot()

    ns_uri = 'http://www.battlescribe.net/schema/catalogueSchema'
    ET.register_namespace('', ns_uri)

    bipode_profiles = root.findall(f'.//{{{ns_uri}}}profile[@typeName="Bípode"]')

    if len(bipode_profiles) < len(bipode_data):
        print(f"Error: Hay más entradas en CSV ({len(bipode_data)}) que perfiles de Bípode en XML ({len(bipode_profiles)})")
        return

    for i in range(min(len(bipode_profiles), len(bipode_data))):
        profile = bipode_profiles[i]
        data = bipode_data[i]

        profile.set('name', data['Nombre'])

        characteristics = profile.find(f'{{{ns_uri}}}characteristics')
        if characteristics is not None:
            for char in characteristics:
                char_name = char.get('name')
                if char_name in data:
                    char.text = data[char_name]

    tree.write(xml_file, encoding='UTF-8', xml_declaration=True)

    with open(xml_file, 'r', encoding='utf-8') as f:
        content = f.read()

    if content.startswith('<?xml'):
        content = content.replace('<?xml version="1.0" encoding="UTF-8"?>',
                                  '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>', 1)

    with open(xml_file, 'w', encoding='utf-8') as f:
        f.write(content)

    print(f"Actualizados {min(len(bipode_profiles), len(bipode_data))} perfiles de bípodes correctamente")


if __name__ == "__main__":
    # Permitir especificar archivos desde línea de comandos
    # Uso: python update_bipode_profiles.py [archivo_cat] [archivo_csv]
    xml_file = 'Guardia Imperial.cat'
    csv_file = 'PerfilesBipodes.csv'
    
    if len(sys.argv) >= 2:
        xml_file = sys.argv[1]
    if len(sys.argv) >= 3:
        csv_file = sys.argv[2]
    
    print(f"Procesando: CAT={xml_file}, CSV={csv_file}")
    update_bipode_profiles(xml_file, csv_file)
