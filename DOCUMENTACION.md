# Documentación: Generación de Perfiles y CSV para Warhammer 40K 5ª Edición

## 1. Contexto General

Este proyecto automatiza la gestión de perfiles de Warhammer 40K 5ª Edición para la aplicación **NewRecruit** (BattleScribe). Los datos se extraen de imágenes de perfiles de tablas y se convierten en archivos CSV para actualizar automáticamente los catálogos XML.

**Funcionalidades principales:**
- Actualización automática de perfiles de unidades, vehículos, armas y bípodes
- Creación automática de perfiles faltantes con IDs únicos (UUID) cuando el CAT no tiene suficientes entradas
- Generación automática de sharedSelectionEntries enlazadas directamente a los perfiles (sin infoGroups ni referencias a reglas)
- Formateo XML consistente y válido para BattleScribe

## 2. Archivo Principal

- **Guardia Imperial.cat**: Catálogo XML principal que contiene todos los perfiles (unidades, vehículos, armas, bípodes) y sharedSelectionEntries
- **InitGuardia.cat**: Copia de backup del archivo original sin modificaciones
- **Formato XML**: BattleScribe/NewRecruit con namespace `http://www.battlescribe.net/schema/catalogueSchema`
- **Encoding**: UTF-8 con declaración `<?xml version="1.0" encoding="UTF-8" standalone="yes"?>`

## 3. Tipos de Perfiles y CSV Asociados

### 3.1 Perfiles de Unidades
- **Archivo CSV**: `csv/Generico/PerfilesUnidades.csv` (genérico) / `csv/<Ejército>/<Ejército>_Unidades.csv` (por ejército)
- **Cabeceras**: `Nombre,Tipo,HA,HP,F,R,H,I,A,L,S`
- **XML typeName**: `Unidad`
- **Características en XML**: Tipo, HA, HP, F, R, H, I, A, L, S
- **Campo Tipo**: Leído dinámicamente del CSV (p.ej. `Infantería`, `Monstruo`, `Caballería`). Ya no está hardcodeado.
- **Total de perfiles**: 41 unidades en el catálogo de Guardia Imperial
- **Script de actualización**: `update_unit_profiles.py`

**Ejemplo de datos:**
```
Astrópata,Infantería,3,4,3,3,1,3,1,7,5+
Capitán Al'rahem,Infantería,4,4,3,3,2,3,2,9,5+
Vigilante,Infantería,3,3,3,3,1,3,2,9,5+
```

### 3.2 Perfiles de Vehículos
- **Archivo CSV**: `csv/Generico/PerfilesVehiculos.csv` (genérico) / `csv/<Ejército>/<Ejército>_Vehiculos.csv` (por ejército)
- **Cabeceras**: `Nombre,HP,BF,BL,BP,Tipo`
- **XML typeName**: `Vehículo`
- **Características en XML**: HP, Frontal, Lateral, Posterior, Tipo
- **Campo Tipo**: Leído dinámicamente del CSV (p.ej. `Vehículo`, `Tanque`). Ya no está hardcodeado.
- **Script de actualización**: `update_vehicle_profiles.py`

**Significado de características:**
- HP: Hit Points / Puntos de Piedad
- BF: Blindaje Frontal
- BL: Blindaje Lateral
- BP: Blindaje Posterior

### 3.3 Perfiles de Armas
- **Archivo CSV**: `csv/Generico/PerfilesArmas.csv` (genérico) / `csv/<Ejército>/<Ejército>_Armas.csv` (por ejército)
- **Cabeceras**: `Arma,Alcance,F,FP,Tipo`
- **XML typeName**: `Arma`
- **Características en XML**: Alcance, F, FP, Tipo
- **Total de entradas en CSV**: 49 armas (CSV actual)
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
- **Archivo CSV**: `csv/Generico/PerfilesBipodes.csv` (genérico) / `csv/<Ejército>/<Ejército>_Bipodes.csv` (por ejército)
- **Cabeceras**: `Nombre,HA,HP,F,BF,BL,BP,I,A,Tipo`
- **XML typeName**: `Bípode`
- **Características en XML**: HA, HP, F, Frontal, Lateral, Posterior, I, A, Tipo
- **Campo Tipo**: Leído dinámicamente del CSV (p.ej. `Bípode`, `Andador`). Ya no está hardcodeado.
- **Total de perfiles**: 2 bípodes en el catálogo (Sentinel acorazado, Sentinel explorador)
- **Script de actualización**: `update_bipode_profiles.py`

