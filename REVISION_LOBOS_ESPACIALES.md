# Revisión pendiente: catálogo de Lobos Espaciales

Estado del catálogo `Lobos Espaciales.cat` (revisión 1, **esqueleto**). Fuente: `D:\HAHAMMERS\5ª\Codex Lobos Espaciales.pdf` (foto escaneada, 100 págs.; PDF = libro + 2). Lista de ejército: págs. 81-96 del libro (PDF 83-98). Rama: `feat/lobos-espaciales`.

## Progreso

| Categoría | Libro | Estado | Unidades |
|---|---|---|---|
| CG | 82-85 | **Hecha** (catálogo revisión 2) | Logan Grimnar, Njal Stormcaller, Ragnar Blackmane, Ulrik el Matador, Canis Nacido Lobo, Bjorn Garra Implacable, Señor Lobo, Sacerdote rúnico, Sacerdote Lobo, Jefe de batalla de la Guardia del Lobo |
| Élite | 86-88 | **Hecha** (catálogo revisión 4) | Manada de la Guardia del Lobo (con Arjac Puñoroca), Dreadnought, Dreadnought Venerable, Sacerdote de Hierro, Manada de Exploradores Lobo, Lobo Solitario |
| Línea | 89 | **Hecha** (catálogo revisión 5) | Manada de Cazadores Grises, Manada de Garras Sangrientas (con Lukas el Tramposo) |
| Ataque Rápido | 90-91 | **Hecha** (catálogo revisión 6) | Caballería Lobo de Trueno, Escuadrón de Motoristas Garra Veloz, Manada de Ataque Garra del Cielo, Escuadrón de Land Speeders, Manada de Lobos de Fenris |
| Apoyo Pesado | 92-93 | **Hecha** (catálogo revisión 7) | Manada de Colmillos Largos, Predator, Whirlwind, Vindicator, Land Raider, Land Raider Cruzado, Land Raider Redentor |
| Transportes asignados | 94 | **Hecha** (catálogo revisión 8) | Rhino, Razorback, Cápsula de desembarco |

Organización de ejército (pág. 81): obligatorio 1 CG* y 2 Línea; opcional 1 CG*, 4 Línea, 3 Élite, 3 Ataque Rápido, 3 Apoyo Pesado. *Cada opción de CG permite hasta **dos** unidades de CG («líderes de la manada»).

## Diagnóstico del catálogo actual
- Solo `sharedProfiles` (39) y `sharedSelectionEntries` (65, una por perfil o arma). **0 `entryLinks` raíz, 0 categorías, 0 reglas, 0 costes, 0 grupos de opciones.**
- Las 10 unidades de CG tienen entrada y perfil de atributos, y **los perfiles coinciden con el PDF** (HA HP F R H I A L S). Falta todo lo demás.
- Hay 26 armas sueltas (bólter, cañones, lanzamisiles…) con `infoLink` a perfiles del `.gst`; sirven de base pero faltan muchas armas/equipo de las págs. 57-64.

## CG: lo que dice el PDF y qué falta

