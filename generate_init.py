import uuid

xml_template = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<catalogue xmlns="http://www.battlescribe.net/schema/catalogueSchema" library="false" id="9abe-493b-fadf-0c37" name="Guardia Imperial" gameSystemId="8cf6-c83d-3eeb-e95c" gameSystemRevision="13" revision="2" authorUrl="csddmv@gmail.com" authorContact="csddmv@gmail.com" authorName="Diego Muñiz Velázquez" battleScribeVersion="2.03" type="catalogue">
  <sharedProfiles>
'''

# Generar 41 perfiles
for i in range(41):
    # Generar ID único (similar al formato del original)
    id_str = str(uuid.uuid4()).replace('-', '')[:16]
    id_str = f"{id_str[:8]}-{id_str[8:12]}-{id_str[12:16]}"
    
    profile = f'''    <profile name="New Profile" typeId="2d6001b0-980e-46d2-bcc2-a9fc60109afd" typeName="Unidad" hidden="false" id="{id_str}">
      <characteristics>
        <characteristic name="Tipo" typeId="c2b4b061-a0fd-499d-8a3d-6ee52587cbd5"/>
        <characteristic name="HA" typeId="5ee4ff0b-b244-4670-9d05-91d10f80c32e"/>
        <characteristic name="HP" typeId="f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5"/>
        <characteristic name="F" typeId="da036dbb-32c2-430a-9dd5-aa74e0c4f74b"/>
        <characteristic name="R" typeId="3f9ed75c-36cd-4169-9cef-48391bb55cfd"/>
        <characteristic name="H" typeId="17ee558f-3014-4bd2-afc1-b474d8d2b7a8"/>
        <characteristic name="I" typeId="a558b3ef-04d0-440e-a312-bac3255bf592"/>
        <characteristic name="A" typeId="5dff3e7c-e024-4030-a71d-03195ec06ea7"/>
        <characteristic name="L" typeId="4a42059d-12cd-4c1f-a4c7-bb569d13eeea"/>
        <characteristic name="S" typeId="b215fe72-dbce-4ad6-89ec-c4bb3962c39d"/>
      </characteristics>
    </profile>
'''
    xml_template += profile

xml_template += '''  </sharedProfiles>
</catalogue>
'''

with open('InitGuardia.cat', 'w', encoding='utf-8') as f:
    f.write(xml_template)

print(f"Generado InitGuardia.cat con 41 perfiles")