**Ejemplo de datos:**
```
Sentinel acorazado,3,3,5,12,10,10,3,1,Bípode
Sentinel explorador,3,3,5,10,10,10,3,1,Bípode
```

### 3.5 SelectionEntries enlazadas a perfiles
- **Propósito**: Permitir seleccionar en NewRecruit las armas, unidades, vehículos y bípodes definidos como perfiles
- **Referencia directa**: Cada selectionEntry lleva un único infoLink de tipo `profile` que apunta al perfil. No se crean infoGroups ni enlaces a reglas de arma
- **Generación automática**: Se crea una selectionEntry por cada perfil que todavía no tenga una; las existentes no se modifican
- **Script de generación**: `generate_selection_entries.py`
- **Ubicación en XML**: Sección `<sharedSelectionEntries>` del catálogo

**Estructura de una selectionEntry:**
```xml
<selectionEntry type="upgrade" import="true" name="Bólter" hidden="false" id="unique-id">
  <infoLinks>
    <infoLink name="Bólter" id="unique-id" hidden="false" type="profile" targetId="weapon-profile-id"/>
  </infoLinks>
</selectionEntry>
```

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
4. Buscar perfiles existentes con XPath usando namespace completo:
   - Pattern: `.//{http://www.battlescribe.net/schema/catalogueSchema}profile[@typeName="TipoDeseado"]`
5. Indexar perfiles existentes por atributo `name` (soporta nombres duplicados)
6. Para cada entrada del CSV:
   - Si existe un perfil con el mismo nombre en el CAT: actualizar sus características
   - Si no existe: crear perfil nuevo con UUID
   - Los perfiles que existen solo en el CAT (añadidos manualmente) se preservan intactos
  - Si falta la sección `<sharedProfiles>` en el CAT: se crea automáticamente antes de insertar perfiles
7. Reindentar XML (`ET.indent`) para conservar formato multilínea legible
8. Guardar XML y normalizar declaración a:
  - `<?xml version="1.0" encoding="UTF-8" standalone="yes"?>`
```

### Comportamiento de Matching por Nombre

Los scripts identifican los perfiles existentes por su atributo `name` en el XML, no por posición. Los nombres deben ser únicos dentro de cada tipo de perfil. El comportamiento es:

- **Actualización**: Si el nombre del CSV coincide con un perfil del CAT, se actualizan las características manteniendo el `id` original.
- **Creación**: Si el nombre del CSV no existe en el CAT, se crea un perfil nuevo con UUID.
- **Preservación**: Si un perfil existe en el CAT pero no en el CSV (por ejemplo, añadido manualmente desde la aplicación de edición), se mantiene intacto sin modificaciones.

### Detección de Nombres Duplicados en CSV

Si el CSV contiene nombres duplicados, los scripts emiten un aviso indicando qué nombres están repetidos y en qué líneas del fichero. Solo se procesa la primera aparición de cada nombre; las entradas duplicadas se ignoran. Esto evita generar perfiles duplicados en el CAT.

Ejemplo de aviso:
```
⚠️  AVISO: Se encontraron nombres duplicados en PerfilesArmas.csv:
  - "Cañón de plasma" (líneas 13 y 14)
  Solo se procesará la primera aparición de cada nombre.
  Revisa el CSV y corrige los nombres duplicados.
```

### Características Importantes Encontradas

**Problema de Namespace**: ElementTree requiere usar la ruta completa con `.//{namespace}` en lugar de prefijos diccionario.