| Unidad (pág. libro) | Pts | Estado | Qué hay que hacer |
|---|---|---|---|
| Logan Grimnar, el Gran Lobo (56) | 275 | Esqueleto | Único. Equipo: armadura de exterminador, Hacha de Morkai, collar de dientes de lobo, talismán de cola de lobo, bólter de asalto, cinto de Russ, Saga de Majestad. 8 reglas (Y no conocerán el miedo, Sentidos agudos, Contraataque, Guerrero eterno, Personaje independiente, Testarudo, Jefe legendario, Gran Rey). **«El Gran Lobo»**: la Guardia del Lobo pasa a Línea si hay Logan. |
| Njal Stormcaller (53) | 245 | Esqueleto | Único. Opción: armadura rúnica de exterminador +25 (sustituye armadura rúnica y granadas). Poderes psíquicos: todos (pág. 37). Reglas: Maestro psíquico, Señor de las Tormentas, etc. |
| Ragnar Blackmane (55) | 240 | Esqueleto | Único. Hasta 2 Lobos de Fenris (Svangir/Ulfgir) +10 cada uno. **Falta el perfil Svangir/Ulfgir** (4 0 4 4 1 4 2 6 5+; el «Lobo de Fenris» actual es 4 0 4 4 1 4 2 5 6+). Reglas: Bravuconería demente, Aullido de guerra, Reflejos increíbles… |
| Ulrik el Matador (50) | 180 | Esqueleto | Único. Equipo y reglas (Coraje, Juramento de matador, Mentor…). Sin opciones. |
| Canis Nacido Lobo (54) | 185 | Esqueleto | Único, Caballería. Hasta 2 Lobos de Fenris +10 c/u. **«El Rey Lobo»**: los Lobos de Fenris pasan a Línea si hay Canis. |
| Bjorn Garra Implacable (49) | 270 | Esqueleto | Único, Dreadnought Venerable (Vehículo, Bípode). Cañón de asalto → cañón de plasma (gratis) o cañón láser acoplado (+20). |
| Señor Lobo (39) | 100 | Esqueleto | Árbol de opciones largo: armas (bólter gratis … martillo de trueno/escudo de tormenta +30), armadura rúnica +20, armadura de exterminador +40, sustituciones dentro de la armadura de exterminador, retrorreactor / moto / montura de lobo de trueno, equipo (bombas de fusión, collar, talismán, hasta 2 lobos de Fenris, marca del Wulfen, cinto de Russ) y sagas. |
| Sacerdote rúnico (36) | 100 | Esqueleto | Psíquico: elige 2 de 7 poderes (Trueno, Rayo viviente, Invocatormentas, Furia de la tempestad, Furia de los Espíritus Lobo, Huracán asesino, Fauces del mundo lobo). «Señor de las Runas» +50. Armaduras, armas, equipo («el que elige a los caídos» +10) y sagas. |
| Sacerdote Lobo (35) | 100 | Esqueleto | Armas, armaduras, retrorreactor/moto, equipo y sagas (la Saga del Cazador solo para una miniatura con servoarmadura sin retrorreactor ni moto). |
| Jefe de batalla de la Guardia del Lobo (30) | 70 | Esqueleto | Mismo árbol que el Señor Lobo, con Saga del Cazador (misma restricción). |

## Pendiente de leer para implementar CG
- **Págs. 57-64** (armas, armadura, mejoras y equipo, sagas): perfiles y descripciones de lo que se enlaza (combi-armas, garra de lobo, hacha/espada gélida, bombas de fusión, retrorreactor, etc.).
- **Págs. 35-39, 49-56**: reglas especiales de cada personaje (ninguna existe aún en el `.cat`: `sharedRules` vacío) y poderes psíquicos (pág. 37).

## Decisiones a confirmar
- **Sagas y combinaciones repetidas** (pág. 81): dos personajes no pueden tener la misma saga ni la misma combinación de poderes o equipo. El motor no lo expresa: se anotaría como límite no modelado.
- **Dos CG por opción** («líderes de la manada»): comprobar cómo lo resuelven los demás catálogos con el `.gst` antes de asumir nada.
- **Opciones de lobos de Fenris (+10)**: modeladas como miniaturas adicionales con coste; los de Canis y Ragnar son distintos (Ragnar tiene sus dos lobos con perfil propio).

## CG: implementado (revisión 2 del catálogo)
Las 10 unidades tienen enlace raíz con categoría CG, coste base, equipo fijo, reglas, opciones con los costes del libro y orden por `sortIndex`. Los seis «Único» llevan `max 1` con `scope="roster"` (Logan, Njal, Ragnar, Ulrik, Canis, Bjorn). Se reutilizan perfiles y reglas del `.gst` (armas, combiarma, retrorreactor, moto, granadas, Sentidos agudos, Testarudos, Guerrero eterno, Acoplada…) y se crean los propios de Lobos (perfiles de equipo y sagas, 7 poderes psíquicos, 17 reglas).

