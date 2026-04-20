# Documentación: Generación de Perfiles y CSV para Warhammer 40K 5ª Edición

## 1. Contexto General

Este proyecto automatiza la gestión de perfiles de Warhammer 40K 5ª Edición para la aplicación **NewRecruit** (BattleScribe). Los datos se extraen de imágenes de perfiles de tablas y se convierten en archivos CSV para actualizar automáticamente los catálogos XML.

**Funcionalidades principales:**
- Actualización automática de perfiles de unidades, vehículos, armas y bípodes
- Generación automática de sharedInfoGroups para armas con referencias a reglas
- Formateo XML consistente y válido para BattleScribe

## 2. Archivo Principal

- **Guardia Imperial.cat**: Catálogo XML principal que contiene todos los perfiles (unidades, vehículos, armas, bípodes) y sharedInfoGroups
- **InitGuardia.cat**: Copia de backup del archivo original sin modificaciones
- **Formato XML**: BattleScribe/NewRecruit con namespace `http://www.battlescribe.net/schema/catalogueSchema`
- **Encoding**: UTF-8 con declaración `<?xml version="1.0" encoding="UTF-8" standalone="yes"?>`

## 3. Tipos de Perfiles y CSV Asociados

### 3.1 Perfiles de Unidades
- **Archivo CSV**: `PerfilesUnidades.csv`
- **Cabeceras**: `Nombre,HA,HP,F,R,H,I,A,L,S`
- **XML typeName**: `Unidad`
- **Características en XML**: Tipo, HA, HP, F, R, H, I, A, L, S
- **Total de perfiles**: 41 unidades en el catálogo
- **Script de actualización**: `update_unit_profiles.py`

**Ejemplo de datos:**
```
Astrópata,3,4,3,3,1,3,1,7,5+
Capitán Al'rahem,4,4,3,3,2,3,2,9,5+
Vigilante,3,3,3,3,1,3,2,9,5+
```

### 3.2 Perfiles de Vehículos
- **Archivo CSV**: `PerfilesVehiculos.csv`
- **Cabeceras**: `Nombre,HP,BF,BL,BP`
- **XML typeName**: `Vehículo`
- **Características en XML**: HP, Frontal, Lateral, Posterior, Tipo
- **Script de actualización**: `update_vehicle_profiles.py`

**Significado de características:**
- HP: Hit Points / Puntos de Piedad
- BF: Blindaje Frontal
- BL: Blindaje Lateral
- BP: Blindaje Posterior

### 3.3 Perfiles de Armas
- **Archivo CSV**: `PerfilesArmas.csv`
- **Cabeceras**: `Arma,Alcance,F,FP,Tipo`
- **XML typeName**: `Arma`
- **Características en XML**: Alcance, F, FP, Tipo
- **Total de entradas en CSV**: 51 armas
- **Script de actualización**: `update_weapon_profiles.py`

**Notas especiales:**
- Campo **Tipo** puede contener múltiples valores separados por comas. En estos casos se usan comillas: `"Pesada 1, Área grande"`
- Algunos valores F son `-` o `X`:
  - `-` indica "sin valor" o "no aplica"
  - `X` indica valor especial diferente

**Ejemplo de datos:**
```
Bólter,60cm,4,5,Fuego rápido
Cañón de asedio,60cm,10,2,"Artillería 1, Área grande"
Pistola destraspadora,30cm,X,2,"Pistola, Francotirador"
```

### 3.4 Perfiles de Bípodes
- **Archivo CSV**: `PerfilesBipodes.csv`
- **Cabeceras**: `Nombre,HA,HP,F,BF,BL,BP,I,A`
- **XML typeName**: `Bípode`
- **Características en XML**: HA, HP, F, Frontal, Lateral, Posterior, I, A, Tipo
- **Total de perfiles**: 2 bípodes en el catálogo (Sentinel acorazado, Sentinel explorador)
- **Script de actualización**: `update_bipode_profiles.py`

**Ejemplo de datos:**
```
Sentinel acorazado,3,3,5,12,10,10,3,1
Sentinel explorador,3,3,5,10,10,10,3,1
```

### 3.5 SharedInfoGroups para Armas
- **Propósito**: Crear grupos de información reutilizables que contienen referencias a perfiles de armas y reglas asociadas
- **Generación automática**: Se crea un sharedInfoGroup por cada arma con su nombre
- **Contenido de cada grupo**:
  - Un infoLink al perfil del arma correspondiente
  - InfoLinks a cada regla aplicable según el tipo del arma