**Declaración XML**: Se debe reemplazar la declaración generada por ET con la correcta:
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
```

**Generación Autónoma de Perfiles**: Si el CSV tiene entradas que no existen en el CAT, los scripts crean automáticamente los perfiles faltantes con UUID y características completas.

## 6. IDs de Tipo y Características (TypeIds)

### TypeId de perfil por tipo
- Unidad: `2d6001b0-980e-46d2-bcc2-a9fc60109afd`
- Vehículo: `725a358c-765b-498c-8de5-399fc0c0725f`
- Arma: `d5f97c0b-9fc9-478d-aa34-a7c414d3ea48`
- Bípode: `3dadd2ff-33f1-41dd-85c7-bee5a7dfa413`

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
**Solución**: Usar rutas completas con namespace: `.//{namespace}elemento[@atributo="valor"]`

### Problema: Caracteres doblemente codificados (Astrá→AstrÃ³)
**Causa**: Uso de `minidom.toprettyxml()` que causa doble codificación UTF-8.
**Solución**: Usar directamente `tree.write()` de ElementTree con reemplazo de declaración XML.

### Problema: perfiles nuevos aparecen en una sola línea
**Causa**: Guardar con `tree.write()` sin reindentado explícito.
**Solución**: Aplicar `ET.indent(tree, space="  ")` antes de guardar.

### Problema: Declaración XML incorrecta
**Causa**: ElementTree genera `<?xml version='1.0' encoding='UTF-8'?>` sin comillas dobles ni `standalone="yes"`.
**Solución**: Leer el archivo guardado y reemplazar la declaración manualmente.

### Problema: Namespace no encontrado con findall
**Causa**: XPath requiere namespace completo cuando está declarado en el documento
**Solución**: Usar `.//{namespace_uri}elemento` en lugar de `.//elemento`

### Cantidades Esperadas
- Unidades: 41 perfiles
- Vehículos: 20 perfiles
- Armas: 49 perfiles (CSV actual)
- Bípodes: 2 perfiles (Sentinel acorazado, Sentinel explorador)

### Orden de Actualización
Los perfiles se identifican por su atributo `name`:
1. Si existe un perfil con el mismo nombre en el CAT, se actualizan sus características.
2. Si no existe, se crea automáticamente al final de `sharedProfiles`.
3. Los perfiles existentes solo en el CAT (no en el CSV) se preservan intactos.

## 9. Flujo de Trabajo Completo

```
1. Obtener imagen con tabla de perfiles
2. Identificar tipo de perfil (Unidad/Vehículo/Arma/Bípode)
3. Extraer y transcribir datos al CSV correspondiente
4. Revisar y corregir errores de transcripción
5. Ejecutar el orquestador:
   - python run_all.py                              (todo, Guardia Imperial)
   - python run_all.py --cat "Marines Espaciales.cat" (otro ejército)
   - python run_all.py --only armas,selections       (solo ciertos pasos)
6. Verificar output en NewRecruit
7. Si hay errores, ajustar CSV y reintentar
```

**Nota**: El formateo XML ya está integrado en los scripts principales (`ET.indent` + normalización de cabecera), por lo que no se requieren scripts auxiliares de formateo.

## 10. Ficheros del Proyecto

### Estructura de carpetas CSV

Todos los archivos CSV se organizan bajo la carpeta `csv/`:

```
csv/
  Generico/
    PerfilesArmas.csv        → plantilla genérica de armas
    PerfilesBipodes.csv      → plantilla genérica de bípodes
    PerfilesUnidades.csv     → plantilla genérica de unidades
    PerfilesVehiculos.csv    → plantilla genérica de vehículos
  Orkos/
    Orkos_Armas.csv
    Orkos_Bipodes.csv
    Orkos_Unidades.csv
    Orkos_Vehiculos.csv
  <Ejército>/
    <Ejército>_Armas.csv
    <Ejército>_Bipodes.csv
    <Ejército>_Unidades.csv
    <Ejército>_Vehiculos.csv
```