### Decisiones de modelado
- **Armas de Señor Lobo y Jefe de batalla**: grupo «Armas» con exactamente 2 (pistola bólter y arma de combate por defecto, cada arma máx. 1), como el Capitán de Ángeles Sangrientos. Dentro de cada armadura (servoarmadura, rúnica) hay su propio grupo. Con armadura de exterminador hay dos grupos («Arma a distancia» y «Arma de combate») con los costes propios del libro. Efecto: no se puede elegir el mismo arma dos veces (p. ej. dos bólteres).
- **Armadura**: grupo «Armadura» con opciones locales (servoarmadura, armadura rúnica +20, exterminador +40 / +20 los sacerdotes); granadas, armas y movilidad cuelgan de cada opción. Njal elige entre armadura rúnica y armadura rúnica de exterminador (+25).
- **Movilidad** (retrorreactor +25, moto +35, montura de lobo de trueno +45 solo en Señor Lobo y Jefe): dentro de servoarmadura y rúnica; no existe con exterminador.
- **Saga del Cazador** (Jefe de batalla y Sacerdote Lobo): se oculta con modificador si hay armadura rúnica o de exterminador, retrorreactor, moto o montura (nota * de la lista y «solo infantería» de la pág. 64).
- **Lobos de Fenris** (Señor Lobo, Jefe, Canis: hasta 2 a +10): entrada «Lobo de Fenris (acompañante)» (`model`). Ragnar: «Svangir» y «Ulfgir», con el perfil nuevo «Svangir/Ulfgir» (4 0 4 4 1 4 2 6 5+).
- **Poderes**: Njal los lleva todos (fijos); el Sacerdote rúnico elige exactamente 2 de 7. «Señor de las Runas» +50 es una habilidad más (el libro dice que usa hasta 2 poderes por turno, no está automatizado).
- **Tipo de unidad**: Logan, Njal, Ragnar y Ulrik pasan de «Personaje infantería» a «Infantería» y Canis a «Caballería», como dice la lista. Lobo de Fenris y Lobo cibernético pasan a «Bestias» (pág. 62).
- **Renombres**: Bjorn Garra Imp. → Bjorn Garra Implacable; Jefe de batalla → Jefe de batalla de la Guardia del Lobo; Logan y Njal y Ragnar con su título.
- **Arma rúnica / Báculo rúnico / Colmillo de Morkai / Amuleto de lobo**: perfiles de equipo con su texto; no hay automatismos.
- **Granadas**: se enlaza el perfil del `.gst` «Granadas perforantes y de fragmentación».

### Límites no modelados
- Sagas y combinaciones de poderes/equipo repetidas entre dos personajes (pág. 81) y máximo de dos CG por opción de la tabla (regla «Los líderes de la manada», solo como texto en una regla).
- Los efectos numéricos de la Montura de lobo de trueno (+1 F, R y A, caballería), de la Marca de los Wulfen (1D6+1 Ataques) y de las sagas son texto; no cambian el perfil.
- **Cambios de categoría**: «El Gran Lobo» (Guardia del Lobo a Línea con Logan) y «El Rey Lobo» (Lobos de Fenris a Línea con Canis) están como reglas de texto. El modificador de categoría va en las entradas de esas unidades (Élite / otras), que se hacen en su sección.
- Opción «Jefe de batalla»: la regla «personaje independiente solo para el Jefe» (pág. 30) está como texto.

### Dudas de lectura (pendientes de confirmar con el PDF)
- Costes de la lista del Señor Lobo y Jefe de batalla leídos de foto: «puño de combate, espada gélida o hacha gélida +25» y «martillo de trueno o escudo de tormenta +30».
- El Sacerdote rúnico con armadura de exterminador cuesta +20 y el Sacerdote Lobo también (+20).
- No se ha abierto el catálogo en NewRecruit: faltan por comprobar categoría, límites y la ocultación de la Saga del Cazador.