- **Script de generación**: `generate_weapon_shared_info_groups.py`
- **Ubicación en XML**: Sección `<sharedInfoGroups>` del catálogo

**Estructura de un sharedInfoGroup:**
```xml
<infoGroup name="Bólter" id="unique-id" hidden="false">
  <infoLinks>
    <infoLink name="Bólter" type="profile" targetId="weapon-profile-id" id="unique-id" hidden="false"/>
    <infoLink name="Fuego rápido" type="rule" targetId="rule-id" id="unique-id" hidden="false"/>
  </infoLinks>
</infoGroup>
```

**Mapeo de tipos a reglas:**
- Pesada → `2e56-6b02-4343-0e40`
- Área grande → `952e-d8aa-7560-44b9`
- Asalto → `8714-46ad-62c0-ce35`
- Fuego rápido → `e15d-1437-cfb2-b8dd`
- Acoplado → `a06f-e29d-bcf4-ed75`
- Área → `31c7-fe6c-af95-f0b5`
- Fusión → `2d66-d516-2bf5-5751`
- Sobrecalentamiento → `f6bb-191b-f63a-0ec5`
- Pistola → `ff92-d10b-2808-eb79`
- Envenenado → `48c8-bb35-6595-03d1`
- Francotirador → `7636-0a2f-8c61-f9b2`
- Artillería → `93b8-287b-914c-9e43`
- Barrera de artillería → `eae1-d240-afcf-4b81`
- Plantilla → `d094-3fd7-bd10-443d`

### 3.6 Script generate_weapon_shared_info_groups.py (Automatizado)
**Funcionalidad mejorada (v2.0):**
- **Carga automática de perfiles**: Lee todos los perfiles de armas directamente del archivo CAT
- **Multi-CAT support**: Puede procesar cualquier archivo CAT especificando parámetros
- **Sin configuración manual**: No requiere mantener diccionarios hardcodeados

**Uso:**
```bash
# Procesar archivo por defecto
python generate_weapon_shared_info_groups.py

# Procesar archivo específico
python generate_weapon_shared_info_groups.py "Marines Espaciales.cat" "PerfilesArmas.csv"

# Procesar con CSV personalizado
python generate_weapon_shared_info_groups.py "Eldars.cat" "armas_eldars.csv"
```

**Ventajas:**
- ✅ **Genérico**: Funciona con cualquier archivo CAT de BattleScribe
- ✅ **Automático**: No requiere actualizar diccionarios manualmente
- ✅ **Flexible**: Acepta parámetros de línea de comandos
- ✅ **Confiable**: Siempre usa los IDs correctos del archivo CAT

## 4. Flujo de Extracción de Datos

### Paso 1: Identificación de la Tabla
- El usuario proporciona una imagen con tabla de perfiles
- Se identifica el tipo de perfil (Unidad, Vehículo, Arma, Bípode)
- Se verifica qué características (columnas) presenta la tabla

### Paso 2: Extracción Manual
- Se leen manualmente los datos de la imagen
- Se transcriben en el CSV correspondiente
- Se respetan los formatos especiales:
  - Valores con múltiples tipos usan comillas: `"tipo1, tipo2"`
  - Nombres en dos líneas se consolidan: "Mortero de asedio Colossus", "Cañón de batalla Demolisher"
  - Se preservan caracteres especiales (acentos, ñ, etc.)

### Paso 3: Correcciones
- Se revisan nombres incompletos (continuaciones en filas siguientes)
- Se verifican valores especiales (X, -)
- Se consolidan entradas que estén divididas en múltiples filas

## 5. Scripts de Actualización de Perfiles

### Estructura Común de los Scripts
```python
1. Leer datos del CSV (csv.DictReader)
2. Parsear XML (xml.etree.ElementTree)
3. Registrar namespace (`ET.register_namespace`)
4. Buscar perfiles con XPath usando namespace completo:
   - Pattern: `.//{http://www.battlescribe.net/schema/catalogueSchema}profile[@typeName="TipoDeseado"]`
5. Validar cantidades: Error si CSV > perfiles en XML
6. Actualizar características en orden secuencial
7. Guardar XML con declaración correcta
```

### Características Importantes Encontradas

**Problema de Namespace**: ElementTree requiere usar la ruta completa con `.//{namespace}` en lugar de prefijos diccionario.