Los CSV de `Generico/` sirven como plantilla de referencia. Para cada ejército se crea una subcarpeta propia con sus CSV específicos. Los archivos CSV ya **no residen en la raíz** del proyecto.

### CSV de Perfil (Guardia Imperial, referencia)
- `csv/Generico/PerfilesUnidades.csv` - 41 unidades
- `csv/Generico/PerfilesVehiculos.csv` - Vehículos
- `csv/Generico/PerfilesArmas.csv` - 49 armas (CSV actual)
- `csv/Generico/PerfilesBipodes.csv` - 2 bípodes

### Script Orquestador
- `run_all.py` - Ejecuta todos los scripts en orden con parámetros configurables (ver sección 11)

### Scripts de Actualización de Perfiles
- `update_unit_profiles.py` - Actualiza unidades
- `update_vehicle_profiles.py` - Actualiza vehículos
- `update_weapon_profiles.py` - Actualiza armas
- `update_bipode_profiles.py` - Actualiza bípodes (alternador)
- `generate_init.py` - Genera archivo InitGuardia.cat con estructura base

### Scripts de Generación de Información Compartida
- `generate_selection_entries.py` - Genera sharedSelectionEntries que apuntan directamente a los perfiles
- `sort_selection_options.py` - Ordena las opciones de equipo por coste y nombre (ver sección 14.3)

### Archivos XML
- `Guardia Imperial.cat` - Catálogo actualizado
- `InitGuardia.cat` - Backup del estado base
- Otros .cat - Archivos de otros ejércitos

## 11. Comando de Ejecución

### Ejecución con el orquestador (recomendado):

El script `run_all.py` ejecuta todos los pasos en el orden correcto con un solo comando:

```bash
# Ejecutar todo con valores por defecto (Guardia Imperial, CSVs en raíz)
python run_all.py

# Procesar Orkos con sus CSVs específicos
python run_all.py --cat Orkos.cat \
  --csv-unidades csv/Orkos/Orkos_Unidades.csv \
  --csv-vehiculos csv/Orkos/Orkos_Vehiculos.csv \
  --csv-armas csv/Orkos/Orkos_Armas.csv \
  --csv-bipodes csv/Orkos/Orkos_Bipodes.csv

# Procesar otro ejército con CSVs genéricos
python run_all.py --cat "Marines Espaciales.cat" \
  --csv-unidades csv/Generico/PerfilesUnidades.csv \
  --csv-armas csv/Generico/PerfilesArmas.csv

# Especificar CSVs propios de ejército
python run_all.py --cat "Eldars.cat" \
  --csv-armas "csv/Eldars/Eldars_Armas.csv" \
  --csv-unidades "csv/Eldars/Eldars_Unidades.csv"

# Ver qué se ejecutaría sin hacer nada
python run_all.py --dry-run

# Mostrar salida completa de cada script
python run_all.py --verbose
```

### Orden de ejecución interno:

El orquestador ejecuta los 5 pasos en este orden:

| # | Paso ID      | Script                              | CSV utilizado          |
|---|--------------|-------------------------------------|------------------------|
| 1 | unidades     | `update_unit_profiles.py`           | PerfilesUnidades.csv   |
| 2 | vehiculos    | `update_vehicle_profiles.py`        | PerfilesVehiculos.csv  |
| 3 | armas        | `update_weapon_profiles.py`         | PerfilesArmas.csv      |
| 4 | bipodes      | `update_bipode_profiles.py`         | PerfilesBipodes.csv    |
| 5 | selections   | `generate_selection_entries.py`     | (solo CAT)             |

Los pasos 1-4 actualizan perfiles desde CSV. El paso 5 crea las selectionEntries que falten, enlazadas directamente a los perfiles del CAT. Si un paso falla, la ejecución se aborta para evitar corromper el catálogo.

### Control de pasos:

```bash
# Ejecutar solo ciertos pasos
python run_all.py --only armas,selections

# Saltar pasos concretos
python run_all.py --skip bipodes

# No se pueden combinar --only y --skip
```