## CG: etiquetas de saga (revisión 3 del catálogo)
- **Hecho (revisión 3)**: 6 etiquetas (`categoryEntries`): Matabestias, Majestad, Lobos, Nacido Guerrero, Oso y Cazador. Las llevan solo las 16 opciones de saga de los personajes genéricos (Señor Lobo, Jefe de batalla, Sacerdote rúnico, Sacerdote Lobo). Si otro personaje genérico ya tiene una saga, esa opción se oculta (modificador por etiqueta). Las sagas fijas de Logan, Njal, Ragnar y Canis no llevan etiqueta ni cuentan, como indica la pág. 64 (los personajes especiales son la excepción: se puede llevar un genérico con Majestad y además a Logan). Se probó limitar también a los especiales y se revirtió a petición del usuario al comprobar que el libro lo permite. Mismo mecanismo que la etiqueta «Inquisidor» de Caballeros Grises.
- **No comprobado en NewRecruit**: que el conteo por etiqueta funcione con el `categoryLink` puesto en el `entryLink` y con selecciones anidadas dentro de la unidad.
- **Combinación de poderes y de equipo (no se puede)**: la regla prohíbe repetir *la combinación completa*. Las condiciones solo cuentan selecciones sueltas en la lista, no si dos personajes coinciden en un conjunto de opciones, así que no se puede expresar. Limitar cada poder o cada pieza de equipo a una por lista sería más estricto que el libro (impediría combinaciones legales como {Trueno, Rayo} y {Trueno, Fauces}), por lo que no se ha hecho. Sigue como límite no modelado (con la regla de texto «Los líderes de la manada»).

## Élite: implementado (revisión 4 del catálogo)
Las 6 entradas de la lista (la 7.ª del libro, Arjac, es una opción de la Guardia del Lobo) tienen enlace raíz con categoría Élite, costes, equipo, reglas y opciones. Los perfiles de atributos del esqueleto coincidían con el PDF. Nuevas: reglas (Jefes de manada, Campeón de Grimnar, Herrero de batalla, Tras las líneas enemigas, Una muerte gloriosa, Manada de uno, Matabestias), perfiles de equipo (Martillo de enemigos, Escudo yunque, Saga del Lobo de hierro) y entradas de arma (Lanzamisiles, ciclón, acoplados).

### Decisiones de modelado
- **Manada de la Guardia del Lobo**: unidad con un modelo «Guardián del Lobo» (3-10, 18 pts cada uno). Cada Guardián elige «Tipo» (Guardián o Arjac Puñoroca +170, máx. 1 por lista), y su armadura (servoarmadura / exterminador +15) con las armas del libro. Con exterminador: opción «Arma pesada» limitada a 1 por cada 5 miniaturas (lanzallamas pesado +5, cañón de asalto +30, o lanzamisiles ciclón +30 conservando el bólter de asalto). Retrorreactor +25 y moto +35 solo con servoarmadura. Bombas de fusión +5 por miniatura; Marca del Wulfen +15 máx. 1 por unidad.
- **Arjac** es entrada compartida (Único, máx. 1 por lista) enlazada desde la Guardia, con equipo fijo y su Saga del Oso sin etiqueta (personaje especial).
- **Dreadnoughts**: grupos «Arma a distancia» (cañón de asalto por defecto), «Brazo de combate» (arma de combate con arma incorporada bólter de asalto / lanzallamas pesado +10, o cañón automático acoplado / lanzamisiles +10) y «Equipo adicional». La Saga de Majestad del Venerable lleva etiqueta y exclusividad como las demás sagas genéricas.
- **Sacerdote de Hierro**: unidad con Sacerdote (50), 0-4 Lobos cibernéticos (15) y 0-3 Servidores (10). Servobrazo sustituible por arma pesada (bólter pesado +5, cañón de fusión +10, cañón de plasma +20) en hasta 2 Servidores por unidad. Nueva etiqueta «Saga del Lobo de hierro» (+15) con exclusividad.
- **Exploradores Lobo**: 5-10 miniaturas a 15. Armas de 2 por miniatura (bólter gratis, rifle de francotirador +3); arma especial 1 por escuadra (lanzallamas/bólter pesado +5, rifle de fusión/lanzamisiles +10, rifle de plasma +15) y hasta 2 con pistola de plasma o arma de energía (+15). «Toda la escuadra puede incluir bombas de fusión +5 por miniatura» es una opción de unidad con coste por miniatura.
- **Lobo Solitario**: 20 pts, un solo modelo, armas con los costes de su lista, hasta 2 lobos de Fenris +10 y Marca del Wulfen +15.
- **Arjac y «Personaje infantería»**: perfil a «Infantería», como en CG.