**Declaración XML**: Se debe reemplazar la declaración generada por ET con la correcta:
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
```

**Validación Flexible**: Los scripts solo se detienen si hay MÁS entradas en CSV que perfiles en XML. Si hay MENOS, actualiza solo las disponibles.

## 6. IDs de Características (TypeIds)

Estos IDs son únicos para cada característica dentro de BattleScribe:

### Unidades/Bípodes
- HA: `5ee4ff0b-b244-4670-9d05-91d10f80c32e`
- HP: `f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5`
- F: `da036dbb-32c2-430a-9dd5-aa74e0c4f74b`
- R: `3f9ed75c-36cd-4169-9cef-48391bb55cfd`
- H: `17ee558f-3014-4bd2-afc1-b474d8d2b7a8`
- I: `a558b3ef-04d0-440e-a312-bac3255bf592`
- A: `5dff3e7c-e024-4030-a71d-03195ec06ea7`
- L: `4a42059d-12cd-4c1f-a4c7-bb569d13eeea`
- S: `b215fe72-dbce-4ad6-89ec-c4bb3962c39d`
- Tipo: `c2b4b061-a0fd-499d-8a3d-6ee52587cbd5`

### Vehículos/Bípodes
- Frontal: `8cdd4fef-d1ba-4007-992c-b6f93e86d43f`
- Lateral: `5f9a3780-eecb-4c70-be1d-e5bd06b06e9e`
- Posterior: `0a9f33cb-0412-420a-89d2-20707c360bd2`

### Armas
- Alcance: `6fa97fa8-ea74-4a27-a0fb-bc4e5f367464`
- F: `a6383362-5aa8-4ff0-b1d0-00e059fc9d45`
- FP: `6abee736-f8d3-498e-97ac-a5c68445609f`
- Tipo: `077c342f-d7b9-45c6-b8af-88e97cafd3a2`

## 7. Problemas Conocidos y Soluciones

### Problema: NewRecruit solo detecta el primer perfil
**Causa**: XPath incorrecto en la búsqueda de elementos con namespace.
**Solución**: Usar `.//{namespace}elemento[@atributo="valor"]` con ruta completa.

### Problema: Caracteres doblemente codificados (Astrá→AstrÃ³)
**Causa**: Uso de `minidom.toprettyxml()` que causa doble codificación UTF-8.
**Solución**: Usar directamente `tree.write()` de ElementTree con reemplazo de declaración XML.

### Problema: Declaración XML incorrecta
**Causa**: ElementTree genera `<?xml version='1.0' encoding='UTF-8'?>` sin comillas dobles ni `standalone="yes"`.
**Solución**: Leer el archivo guardado y reemplazar la declaración manualmente.

## 8. Validación de Datos

### Cantidades Esperadas
- Unidades: 41 perfiles
- Vehículos: 20 perfiles (previamente verificado)
- Armas: 1 perfil por defecto en XML (expandible)
- Bípodes: 2 perfiles (Sentinel acorazado, Sentinel explorador)

### Orden de Actualización
Los perfiles se actualizan en el orden que aparecen en el XML, en correspondencia directa con el orden en el CSV. El primer perfil del CSV actualiza el primer perfil del XML de ese tipo, y así sucesivamente.

## 9. Flujo de Trabajo Completo

```
1. Obtener imagen con tabla de perfiles
2. Identificar tipo de perfil (Unidad/Vehículo/Arma/Bípode)
3. Extraer y transcribir datos al CSV correspondiente
4. Revisar y corregir errores de transcripción
5. Ejecutar script de actualización correspondiente:
   - python update_unit_profiles.py (para unidades)
   - python update_vehicle_profiles.py (para vehículos)
   - python update_weapon_profiles.py (para armas)
   - python update_bipode_profiles.py (para bípodes)
6. Para armas: Ejecutar python generate_weapon_shared_info_groups.py
7. Verificar output en NewRecruit
8. Si hay errores, ajustar CSV y reintentar
```

**Nota**: Los scripts de formateo legacy (format_xml.py, clean_xml.py, etc.) ya no son necesarios ya que los scripts principales generan XML con formato correcto directamente.

## 10. Ficheros del Proyecto

### CSV de Perfil
- `PerfilesUnidades.csv` - 41 unidades
- `PerfilesVehiculos.csv` - Vehículos
- `PerfilesArmas.csv` - 51 armas
- `PerfilesBipodes.csv` - 2 bípodes

### Scripts de Actualización
- `update_unit_profiles.py` - Actualiza unidades
- `update_vehicle_profiles.py` - Actualiza vehículos
- `update_weapon_profiles.py` - Actualiza armas
- `update_bipode_profiles.py` - Actualiza bípodes (alternador)
- `generate_weapon_shared_info_groups.py` - Genera sharedInfoGroups para armas
- `generate_init.py` - Genera archivo InitGuardia.cat con estructura base