**IDs de pasos válidos**: `unidades`, `vehiculos`, `armas`, `bipodes`, `selections`

### Parámetros completos:

| Parámetro          | Descripción                                      | Por defecto              |
|--------------------|--------------------------------------------------|--------------------------|
| `--cat`            | Archivo CAT a modificar                          | `Guardia Imperial.cat`   |
| `--csv-unidades`   | CSV de perfiles de unidades                      | `PerfilesUnidades.csv`   |
| `--csv-vehiculos`  | CSV de perfiles de vehículos                     | `PerfilesVehiculos.csv`  |
| `--csv-armas`      | CSV de perfiles de armas                         | `PerfilesArmas.csv`      |
| `--csv-bipodes`    | CSV de perfiles de bípodes                       | `PerfilesBipodes.csv`    |
> **Nota sobre rutas CSV**: Los valores por defecto apuntan a la raíz del proyecto (legado). Para usar la nueva estructura de carpetas, pasa siempre la ruta completa: `csv/Generico/PerfilesUnidades.csv` o `csv/<Ejército>/<Ejército>_Unidades.csv`.| `--skip`           | Pasos a saltar (separados por comas)             | (ninguno)                |
| `--only`           | Ejecutar solo estos pasos (separados por comas)  | (todos)                  |
| `--dry-run`        | Mostrar comandos sin ejecutar                    | `false`                  |
| `--verbose`        | Mostrar salida completa de cada script           | `false`                  |

### Características del orquestador:
- Valida que los archivos CAT y CSV existan antes de ejecutar
- Valida que los IDs de pasos sean correctos
- Aborta la ejecución si un paso falla (fail-fast)
- Muestra resumen con tiempos de ejecución por paso
- Timeout de 120 segundos por script
- Código de salida 1 si hay fallos (útil para CI/CD)

## 11.1 Ejecución Individual de Scripts

Los scripts también pueden ejecutarse individualmente si se necesita:

```bash
# Usar archivos por defecto
python update_unit_profiles.py

# Especificar archivo CAT personalizado
python update_unit_profiles.py "Marines Espaciales.cat"

# Especificar ambos archivos
python update_unit_profiles.py "Eldars.cat" "unidades_eldars.csv"

# Scripts de generación de información (mismo patrón)
python generate_selection_entries.py "Marines Espaciales.cat"
```

**Parámetros posicionales:**
- `archivo_cat`: Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')
- `archivo_csv`: Archivo CSV con los datos (por defecto: específico para cada tipo)

### Flujo Multi-Catálogo (manual):
```bash
# Procesar Marines Espaciales completo con CSVs propios
python update_unit_profiles.py "Marines Espaciales.cat" "csv/Marines Espaciales/Marines Espaciales_Unidades.csv"
python update_vehicle_profiles.py "Marines Espaciales.cat" "csv/Marines Espaciales/Marines Espaciales_Vehiculos.csv"
python update_weapon_profiles.py "Marines Espaciales.cat" "csv/Marines Espaciales/Marines Espaciales_Armas.csv"
python update_bipode_profiles.py "Marines Espaciales.cat" "csv/Marines Espaciales/Marines Espaciales_Bipodes.csv"
python generate_selection_entries.py "Marines Espaciales.cat"
```

## 12. SharedSelectionEntries: Sistema Completo

### ¿Qué son los SharedSelectionEntries?
Los sharedSelectionEntries son puntos de selección que NewRecruit utiliza para permitir que los usuarios seleccionen perfiles desde la interfaz. Cada selectionEntry:
- **Referencia directa al perfil**: Mediante un infoLink de tipo `profile`
- **Sin infoGroups ni reglas**: No se enlazan reglas de arma ni se crean `sharedInfoGroups`
- **Tipo de selección**: Define si es un arma (upgrade), unidad, vehículo, etc.
- **ID único**: Para evitar conflictos de referencia

### Flujo de información:
```
Perfil (Arma/Unidad/Vehículo/Bípode)
       ↓
   selectionEntry
   (infoLink de tipo profile)
       ↓
   Usuario ve la opción en el catálogo
```

