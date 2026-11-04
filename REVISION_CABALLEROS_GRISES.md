# Revisión pendiente: catálogo de Caballeros Grises

Resumen de los casos a revisar tras añadir todas las secciones (CG, Élite, Línea, Ataque Rápido, Apoyo Pesado, Transportes asignados). El PDF es una foto escaneada, así que la transcripción puede tener errores de lectura.

## 1. No verificado en NewRecruit
- Nada se ha abierto aún en NewRecruit. El XML valida (ids únicos, enlaces resueltos, `defaultSelectionEntryId` correctos), pero falta comprobar que cada entrada aparece en su categoría y que las restricciones se comportan como se espera.

## 2. Límites que no se pueden expresar bien
- **«Uno por cada cinco miniaturas»** (armas especiales de Paladines, Exterminadores, Choque, Interceptora): está como máximo fijo por unidad (2 o 4), no escala con el tamaño de la escuadra. Habría que usar modificadores con repeticiones, como ya se hizo en Purificadores (categorías + `repeat`).
- **Hasta tres Servidores** que cambian su servobrazo (Séquito): solo como comentario.
- **Estandarte de la hermandad** en Caballeros fantasma: máximo 1 en toda la unidad, contando las miniaturas.
- **Sustituciones por miniatura** (alabarda, martillo, sables…): cada modelo elige la suya, pero no se limita cuántas se pueden cambiar en total cuando el PDF lo restringe.
- **Armas de precisión** («cualquiera de sus armas»): modeladas como máximo 2 por personaje.
- **Capacidad de transporte** de Rhino, Razorback, Chimera, Land Raiders y Stormraven: solo comentario; no hay control de qué unidades caben ni de la armadura de Exterminador.

## 3. Costes dudosos (lectura de foto o ambigüedad)
- **Apotecario** (Paladines): 75 puntos interpretados como coste total del modelo, no suplemento. Ahora es la opción «Apotecario (narthecium)» del Paladín (sustituye el bólter de asalto, máximo 1 por escuadra): el PDF dice que se convierte una miniatura ya pagada en Apotecario por 75 puntos, así que la opción cuesta 75 sobre el coste del Paladín (55).
- **Caballeros fantasma**: 40 puntos por miniatura, 1 a 5 miniaturas; la unidad cuesta 0.
- **Ordo Hereticus**: los costes de puño de combate, bólter condenador, martillo de trueno y vara nulificadora (15/15/20/25 en el catálogo) se leyeron de una foto muy inclinada; probablemente puño y bólter condenador cuesten 20.
- **Costes de psilenciador y cañón psi** de Gran Maestre y Hermano-Capitán (35/45 y 30/40).
- **Dreadnought y Servoterror**: costes de armas leídos de la tabla de la pág. 58.

## 4. Contenido no modelado
- **Espada demonio** (Inquisidor Ordo Malleus): arma con tabla de 2D6 poderes demoníacos; no creada.
- **Potenciación a espada psíquica** del Inquisidor (cambiar cualquier arma por espada psíquica, 30 puntos): solo se incluye el Psíquico Nivel 1 con Puño divino o Comunión.
- **Justicar Thawn**: ya es opción del Justicar en la escuadra de Exterminadores (máx. 1 por lista).
- **Mordrak y Caballeros fantasma**: «Guardaespaldas fantasmal» es solo texto; no añade miniaturas ni está enlazado a la unidad.
- **Aluvión psíquico**, **Aegis** y **Hermandad de psíquicos**: son reglas de texto; sin automatismos de modificadores.
- **Servoterror Némesis**: el perfil se cambió a «Criatura monstruosa» por el PDF; revisar que no rompa otras referencias.
- **Perfil genérico «Asesino»**: sigue en el catálogo sin usar (los 4 Asesinos tienen su perfil propio).

## 5. Errores corregidos al repasar
- Ordo Hereticus y Ordo Xenos no incluían granadas antipsíquicos (solo Malleus). Corregido.
- Faltaban las reglas de ejército «Señor de Titán» (Draigo), «Guardián de Anarca» (Crowe) y «Señor de Formosa» (Coteaz). Añadidas como texto; **no** cambian la categoría de las unidades afectadas a Línea.

## 6. Estructura y decisiones a confirmar
- **Categorías**: solo categoría principal. No se añadió «Personaje Especial» ni «Personaje Independiente» como secundaria.
- **Séquito Inquisitorial**: en «No Ocupa Espacio», con 3 a 12 adeptos. Comprobar contra la lista real (los Coteaz y el número de Inquisidores).
- **Transportes**: grupo compartido «Transporte Asignado» enlazado a Choque, Purificadores, Séquito y Expiación. Interceptora, Exterminadores y Paladines no lo llevan.
- **Entradas `unit` sin enlazar en raíz**: «Asesino» (genérico) y las entradas antiguas del tipo «Caballero fantasma» ya reemplazadas; revisar duplicados.
- **Tipos**: `model` para entradas básicas y personajes; `unit` para las escuadras; las armas y el equipo son `upgrade`.
- **Armas del Acólito guerrero**: decisión de diseño, no un error. El libro permite sustituir pistola láser y espada sierra por la misma arma dos veces, pero el catálogo limita cada arma a 1 por Acólito (grupo «Armas» de exactamente 2, con espada sierra y pistola láser por defecto). Las armas especiales van en un subgrupo con máximo 1 por Acólito y 3 por séquito.
- **Bólteres huracán**: el PDF no da perfil propio; se enlazan al bólter estándar con la descripción de tres bólteres acoplados.