### Scripts de Formateo (Legacy)
- `format_xml.py` - Formateo XML básico (ya no necesario)
- `format_shared_info.py` - Formateo específico de sharedInfoGroups (ya no necesario)
- `clean_xml.py` - Limpieza de líneas vacías (ya no necesario)
- `compact_xml.py` - Compactación de XML (ya no necesario)

### Archivos XML
- `Guardia Imperial.cat` - Catálogo actualizado
- `InitGuardia.cat` - Backup del estado base
- Otros .cat - Archivos de otros ejércitos

## 11. Comando de Ejecución

Para actualizar todos los perfiles:
```bash
python update_unit_profiles.py
python update_vehicle_profiles.py
python update_weapon_profiles.py
python update_bipode_profiles.py
python generate_weapon_shared_info_groups.py
```

Cada script actualiza independientemente su tipo de perfil. El script `generate_weapon_shared_info_groups.py` debe ejecutarse después de `update_weapon_profiles.py`.

## 11.1 Uso con Parámetros de Línea de Comandos

Todos los scripts ahora aceptan parámetros opcionales para especificar archivos diferentes:

```bash
# Usar archivos por defecto
python update_unit_profiles.py

# Especificar archivo CAT personalizado
python update_unit_profiles.py "Marines Espaciales.cat"

# Especificar ambos archivos
python update_unit_profiles.py "Eldars.cat" "unidades_eldars.csv"

# Lo mismo aplica para todos los scripts:
python update_vehicle_profiles.py "Marines Espaciales.cat" "vehiculos_marines.csv"
python update_weapon_profiles.py "Tau.cat" "armas_tau.csv"
python update_bipode_profiles.py "Necrones.cat" "bipodes_necrones.csv"
python generate_weapon_shared_info_groups.py "Orkos.cat" "armas_orkos.csv"
```

**Parámetros:**
- `archivo_cat`: Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')
- `archivo_csv`: Archivo CSV con los datos (por defecto: específico para cada tipo)

## 12. SharedInfoGroups: Conceptos Avanzados

### ¿Qué son los SharedInfoGroups?
Los sharedInfoGroups son elementos reutilizables en BattleScribe que permiten referenciar información común (perfiles y reglas) desde múltiples lugares del catálogo sin duplicar datos.

### ¿Por qué son importantes para las armas?
- **Reutilización**: Una misma arma puede aparecer en múltiples unidades sin duplicar su definición
- **Consistencia**: Cambios en reglas o perfiles se propagan automáticamente
- **Organización**: Agrupan toda la información relacionada con un arma en un solo lugar

### Estructura Jerárquica
```
sharedInfoGroups
├── infoGroup (por cada arma)
    ├── infoLinks
        ├── infoLink (al perfil del arma)
        └── infoLink(s) (a cada regla aplicable)
```

### IDs Únicos Requeridos
Cada infoGroup debe tener un ID único generado con UUID para evitar conflictos de referencias cruzadas entre catálogos.

### Reglas del Sistema .gst
Las reglas se referencian desde el archivo `Warhammer 40,000 5ª Edición.gst` que contiene todas las reglas del sistema de juego. Los IDs de reglas son fijos y universales.

## 13. Troubleshooting Específico

### Problemas con SharedInfoGroups
- **Error: "targetId not found"**: Verificar que el perfil del arma existe y tiene el ID correcto en WEAPON_PROFILES
- **Reglas no aparecen**: Verificar que el tipo del arma esté correctamente mapeado en RULE_MAPPING
- **IDs duplicados**: El script genera UUID únicos, pero verificar que no haya conflictos con elementos existentes
- **Formato incorrecto**: Asegurarse de que todos los infoLinks tengan `hidden="false"`

### Verificación Post-Generación
Después de ejecutar `generate_weapon_shared_info_groups.py`:
1. Verificar que existan 20 infoGroups (uno por arma)
2. Cada infoGroup debe tener al menos un infoLink al perfil del arma
3. Las reglas deben corresponder con los tipos definidos en el CSV
4. El XML debe ser válido y parseable

### Recuperación de Errores
Si hay errores en la generación:
1. Revisar el CSV de armas para tipos mal formateados
2. Verificar que todos los perfiles de armas existan en el XML
3. Ejecutar nuevamente el script (limpia automáticamente elementos anteriores)
4. Validar el XML resultante con un parser

---

**Última actualización**: Abril 2026
**Versión**: 2.2 - Todos los scripts ahora aceptan parámetros de línea de comandos para multi-CAT support