### Pendiente / límites no modelados
- **Transporte asignado** (Cápsula de desembarco, Rhino, Razorback; Land Raider para la Guardia del Lobo; Cápsula de desembarco para los Dreadnoughts): se enlazará cuando esté hecha la sección Transportes asignados.
- «Jefes de manada» (un Guardián se une a otra manada) está como texto. Los Guardianes con exterminador/retrorreactor/moto no pueden unirse a Exploradores Lobo: solo texto.
- Las entradas del esqueleto «Servidor», «Lobo cibernético» y «Líder de escuadra» quedan sin enlace raíz (los modelos de Élite son entradas propias): revisar al final si sobran.

### Dudas de lectura
- **Págs. 86 (Guardia del Lobo)**: el escaneo tiene doble exposición. Los costes por miniatura leídos son: bólter de asalto +3, combi +5, arma de energía o pistola de plasma +10, garra de lobo +15, puño/espada/hacha gélida +20, martillo/escudo/puño sierra +25; con exterminador +15 (combi +5, garra o puño +10, martillo/escudo/puño sierra +15; arma de energía → garra +5, espada/hacha/puño +10, martillo/escudo/puño sierra +15).
- Dreadnought: «arma de combate cuerpo a cuerpo (con bólter de asalto)» sustituida por cañón automático acoplado o lanzamisiles se interpretó como pérdida también del bólter de asalto incorporado.
- Cañón láser acoplado +30 y lanzallamas pesado acoplado/cañón de fusión gratis (lista de la pág. 87).
- No abierto en NewRecruit: conteo por miniaturas (modelo con 3-10 unidades y grupos internos), límites «1 por cada 5» y exclusividad de las nuevas etiquetas.

## Línea: implementado (revisión 5 del catálogo)
Los perfiles del esqueleto (Cazador Gris, Garra Sangrienta, Lukas) coincidían con el PDF. La lista solo trae dos manadas; Lukas el Tramposo es una conversión de un Garra Sangrienta, como Arjac en la Guardia del Lobo.

### Decisiones de modelado
- **Manada de Cazadores Grises**: 5-10 miniaturas a 15. Cada Cazador: grupo «Arma a distancia» (bólter por defecto; «Arma especial (una por escuadra)»: lanzallamas gratis, rifle de fusión +5, rifle de plasma +10; y «Segunda arma especial» sin coste si la escuadra tiene 10 miniaturas), pistola de plasma +15 (máx. 1 por escuadra), arma de combate especial (energía +15 o puño +25, máx. 1), Estandarte del Lobo +10 y Marca del Wulfen +15 (máx. 1 por escuadra cada uno).
- **Manada de Garras Sangrientas**: 5-15 miniaturas a 15. Mismas armas sustituyendo la pistola bólter, con la segunda arma especial sin coste a las 15 miniaturas. Cada Garra elige «Tipo» (Garra o Lukas el Tramposo +140, Único, máx. 1 por lista). Reglas nuevas: Carga asesina, Temerarios; Lukas: Rebelde, El último en reír y el equipo Pellejo de Doppelgangrel.
- **El Gran Lobo**: la Manada de la Guardia del Lobo (Élite) pasa a Línea si hay Logan en la lista (modificador de categoría `remove` Élite + `set-primary` Línea), como Guardia Sanguinaria con Dante en Ángeles Sangrientos. Se dejó pendiente en Élite y se hizo aquí.
- Lukas: perfil a «Infantería».

### Dudas
- **«Segunda arma especial sin coste adicional alguno»**: se leyó literalmente (0 puntos). Habría que confirmar que no significa «al mismo precio de la lista».
- Interpretación de «un Cazador/Garra puede…»: máximo 1 por escuadra para cada tipo de sustitución (pistola de plasma, arma de combate, arma especial).
- Transporte asignado (Cápsula, Rhino, Razorback): pendiente de la sección Transportes asignados.
- Sin abrir en NewRecruit: condición «escuadra de 10 / 15 miniaturas» y el cambio de categoría de la Guardia del Lobo con Logan.