### Script de generación:

**generate_selection_entries.py**
- Crea una selectionEntry por cada perfil de Arma, Unidad, Vehículo o Bípode que aún no esté enlazado por ninguna
- Determina el tipo automáticamente (upgrade para armas, unit para el resto)
- **No borra ni modifica** las sharedSelectionEntries existentes, por lo que es seguro ejecutarlo sobre catálogos con entradas hechas a mano
- **Auto-creación de sección**: Si el XML no contiene `<sharedSelectionEntries>`, el script la crea automáticamente
- Usa: `python generate_selection_entries.py [archivo_cat]`

## 14. Migración de datos desde PDF y edición manual de catálogos

Los catálogos de ejércitos completos (hoy, Caballeros Grises) no se generan con los scripts `update_*.py`: se construyen a mano leyendo el codex en PDF y editando el `.cat`. Los scripts de las secciones 5 a 12 solo cubren perfiles y entradas básicas.

### 14.1 Lectura del PDF
- Los codex son **fotos escaneadas sin capa de texto**: `pdftotext` devuelve vacío y no hay OCR instalado. La transcripción es visual y puede tener errores de lectura.
- Para verlas se renderizan las páginas a PNG con PyMuPDF (`pip install --target <carpeta_temporal> pymupdf`, `page.get_pixmap(dpi=100).save(...)`). Se instala en una carpeta temporal, no en el repo.
- Se trabaja por secciones del libro (CG, Élite, Línea, Transportes asignados, Ataque Rápido, Apoyo Pesado), un commit por sección. La página 2 recoge las reglas especiales comunes; las páginas de entradas se leen unidad por unidad.
- Las dudas de lectura (costes borrosos, ambigüedades) se anotan en `REVISION_CABALLEROS_GRISES.md`, no se resuelven en silencio.

