import csv
import xml.etree.ElementTree as ET
from xml.dom import minidom
import sys

"""
Script para actualizar perfiles de armas en archivos CAT de BattleScribe.

Uso:
    python update_weapon_profiles.py [archivo_cat] [archivo_csv]

Argumentos:
    archivo_cat: Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')
    archivo_csv: Archivo CSV con perfiles de armas (por defecto: 'PerfilesArmas.csv')

El script actualiza los perfiles de armas en el archivo CAT usando los datos del CSV.
Los perfiles se actualizan en el orden en que aparecen en el XML.
"""

# Este script actualiza perfiles de armas en archivos XML de NewRecruit.
# Lee datos del CSV y actualiza los perfiles en orden secuencial.

def update_weapon_profiles(xml_file, csv_file):
    # Leer datos del CSV
    weapons_data = {}
    with open(csv_file, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            name = row['Arma']
            weapons_data[name] = {
                'Alcance': row['Alcance'],
                'F': row['F'],
                'FP': row['FP'],
                'Tipo': row['Tipo'],
            }

    # Parsear el XML
    tree = ET.parse(xml_file)
    root = tree.getroot()

    # Namespace
    ns = {'bs': 'http://www.battlescribe.net/schema/catalogueSchema'}
    ET.register_namespace('', ns['bs'])

    # Encontrar perfiles de armas
    weapon_profiles = []
    for profile in root.findall('.//bs:profile[@typeName="Arma"]', ns):
        weapon_profiles.append(profile)

    # Obtener nombres de armas en orden del CSV
    weapon_names = list(weapons_data.keys())

    # Verificar si hay suficientes perfiles en el XML
    if len(weapon_profiles) < len(weapon_names):
        print(f"Error: Hay más entradas en CSV ({len(weapon_names)}) que perfiles en XML ({len(weapon_profiles)})")
        return

    # Actualizar cada perfil
    for i in range(min(len(weapon_profiles), len(weapon_names))):
        profile = weapon_profiles[i]
        name = weapon_names[i]
        data = weapons_data[name]

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

    # Remover líneas vacías extra y preservar declaración XML
    lines = pretty_xml.decode('utf-8').split('\n')
    non_empty_lines = [line for line in lines if line.strip()]
    
    # Reemplazar la declaración XML para mantener standalone="yes" y UTF-8 mayúscula
    if non_empty_lines and non_empty_lines[0].startswith('<?xml'):
        non_empty_lines[0] = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
    
    final_xml = '\n'.join(non_empty_lines)

    with open(xml_file, 'w', encoding='utf-8') as f:
        f.write(final_xml)

    print(f"Actualizados {len(weapon_names)} perfiles de armas correctamente")

if __name__ == "__main__":
    # Permitir especificar archivos desde línea de comandos
    # Uso: python update_weapon_profiles.py [archivo_cat] [archivo_csv]
    xml_file = 'Guardia Imperial.cat'
    csv_file = 'PerfilesArmas.csv'
    
    if len(sys.argv) >= 2:
        xml_file = sys.argv[1]
    if len(sys.argv) >= 3:
        csv_file = sys.argv[2]
    
    print(f"Procesando: CAT={xml_file}, CSV={csv_file}")
    update_weapon_profiles(xml_file, csv_file)