## Ataque Rápido: implementado (revisión 6 del catálogo)
Los perfiles del esqueleto coincidían con el PDF; se ajustó el «Tipo» (Caballería Lobo de Trueno → Caballería, motoristas → Motocicletas, Garra del Cielo → Unidades retropropulsadas, Land Speeder → Vehículo (rápido, gravítico)).

### Decisiones de modelado
- **Caballería Lobo de Trueno**: 1-5 jinetes a 50. Pistola bólter sustituible (bólter gratis, pistola de plasma +15, escudo de tormenta +30), bombas de fusión +5 por miniatura, arma de combate especial 1 por escuadra (energía +15 … martillo/escudo +30) y Marca del Wulfen +5 (máx. 1; en esta lista cuesta +5, no +15). Reglas nuevas: Lobo; armas aceradas (solo en combate cuerpo a cuerpo) enlaza la regla del `.gst`.
- **Escuadrón de Motoristas Garra Veloz**: 3-10 motoristas a 25 con la motocicleta incluida, y una única «Moto de ataque» (+30, bólter pesado; cañón de fusión +10) como modelo opcional (máx. 1). Arma especial en lugar de la pistola bólter y arma de combate especial, 1 por escuadra cada una. Bombas de fusión de todo el escuadrón +5 por miniatura (opción de unidad con coste por miniatura, incluida la moto de ataque).
- **Manada de Ataque Garra del Cielo**: 5-10 a 18, retrorreactor fijo, mismas opciones por escuadra y Marca del Wulfen +15 (máx. 1).
- **Escuadrón de Land Speeders**: 1-3 a 50. Arma principal (bólter pesado; lanzallamas pesado gratis; cañón de fusión +10) y una mejora opcional: Tornado (+10 lanzallamas pesado/bólter pesado, +20 cañón de fusión, +40 cañón de asalto) o Tifón (lanzamisiles tifón +40). Como en Ángeles Sangrientos, las elecciones son por modelo.
- **Manada de Lobos de Fenris**: 5-15 a 8, cada lobo puede ser cibernético (+8). Regla nueva: Supernumerario (no reclaman objetivos).
- **El Rey Lobo**: la Manada de Lobos de Fenris pasa a Línea si hay Canis Nacido Lobo en la lista (modificador de categoría, como la Guardia del Lobo con Logan).

### Dudas / pendiente
- Marca del Wulfen en la Caballería Lobo de Trueno: la lista dice +5 puntos (se transcribió literalmente).
- Motoristas: «todo el escuadrón puede incluir bombas de fusión +5 cada miniatura» incluye la moto de ataque en la cuenta.
- Land Speeder: el «Tornado» y el «Tifón» son una mejora además del arma principal; no se modeló que el Tifón sustituya al bólter pesado.
- El Escuadrón de Land Speeders no tiene transporte; ninguna unidad de esta sección lleva Transporte asignado en el libro.
- Las entradas del esqueleto «Moto ataque Garra Veloz» y «Lobo cibernético» quedan sin enlace raíz (son modelos dentro de sus unidades).
- Sin abrir en NewRecruit: cambio de categoría de los Lobos de Fenris con Canis y las condiciones por modelo.

## Apoyo Pesado: implementado (revisión 7 del catálogo)
Los perfiles de atributos del esqueleto coincidían con el PDF. Predator, Whirlwind y Vindicator pasan a «Vehículo (tanque)»; los tres Land Raider pasan al perfil «Transporte» (capacidad 10, 16 y 12 miniaturas; puntos de acceso en cada lateral y uno en el frente; sin puntos de disparo), como en Caballeros Grises.