### 14.2 Estructura de las entradas
- **Raíz**: cada unidad se enlaza con un `entryLink` que lleva la categoría principal (CG, Élite, Línea…).
- **Tipos**: `model` para personajes y entradas básicas, `unit` para escuadras con varias miniaturas, `upgrade` para armas, equipo y poderes.
- **Opciones de equipo**: `selectionEntryGroup` con `defaultSelectionEntryId` en la opción gratuita y restricciones `min`/`max`; el coste del suplemento va en el `<costs>` del `entryLink` (`typeId="puntos"`). Los grupos compartidos (p. ej. «Transporte Asignado») se enlazan desde varias unidades.
- **Selección por defecto**: un grupo solo admite un `defaultSelectionEntryId`. Cuando varias opciones deben venir marcadas al añadir la unidad (p. ej. espada sierra y pistola láser del Acólito guerrero, dentro de un grupo con mínimo y máximo 2), se marca `defaultAmount="1"` en cada `entryLink`.
- **Límites de opciones de equipo**: no se usan categorías (`categoryEntry`) para limitar opciones de equipo; las categorías se reservan para clasificar unidades (p. ej. «Inquisidor»). Un máximo repartido entre varias miniaturas se pone como `constraint` de tipo `max` en el grupo, con `scope` el id de la unidad ancestro (p. ej. «hasta 3 armas especiales por séquito»: el grupo de armas especiales lleva `max 1` con `scope="parent"` y `max 3` con `scope` el id del Séquito).
- **Armas especiales de escuadra**: van dentro de las opciones de arma del modelo que las lleva, no en un grupo suelto de la unidad. Si sustituyen el arma a distancia (Exterminadores, Paladines) el bólter de asalto pasa a ser una opción más de un grupo «Arma a distancia» junto a las armas especiales. Si sustituyen bólter y espada (Purificadores, Choque, Interceptora, Expiación) se añaden al grupo «Arma de combate» y el bólter de asalto fijo se oculta con modificadores condicionados a que se elija alguna de ellas. El estandarte, el bastón de protección siguen el mismo criterio, con máximo 1 por escuadra (`scope` el id de la unidad). El Apotecario no es un arma: es una alternativa al Paladín normal dentro del grupo «Tipo de Paladín» (mínimo y máximo 1), y las opciones de arma a distancia cuelgan de la opción «Paladín (arma a distancia)», de modo que al elegir Apotecario desaparecen sin dejar selecciones con error.
- **Máximo que escala con el tamaño de la unidad** («2 por cada 5 miniaturas»): cada arma lleva un `constraint` `max` con valor 0, `scope` el id de la unidad e `includeChildSelections="true"`, y un `modifier` `increment` de valor 2 sobre ese constraint con un `repeat` (`childId="model"`, `value="5"`, `repeats="1"`, `roundUp="false"`, `scope` el id de la unidad). `childId="model"` cuenta todas las miniaturas de la unidad.
- **Opciones que arrastran otra selección** (p. ej. el bólter de asalto incorporado del Dreadnought, que solo existe con el Puño de perdición): un `entryLink` no puede contener grupos, así que la opción se crea como `selectionEntry` local con un `entryLink` al arma compartida y el grupo de la selección dependiente dentro. Al desmarcar la opción se oculta todo a la vez, sin dejar selecciones huérfanas con error (mejor que ocultar el grupo con un `modifier`).
- **Una opción por lista**: Justicar Thawn es una alternativa al Justicar de la escuadra de Exterminadores (grupo «Justicar de la escuadra») con `max 1` y `scope="roster"`; ya no existe como entrada suelta.
- **Reglas, perfiles y poderes**: se declaran una vez (`sharedRules`, `sharedProfiles`) y las entradas los referencian con `infoLink`.
- **Psíquicos**: cada psíquico enlaza la regla `Psíquico` y la regla `Nivel de maestría N` (1, 2 o 3) con el nivel que indica el PDF (el texto de «Niveles de maestría psíquica» está en la pág. 2 del codex). Las mejoras de nivel («puede potenciarse a Nivel de maestría 2/3») son una opción más que enlaza la regla de su nivel. Los vehículos usan «Piloto psíquico» (equivale a Nivel 1).
- **Enemigo predilecto**: la regla del `.gst` no lleva palabra clave. En Caballeros Grises se usa la regla propia `Enemigo predilecto (Demonios)` del catálogo; para otro ejército o palabra clave se crea una regla específica en su `.cat` (en lugar de modificar el título con un `modifier` en cada enlace o cambiar la regla del `.gst`).
- **Transportes**: los vehículos que transportan miniaturas usan el perfil «Transporte» (vida, blindajes, tipo, capacidad, puntos de acceso y de disparo) en lugar de «Vehículo». Cada variante de Land Raider tiene su propio perfil. La Munición psíquica de una unidad se propaga a las armas de su transporte asignado; cada transporte resta 1 de F a esas armas si la unidad la lleva, para que solo la reciba quien la elige.
- Los límites que el modelo no puede expresar (p. ej. «uno por cada cinco miniaturas») se aproximan con un máximo fijo y se listan en `REVISION_CABALLEROS_GRISES.md`.

### 14.3 Orden de las opciones de equipo
Dentro de cada grupo de opciones, las entradas se ordenan por **coste en puntos ascendente y, a igualdad de coste, alfabéticamente** (sin distinguir acentos ni mayúsculas). La opción gratuita (la de por defecto) queda siempre primera. Cualquier opción nueva debe respetar este orden.

```bash
# Ver qué grupos incumplen el orden (dry-run)
python sort_selection_options.py "Caballeros Grises.cat"

# Reordenarlos
python sort_selection_options.py "Caballeros Grises.cat" write
```
**Importante:** BattleScribe/NewRecruit ordena las opciones por el atributo `sortIndex`, no por la posición en el XML. El script numera cada opción de cada grupo con `sortIndex="1"`, `"2"`… además de reordenarlas en el archivo. Al añadir una opción a mano hay que renumerar el grupo (volver a ejecutar el script). Si un `entryLink` no tiene coste propio, se usa el de la entrada a la que apunta. El script no cambia IDs ni restricciones.