### Decisiones de modelado
- **Manada de Colmillos Largos**: Líder de escuadra (1, 15 pts) y 1-5 Colmillos Largos (15 pts). El líder: grupo «Armas» de exactamente 2 (lanzallamas +5, rifle de fusión +10, pistola de plasma, rifle de plasma o arma de energía +15, puño de combate +25) y bombas de fusión +5. Los Colmillos Largos **deben** sustituir su pistola bólter: grupo obligatorio sin opción por defecto (bólter pesado +5, lanzamisiles o cañón de fusión +10, cañón de plasma +20, cañón láser +25). Regla nueva: Control del fuego.
- **Predator** (60): torreta con cañón automático (o cañón láser acoplado +45), barquillas (bólteres pesados +25 / cañones láser +60, máx. 1) y equipo (pala, bólter de asalto, misil cazador asesino, blindaje adicional).
- **Whirlwind** (85): lanzamisiles múltiple Whirlwind fijo (misiles Venganza e Incendiarios Castellano) y el mismo equipo.
- **Vindicator** (115): cañón demolisher y bólter de asalto de serie. La opción «bólter de asalto +10» es una entrada propia «Bólter de asalto adicional» (mismo método que en Rhino y Vindicator de Ángeles Sangrientos) para evitar el error de límite con el arma de serie. Escudo de asedio +10 (equipo nuevo).
- **Land Raider** (250), **Cruzado** (250) y **Redentor** (240): armas de serie fijas (bólter pesado acoplado y 2 cañones láser acoplados; cañón de asalto acoplado y 2 bólteres huracán; cañón de asalto acoplado y 2 cañones tormenta infernal), descargadores de metralla en Cruzado y Redentor, humo y reflector. Poder del espíritu máquina y Vehículo de asalto enlazados desde el `.gst`. Equipo opcional: bólter de asalto, misil cazador asesino, cañón de fusión (+10) y blindaje adicional (+15).
- Entradas nuevas: bólter huracán (3 bólteres acoplados disparando como una sola arma), cañón de asalto acoplado, lanzamisiles múltiple Whirlwind, barquillas, pala excavadora, misil cazador asesino y descargadores de metralla.

### Dudas / pendiente
- El Land Raider (base) usa las mismas opciones que el Cruzado y el Redentor; el libro no da la regla de capacidad para armadura de exterminador (en los demás catálogos va como comentario).
- **Transporte asignado** de los Colmillos Largos (Cápsula, Rhino o Razorback): pendiente de la sección Transportes asignados.
- Colmillos Largos: «Todos los Colmillos Largos, excepto el líder» → el grupo de arma pesada no tiene opción por defecto, así que la unidad aparece con error hasta que se elija.
- Sin abrir en NewRecruit.

## Transportes asignados: implementado (revisión 8 del catálogo)
Rhino (35), Razorback (40) y Cápsula de desembarco (35) pasan al perfil «Transporte» (capacidad 10, 6 y «10 miniaturas o un Dreadnought»; puntos de acceso y de disparo del libro). Los perfiles de atributos del esqueleto coincidían con el PDF.

### Decisiones de modelado
- **Rhino**: bólter de asalto, descargadores de humo y reflector de serie; regla Reparación del `.gst`. Equipo: pala +5, «Bólter de asalto adicional» +10 (entrada propia, por compartir perfil con el de serie), misil cazador asesino +10, blindaje adicional +15.
- **Razorback**: bólter pesado acoplado de serie (grupo «Arma de torreta»: lanzallamas pesado acoplado +25, cañón de asalto acoplado +35, cañón láser acoplado +35, cañón láser y rifle de plasma acoplado +35) y el mismo equipo (bólter de asalto sin «adicional», no lo lleva de serie).
- **Cápsula de desembarco**: bólter de asalto o lanzamisiles Viento de Muerte +20. Reglas nuevas: Sistema de guía inercial, Inmóvil y Asalto orbital.
- **Grupos compartidos** (`sharedSelectionEntryGroups`, máx. 1): «Transporte Asignado» (Rhino, Razorback, Cápsula) para Cazadores Grises, Garras Sangrientas y Colmillos Largos; «Transporte Asignado (incluye Land Raider)» para la Manada de la Guardia del Lobo; «Transporte Asignado (Cápsula de desembarco)» para los dos Dreadnoughts.
- Los transportes no tienen enlace raíz ni categoría: solo se eligen desde el grupo.

### Límites no modelados
- Capacidad (incluida la armadura de exterminador, que cuenta doble), «los Lobos de Fenris y de Trueno no pueden usar cápsulas» y quién cabe en cada transporte: solo texto en el perfil.
- Un Dreadnought dentro de una Cápsula: solo texto.