### 14.4 Edición del `.cat` sin romper el archivo
- Los `.cat` usan UTF-8 y saltos de línea **CRLF**: al editar con scripts, leer y escribir en binario (`rb`/`wb`) y decodificar como UTF-8 para no corromper acentos ni convertir los saltos de línea.
- Los IDs deben ser únicos (UUID v4 para entradas nuevas) y todos los `targetId` deben resolverse.
- Validación mínima tras cada cambio: parsear el XML, comprobar que no hay IDs duplicados ni `targetId` sin resolver, y ejecutar `sort_selection_options.py` en dry-run (debe informar 0 grupos reordenados).
- Aún no se ha abierto el catálogo en NewRecruit: queda pendiente comprobar categorías y restricciones en la aplicación.

## 13. Troubleshooting

### infoGroups
- Ningún catálogo ni el `.gst` usa `sharedInfoGroups` ni infoGroups inline: las entradas enlazan directamente a los perfiles (y, solo para reglas especiales de unidades, personajes y habilidades, a las reglas). Los scripts no los generan.

### Problemas con generación de perfiles en update_*.py
- **No había perfiles previos en el CAT**: Los scripts crean perfiles nuevos automáticamente con UUID.
- **Sección `sharedProfiles` ausente en el XML**: Los scripts `update_unit_profiles.py`, `update_vehicle_profiles.py`, `update_weapon_profiles.py` y `update_bipode_profiles.py` la crean automáticamente antes de procesar el CSV.
- **Falta typeId en el CAT para inferencia**: Se usa fallback de typeId de perfil y características para cada tipo (ver sección 6).
- **Perfil añadido manualmente no aparece tras ejecutar scripts**: Esto es correcto, los perfiles solo en CAT se preservan intactos. Verificar que el nombre no coincida exactamente con una entrada del CSV (si coincide, se actualizará con los datos del CSV).
- **Nombres duplicados en CSV**: Los scripts avisan de nombres repetidos indicando las líneas afectadas. Solo se procesa la primera aparición; las demás se ignoran. Corregir el CSV renombrando las entradas duplicadas para que sean únicas.
- **Formato en una línea**: Se corrige con reindentado previo al guardado (`ET.indent`).

### Problemas con selectionEntries
- **Opciones no aparecen en NewRecruit**: Verificar que los infoLinks de tipo `profile` apuntan a perfiles existentes en el CAT
- **Entrada duplicada para un perfil**: El script solo crea entradas para perfiles que ninguna selectionEntry enlaza; revisar si la existente enlaza otro id de perfil
- **Sección `sharedSelectionEntries` ausente en el XML**: El script `generate_selection_entries.py` la crea automáticamente al detectar que falta. No se requiere intervención manual.

### Verificación:
```bash
# Verificar que XML es válido
python -c "import xml.etree.ElementTree as ET; ET.parse('Guardia Imperial.cat'); print('✅ XML válido')"

# Contar elementos
python -c "with open('Guardia Imperial.cat') as f: 
    content = f.read()
    print(f'selectionEntries: {content.count(\"<selectionEntry type=\")}')"
```

### Verificación Post-Generación
Después de ejecutar `generate_selection_entries.py`:
1. Cada perfil de arma, unidad, vehículo y bípode debe estar enlazado por una selectionEntry
2. Cada selectionEntry generada debe tener un único infoLink de tipo `profile`
3. El XML debe ser válido y parseable

### Recuperación de Errores
Si hay errores en la generación:
1. Verificar que todos los perfiles existan en el XML
2. Ejecutar nuevamente el script (solo crea las entradas que falten)
3. Validar el XML resultante con un parser

---

**Última actualización**: Noviembre 2026
**Versión**: 3.8 - nueva sección 14 (migración desde PDF, edición manual de catálogos y orden de opciones); 3.7 - se eliminan los `sharedInfoGroups` y sus generadores; `generate_selection_entries.py` enlaza directamente a los perfiles y no borra las entradas existentes