## Limpieza final y empaquetado (revisión 9 del catálogo)
- Borradas 13 entradas sueltas del esqueleto original (8 lanzamisiles por tipo de misil, Lobo cibernético, Líder de escuadra, Moto ataque Garra Veloz, Servidor y Armadura rúnica de exterminador).
- Reglas «Jefe de batalla de la Guardia del Lobo» (enlazada al Jefe de batalla) y «Los líderes de la manada» (enlazada a las 10 unidades de CG).
- `.bsr` regenerado con índice de Lobos Espaciales en revisión 9.

## Revisión en NewRecruit: correcciones
- **Límite de CG**: el `.gst` limita a 2; se añadió la categoría «Líder de la manada» (en las 10 unidades de CG) y un modificador `increment` +2 al máximo de CG en el Destacamento Básico del `.gst` (máx. 4 con un CG de Lobos).
- **Motocicleta**: modificadores de perfil en cada `entryLink` (Tipo «Motocicletas», R `4(5)`) y bólter acoplado en el perfil de la moto.
- **Montura de lobo de trueno**: Tipo «Caballería» y F, R y A con `increment` 1; reglas Bestias y Caballería y Armas aceradas enlazadas.
- **Saga del Cazador** (Sacerdote Lobo y Jefe de batalla): ahora se oculta si NO hay servoarmadura seleccionada o si hay retrorreactor o motocicleta (y montura en el Jefe). Las condiciones «o» pasan a `conditionGroup type="or"` dentro de un `modifier`, el formato estándar, en lugar de `modifierGroup type="or"`. **Confirmado en NewRecruit que así funciona.** Si falla otra ocultación con condiciones «o», migrarla igual (ver `DOCUMENTACION.md` 14.2).
- Guía general en `DOCUMENTACION.md` (14.2, «Movilidad que cambia el perfil»).

## PENDIENTE DE REVISAR EN NEWRECRUIT (no probado)
El catálogo valida (ids únicos, enlaces resueltos) pero **no se ha abierto en NewRecruit**. Casos a comprobar:
1. **Etiquetas de saga (CG)**: que al elegir una saga en un personaje genérico se oculte en el resto, y que los personajes especiales (saga fija) no la bloqueen.
2. **Cambio de categoría a Línea**: Manada de la Guardia del Lobo con Logan en la lista, y Manada de Lobos de Fenris con Canis (el modificador `remove` + `set-primary`).
3. **«1 por cada 5 miniaturas»** (límites con `max 0` + incremento por repetición): Cazadores Grises, Garras Sangrientas, Lobos de Fenris, etc.
4. **Segunda arma especial sin coste** según tamaño de escuadra (10 Cazadores / 15 Garras) y límite de 1 arma especial por escuadra.
5. **Coste por miniatura** de las escuadras (modificadores con repetición) y mínimos/máximos de cada unidad.
6. **Grupos de armas «exactamente N»** (líder de Colmillos Largos, Garra Veloz, etc.) y Colmillos Largos sin opción por defecto: confirmar que el error inicial es el esperado.
7. **Bombas de fusión «todo el escuadrón»** de Garra Veloz (incluye la moto de ataque) y Land Speeder Tifón (no sustituye el arma de serie).
8. **Entradas «adicional»** (Bólter de asalto adicional en Rhino y Vindicator) sin error de límite.
9. **Grupos compartidos de Transporte Asignado**: que cada unidad vea su grupo (Guardia del Lobo con Land Raider, Dreadnoughts solo Cápsula) y que los transportes no aparezcan sueltos en la lista.
10. **Lukas el Tramposo** y **Arjac** como opciones únicas (máx. 1 en la lista) y su coste.
11. Las dudas de lectura del PDF marcadas en las secciones anteriores.

### Límites que el motor no permite (sin solución prevista)
Dos CG sin misma saga/poderes/combinación de equipo (parcial, solo por etiquetas), «dos CG por opción» como límite duro, capacidad y quién cabe en cada transporte, y efectos numéricos de sagas, montura y marcas.
