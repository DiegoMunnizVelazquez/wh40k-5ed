<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="8cf6-c83d-3eeb-e95c" name="Warhammer 40,000 5ª Edición " revision="17" battleScribeVersion="2.03" authorName="Diego Muñiz" authorContact="Club Panzerhammer: panzerhammerwargamesclub@gmail.com  csddmv@gmail.com" authorUrl="csddmv@gmail.com" xmlns="http://www.battlescribe.net/schema/gameSystemSchema" type="gameSystem">
  <readme>Esto es for fun. Cualquier error o sugerencia serán bienvenidas

En este sistema se agruparán el sistema de Warhammer 40000 5ª edición, así como todos los los codex que se usarán en este sistema cerrado.

Prueba</readme>
  <publications>
    <publication id="a951-e6d2-e0d6-b951" name="Codex: Eldar"/>
    <publication id="46cd-a15f-f8aa-0899" name="Codex: Guardia Imperial"/>
    <publication id="1595-b68b-b80b-025d" name="Warhammer 40k Reglamento"/>
    <publication id="2473-9d65-4d36-ef75" name="Codex: Lobos Espaciales"/>
    <publication id="f744-f28b-4145-1729" name="Codex: Marines Espaciales del Caos"/>
    <publication id="d1b8-3684-74d7-02c7" name="40k Apocalipsis"/>
    <publication id="822e-763d-4a6a-b7fc" name="Codex: Angeles Oscuros"/>
    <publication id="bbb3-2e1c-5ad8-0386" name="Codex: Eldar Oscuros"/>
    <publication id="20db-6e5e-2c14-0348" name="Codex: Necrones"/>
    <publication id="e379-f15a-1f45-4a50" name="Codex: Angeles Sangrientos"/>
    <publication id="ab93-1972-8916-dea3" name="Codex: Templarios Negros"/>
    <publication id="21fd-62c1-d9f7-e743" name="Codex: Imperio Tau"/>
    <publication id="f176-f140-74d8-da7d" name="Codex: Marines Espaciales"/>
    <publication id="7e39-7527-c129-cdf4" name="Codex: Demonios del Caos"/>
    <publication id="49c0-3c65-845e-93ad" name="Codex: Caballeros Grises"/>
    <publication id="11a0-7b47-fa28-1d82" name="Codex Orkos"/>
    <publication id="a105-bc94-46a2-951b" name="Codex: Hermanas de Batalla"/>
    <publication id="6677-c576-13ff-2bc5" name="Codex: Tiránidos"/>
    <publication name="GitHub" id="b97a-1882-6351-5350" hidden="false" publisherUrl="https://github.com/DiegoMunnizVelazquez/wh40k-5ed" shortName="GitHubRepo" publisher="GitHub"/>
  </publications>
  <costTypes>
    <costType id="puntos" name="Pts" defaultCostLimit="1750" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="2d6001b0-980e-46d2-bcc2-a9fc60109afd" name="Unidad" kind="model" sortIndex="1">
      <characteristicTypes>
        <characteristicType id="c2b4b061-a0fd-499d-8a3d-6ee52587cbd5" name="Tipo"/>
        <characteristicType id="5ee4ff0b-b244-4670-9d05-91d10f80c32e" name="HA"/>
        <characteristicType id="f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5" name="HP"/>
        <characteristicType id="da036dbb-32c2-430a-9dd5-aa74e0c4f74b" name="F"/>
        <characteristicType id="3f9ed75c-36cd-4169-9cef-48391bb55cfd" name="R"/>
        <characteristicType id="17ee558f-3014-4bd2-afc1-b474d8d2b7a8" name="H"/>
        <characteristicType id="a558b3ef-04d0-440e-a312-bac3255bf592" name="I"/>
        <characteristicType id="5dff3e7c-e024-4030-a71d-03195ec06ea7" name="A"/>
        <characteristicType id="4a42059d-12cd-4c1f-a4c7-bb569d13eeea" name="L"/>
        <characteristicType id="b215fe72-dbce-4ad6-89ec-c4bb3962c39d" name="S"/>
      </characteristicTypes>
    </profileType>
    <profileType id="725a358c-765b-498c-8de5-399fc0c0725f" name="Vehículo" kind="model" sortIndex="3">
      <characteristicTypes>
        <characteristicType id="f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5" name="HP"/>
        <characteristicType id="8cdd4fef-d1ba-4007-992c-b6f93e86d43f" name="Frontal"/>
        <characteristicType id="5f9a3780-eecb-4c70-be1d-e5bd06b06e9e" name="Lateral"/>
        <characteristicType id="0a9f33cb-0412-420a-89d2-20707c360bd2" name="Posterior"/>
        <characteristicType id="077c342f-d7b9-45c6-b8af-88e97cafd3a2" name="Tipo"/>
      </characteristicTypes>
    </profileType>
    <profileType id="3dadd2ff-33f1-41dd-85c7-bee5a7dfa413" name="Bípode" kind="model" sortIndex="2">
      <characteristicTypes>
        <characteristicType id="5ee4ff0b-b244-4670-9d05-91d10f80c32e" name="HA"/>
        <characteristicType id="f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5" name="HP"/>
        <characteristicType id="da036dbb-32c2-430a-9dd5-aa74e0c4f74b" name="F"/>
        <characteristicType id="8cdd4fef-d1ba-4007-992c-b6f93e86d43f" name="Frontal"/>
        <characteristicType id="5f9a3780-eecb-4c70-be1d-e5bd06b06e9e" name="Lateral"/>
        <characteristicType id="0a9f33cb-0412-420a-89d2-20707c360bd2" name="Posterior"/>
        <characteristicType id="a558b3ef-04d0-440e-a312-bac3255bf592" name="I"/>
        <characteristicType id="5dff3e7c-e024-4030-a71d-03195ec06ea7" name="A"/>
        <characteristicType id="077c342f-d7b9-45c6-b8af-88e97cafd3a2" name="Tipo"/>
      </characteristicTypes>
    </profileType>
    <profileType id="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" name="Arma" kind="weapon" sortIndex="5">
      <characteristicTypes>
        <characteristicType id="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464" name="Alcance"/>
        <characteristicType id="a6383362-5aa8-4ff0-b1d0-00e059fc9d45" name="F"/>
        <characteristicType id="6abee736-f8d3-498e-97ac-a5c68445609f" name="FP"/>
        <characteristicType id="077c342f-d7b9-45c6-b8af-88e97cafd3a2" name="Tipo"/>
      </characteristicTypes>
    </profileType>
    <profileType id="72c5eafc-75bf-4ed9-b425-78009f1efe82" name="Equipo" kind="weapon" sortIndex="8">
      <characteristicTypes>
        <characteristicType id="21befb24-fc85-4f52-a745-64b2e48f8228" name="Descripción"/>
      </characteristicTypes>
    </profileType>
    <profileType id="286c-0cd4-7630-47d0" name="Edificio" sortIndex="12">
      <characteristicTypes>
        <characteristicType id="83f8-a458-93f9-3e46" name="Blindaje"/>
        <characteristicType id="0e9c-76b3-2877-614d" name="Capacidad"/>
        <characteristicType id="13de-08da-586d-f7c0" name="Puntos de Acceso"/>
        <characteristicType id="0767-d18e-a48d-3b39" name="Puntos de Disparo"/>
        <characteristicType id="ff97-f5f0-521b-eaf4" name="Tipo"/>
      </characteristicTypes>
    </profileType>
    <profileType id="ae70-4738-0161-bec0" name="Poder Psíquico" kind="spell" sortIndex="7">
      <characteristicTypes>
        <characteristicType id="fd64-cbc4-94de-24cc" name="Alcance"/>
        <characteristicType id="ad96-dfa4-b4ed-656d" name="Detalles"/>
      </characteristicTypes>
    </profileType>
    <profileType id="9c33-b0c8-74bd-e5a7" name="Poder Psíquico (Proyectil)" kind="spell" sortIndex="6">
      <characteristicTypes>
        <characteristicType id="5bf6-378a-0cb7-b079" name="Alcance"/>
        <characteristicType id="12da-9b3e-f37b-bc35" name="F"/>
        <characteristicType id="10b5-aa5b-ccde-79cc" name="FP"/>
        <characteristicType id="20e7-cbcb-1781-a732" name="Tipo"/>
        <characteristicType id="a812-390d-dff6-dabd" name="Detalles"/>
      </characteristicTypes>
    </profileType>
    <profileType id="c970-b832-a956-1ac8" name="Habilidad" kind="ability" sortIndex="9">
      <characteristicTypes>
        <characteristicType id="917b-713d-7c3d-7a9e" name="Descripción"/>
      </characteristicTypes>
    </profileType>
    <profileType id="d12a-b581-e1f4-1193" name="Transporte" kind="model" sortIndex="4">
      <characteristicTypes>
        <characteristicType id="eeb7-edf8-2c77-59b6" name="HP"/>
        <characteristicType id="584e-15ce-949b-e298" name="Frontal"/>
        <characteristicType id="27a5-c15e-f5b6-9c11" name="Lateral"/>
        <characteristicType id="e7fb-2121-c86d-7a50" name="Posterior"/>
        <characteristicType id="f141-fc34-4d2a-b484" name="Tipo"/>
        <characteristicType id="f90f-9546-155f-c585" name="Capacidad"/>
        <characteristicType id="8cb4-5303-693b-0256" name="Puntos de acceso"/>
        <characteristicType id="85c0-7904-8bac-a359" name="Puntos de disparo"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Arma de combate" id="cdf6-05fb-71d5-1982" hidden="false" kind="weapon">
      <characteristicTypes>
        <characteristicType name="Descripción" id="11b5-56ae-f93d-b524" kind="longText"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="ff36a6f3-19bf-4f48-8956-adacfd28fe74" name="No Ocupa Espacio" hidden="false"/>
    <categoryEntry id="dd59-30d7-da4f-6ea4" name="CG" hidden="false"/>
    <categoryEntry id="cf43-5aa1-0e52-25d7" name="Élite" hidden="false"/>
    <categoryEntry id="1ebf-bf5c-b1c9-eb84" name="Linea" hidden="false"/>
    <categoryEntry id="f5d9-d854-c8fa-782b" name="Ataque Rápido" hidden="false"/>
    <categoryEntry id="1267-e587-8ef8-b252" name="Apoyo Pesado" hidden="false"/>
    <categoryEntry id="2aa2-d9e3-bef6-09be" name="Otro" hidden="false"/>
    <categoryEntry id="ee338739-6edf-4620-a2cc-f38d5dd21606" name="Personaje Especial" hidden="false"/>
    <categoryEntry id="c0a6-b371-006e-1e70" name="Personaje Independiente" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="dafb-e147-12bb-ca02" name="Destacamento Básico" hidden="false">
      <categoryLinks>
        <categoryLink id="406e599c-14c8-96a7-9b1a-076ac6011d96-ff36a6f3-19bf-4f48-8956-adacfd28fe74" name="No Ocupa Espacio" hidden="false" targetId="ff36a6f3-19bf-4f48-8956-adacfd28fe74" primary="false"/>
        <categoryLink id="267a-3e9a-654e-fa91" name="Personaje Especial" hidden="false" targetId="ee338739-6edf-4620-a2cc-f38d5dd21606" primary="false"/>
        <categoryLink id="c43c-bef7-5416-465c" name="CG" hidden="false" targetId="dd59-30d7-da4f-6ea4" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5c15-a06e-e008-2bf7" type="min"/>
            <constraint field="selections" scope="parent" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="da7e-d1f2-0445-9e2a" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="0e02-60a7-050b-b42f" name="Linea" hidden="false" targetId="1ebf-bf5c-b1c9-eb84" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c894-4c0a-7aaa-19c7" type="min"/>
            <constraint field="selections" scope="parent" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3f2e-a194-8dd8-f2b4" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="e62c-770a-568a-e93c" name="Élite" hidden="false" targetId="cf43-5aa1-0e52-25d7" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6aeb-08bf-a051-e16a" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="c430-acd7-8bff-78c5" name="Ataque Rápido" hidden="false" targetId="f5d9-d854-c8fa-782b" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a3d3-b5cb-a8ba-b180" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="0620-d50d-9a6d-123c" name="Apoyo Pesado" hidden="false" targetId="1267-e587-8ef8-b252" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ab9d-e6e8-17b8-af1e" type="max"/>
          </constraints>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <sharedRules>
    <rule id="e15d-1437-cfb2-b8dd" name="Fuego Rápido" publicationId="1595-b68b-b80b-025d" page="28" hidden="false">
      <description>Las miniaturas con un arrna de fuego rápido  pueden mover y disparar dos veces a un mismo objetivo que  esté a una distancia máxima de 30 cm.
Si Ia unidad no se ha movido, las miniaturas equipadas con  armas de fuego rápido podrán disparar una vez a un objetivo que esté a más de 30 cm de distancia, hasta el alcance máximo del arma.
Si Ia unidad que dispara tiene unas mimaturas a menos de 30 cm y otras a más de 30 cm del objetivo, las situadas a menos de 30 cm realizarán dos disparos, mientras que el resto realizarán uno solo.
Las miniaturas que disparen con armas de fuego rápido en la fase de disparo no podrán asaltar en Ia subsiguiente fase de asalto.</description>
    </rule>
    <rule id="8714-46ad-62c0-ce35" name="Asalto" publicationId="1595-b68b-b80b-025d" page="28" hidden="false">
      <description>Las armas de asalto disparan tantas veces indica en su perfil, independientemente de Ia distancia a Ia que lo hagan y de si el guerrero se mueve o no.
Las miniaturas con armas de asalto pueden dispararlas en la fase de disparo y asaltar en la fase de asalto.</description>
    </rule>
    <rule id="2e56-6b02-4343-0e40" name="Pesada" publicationId="1595-b68b-b80b-025d" page="29" hidden="false">
      <description>Si una unidad se mueve, no podré disparar con sus armas pesadas; podrá mover o disparar, pero no ambas cosas.
Recuerda que, si alguna de las mimaturas de la unidad se mueve, Ia unidad entera contará como que se ha movido ese turno, por lo que las miniaturas con armas pesadas no podrán disparar, aunque no se hayan movido, la descripción del arma indica cuántas veces puede dispararse, independientemente de su alcance.
Las unidades que empleen armas pesadas en Ia fase de disparo no podrán asaltar al combate cuerpo a cuerpo en la fase de asalto.</description>
    </rule>
    <rule id="ff92-d10b-2808-eb79" name="Pistola" publicationId="1595-b68b-b80b-025d" page="29" hidden="false">
      <description>Todas las pistolas son armas de Asalto 1 y tienen un alcance de 30cm (a menos que el perfil especifique lo contrario).  Además, una pistola cuenta como Arma de Combate Cuerpo a Cuerpo en la fase de asalto.</description>
    </rule>
    <rule id="93b8-287b-914c-9e43" name="Artillería" publicationId="1595-b68b-b80b-025d" page="29, 58, 60" hidden="false">
      <description>A menos que se indique lo contrario, las armas de artillería utilizarán la plantilla grande.
Las armas de artillería (incluidas las armas de barrera de  artillería) impactan con tanta fuerza que aniquilan a la tripulación enemiga. Al efectuar la tirada para penetrar el blindaje del vehículo con un impacto de artillería, tira 2D6 y  elige el resultado mayor.</description>
    </rule>
    <rule id="d094-3fd7-bd10-443d" name="Plantilla" publicationId="1595-b68b-b80b-025d" page="29" hidden="false">
      <description>En vez de efectuar una tirada para impactar, hay que colocar la plantilla de forma que su extremo estrecho esté en contacto con la peana de la miniatura que dispara y el resto cubra tantas miniaturas de la unidad objetivo como sea posible, sin tocar ninguna miniatura amiga. En caso de disparar contra vehículos, la plantilla tiene que colocarse de modo que cubra la mayor parte posible de vehículo sin tocar, tampoco, miniaturas amigas. Todas las miniaturas que queden completa o parcialmente tapadas por la plantilla resultan impactadas. En el caso de los vehículos, usa la dirección de la que procede el disparo para determinar cuál de los blindajes está siendo atacado. Debido a que las  armas de plantilla cubren el área con combustile ardiendo, se ignoran las tiradas de salvación por cobertura al resolver las heridas, incluso si las miniaturas están dentro de la  escenografía de área! Las heridas infligidas no tienen que  asignarse a las miniaturas situadas bajo la plantilla, sino que se pueden asignar a cualquier miniatura de la unidad.

En el caso de que una unidad tenga multiples armas de plantilla, resuelvelos de uno en uno tal y como se indica en el apartado anterior.</description>
    </rule>
    <rule id="31c7-fe6c-af95-f0b5" name="Área" publicationId="1595-b68b-b80b-025d" page="30" hidden="false">
      <description>Cuando se dispara un arma de área, no se efectúa la tirada para impactar, sino que se elige una miniatura enemiga visible para el que dispara y se coloca la plantilla de área de efecto, de modo que su agujero central esté sobre la peana de la miniatura objetivo, o sobre su casco si se trata de un vehículo. La plantilla no puede colocarse de manera que la peana o el casco de una miniatura amiga quede cubierta.  A continuación, determina si el disparo ha impactado en el objetivo. Si el agujero central de la plantilla está más allá del alcance máximo del arma, el disparo falla automáticamente y retira Ia plantilla.  Si el objetivo está al alcance, tira el dado de dispersión y 2D6 para determinar dónde los disparos. Si obtienes un punto de mira en el dado de dispersión, el disparo impacta en el objetivo (ignora los 2D6). Si obtienes una flecha, la plantilla debe desplazarse en la dirección de ésta una distancia por el resultado obtenido de restar la HP de la miniatura que dispara del resultado obtenido en Ia tirada de 2D6 (hasta un mínimo de 0). El resultado de esta resta indica el número de centímetros que se desvía Ia plantilla el siguiente baremo: 1=3 cm;  2=5 cm; 3=8 cm; 4=10 cm; 5=12 cm; 6=15 cm; 7=18 cm;  8=20 cm; 9=22 cm; 10=25 cm; 11=28 cm; 12=30cm.

Si una unidad tiene varias armas de área resuelvelas de una en una tal y como se indica en el párrafo anterior.

Las repeticiones para impactar con las armas de área se tendrá que repetir tanto el dado de dispersión como los 2d6.</description>
    </rule>
    <rule id="952e-d8aa-7560-44b9" name="Área Grande" publicationId="1595-b68b-b80b-025d" page="30" hidden="false">
      <description>Cuando se dispara un arma de área, no se efectúa la tirada para impactar, sino que se elige una miniatura enemiga visible para el que dispara y se coloca la plantilla de área de efecto, de modo que su agujero central esté sobre la peana de la miniatura objetivo, o sobre su casco si se trata de un vehículo. La plantilla no puede colocarse de manera que la peana o el casco de una miniatura amiga quede cubierta.  A continuación, determina si el disparo ha impactado en el objetivo. Si el agujero central de la plantilla está más allá del alcance máximo del arma, el disparo falla automáticamente y retira Ia plantilla.  Si el objetivo está al alcance, tira el dado de dispersión y 2D6 para determinar dónde los disparos. Si obtienes un punto de mira en el dado de dispersión, el disparo impacta en el objetivo (ignora los 2D6). Si obtienes una flecha, la plantilla debe desplazarse en la dirección de ésta una distancia por el resultado obtenido de restar la HP de la miniatura que dispara del resultado obtenido en Ia tirada de 2D6 (hasta un mínimo de 0). El resultado de esta resta indica el número de centímetros que se desvía Ia plantilla el siguiente baremo: 1=3 cm;  2=5 cm; 3=8 cm; 4=10 cm; 5=12 cm; 6=15 cm; 7=18 cm;  8=20 cm; 9=22 cm; 10=25 cm; 11=28 cm; 12=30cm.

Si una unidad tiene varias armas de área resuelvelas de una en una tal y como se indica en el párrafo anterior.

Las repeticiones para impactar con las armas de área se tendrá que repetir tanto el dado de dispersión como los 2d6.</description>
    </rule>
    <rule id="ec6e-0120-4bbd-590e" name="Acobardamiento" publicationId="1595-b68b-b80b-025d" page="31" hidden="false">
      <description>Si una unidad, que no sea un vehículo, sufre heridas por una arma que causa acobardamiento y no supera Ia tirada de salvación, debe realizar inmediatamente un chequeo de acobardamiento, que es un chequeo de liderazgo normal.
Si la unidad no lo supera, se ve forzada a tirarse iCuerpo a tierra! (como se describe en la página 24). Como la unidad ya ha realizado sus tiradas de salvación, el ¡Cuerpo a tierra! no Ia protege del fuego de las armas que le han provocado  el acobardamiento (o cualquier otra arma disparada por la  misma unidad esa fase), ies demasiado tarde!.
Mientras supere los chequeos, cabe la posibilidad que una  unidad tenga que realizar, en un mismo turno, varios chequeos de acobardamiento, pero si una unidad ya está  iCuerpo a tierra!, no deberá realizar ninguno más.
Si las reglas especiales de una unidad especifican que dicha  unidad nunca puede quedar acobardada, siempre superará  automáticamente los chequeos de acobardamiento. Esto  no impide que puedan tirarse cuerpo a tierra  voluntariamente.</description>
    </rule>
    <rule id="f6bb-191b-f63a-0ec5" name="Sobrecalentamiento" publicationId="1595-b68b-b80b-025d" page="31" hidden="false">
      <description>Realiza la tirada para impactar de la manera habitual,  incluso si el objetivo se encuentra fuera de alcance. Por cada resultado de 1, la miniatura que dispara sufre una herida (puede realizar tiradas de salvación de Ia forma  habitual).

Gracias a sus sistemas adicionales de refrigeración, las armas montadas en los vehículos no se  ven afectadas por esta regla.

Sobrecalentamiento en armas de área:  Las armas de área no realizan la tirada para impactar, por lo que deberás tirar 1D6 antes de disparar un arma de área con sobrecalentamiento para determinar si ésta abrasa a su  portador. Si obtienes un 1, el arma se sobrecalienta, no dispara y el portador sufre una herida (realizando sus tiradas de salvación de la forma habitual). De lo contrario, el dispa-ro se resuelve normalmente.

Sobrecalentamiento y repeticiones de tirada:  Si una miniatura puede repetir la tirada para impactar (incluso si tiene HP6+), podrá repetir tiradas de sobrecalentamiento que hayan obtenido un 1 para no sufrir Ia herida, a menos que también se obtenga un 1 en la segunda tirada.</description>
    </rule>
    <rule id="a06f-e29d-bcf4-ed75" name="Acoplada" publicationId="1595-b68b-b80b-025d" page="31" hidden="false">
      <description>Las armas acopladas cuentan como una sola arma del mismo tipo, pero para representar su mayor cadencia de fuego se puede repetir cualquier tirada para impactar fallida (incluyendo las armas de área acopladas). En otras palabras, las armas acopladas no efectúan más disparos que las normales, pero tienen más posibilidades de impactar en su objetivo.

Armas de platilla acopladas: Como estas armas no necesitan impactar, estas repetirán las tiradas para herir y penetrar blindaje.</description>
    </rule>
    <rule id="7097-6879-0d11-787d" name="Acerada" publicationId="1595-b68b-b80b-025d" page="31" hidden="false">
      <description>Un resultado de 6 en la tirada para herir con un arma acerada causará automáticamente una herida, sin importar la Resistencia del objetivo, y se considerará FP2. Contra vehículos, cualquier tirada para penetrar el blindaje en Ia que se obtenga un 6 permite efectuar otra tirada de 1D3 y sumar el resultado al total.</description>
    </rule>
    <rule id="7636-0a2f-8c61-f9b2" name="Francotirador" publicationId="1595-b68b-b80b-025d" page="31" hidden="false">
      <description>Los impactos de un arma de francotirador hieren con un resultado de 4+,  sin importar Ia Resistencia de Ia víctima. Además, todas las armas de francotirador se consideran armas aceradas y causan acobardamiento (pag 31).
Contra vehículos, las armas de francotirador tienen Fuerza 3</description>
    </rule>
    <rule id="eae1-d240-afcf-4b81" name="Barrera de Artillería" publicationId="1595-b68b-b80b-025d" page="32" hidden="false">
      <description>Ten en cuenta que en los codex antiguos, las armas de Barrera de Artillería están identificadas con una E (estimación) antes del alcance (p.ej., Alcance: E120 cm). Esto equivale a tener &quot;barrera&quot; en el tipo.
Las armas de barrera de artillería utilizan plantillas de área de efecto, por lo que siguen las reglas de las armas de Área, con las siguientes excepciones:
• Para determinar si una unidad herida un arma de Barrera de Artillería puede realizar la tirada de salvación por cobertura, considera siempre que el disparo viene desde el centro de la plantilla, en vez de desde la miniatura que dispara. Recuerda que las miniaturas dentro de la escenografía de área tienen tirada de salvación sin importar Ia dirección de donde proceda el disparo.
• Algunas armas de Barrera de Artillería tienen también un alcance mínimo (p. ej., Alcance: 30-120 cm). Si el centro de la plantilla se coloca a menos distancia que el alcance mínimo (antes de tirar el dado de dispersión), el disparo falla automáticamente y se retira la plantilla.
• La lluvia mortal procedente del cielo es una aterradora experiencia, por eso todas las armas de barrera de artillería causan acobardamiento (consultar Acobardamiento pg 31).
• Las armas de barrera de artillería pueden disparar a un objetivo que no puedan ver, en ese caso la HP del que dispara no modifica la tirada para determinar la distancia que se dispersa la plantilla de área de efecto si en el dado de dispersión aparece una flecha.

Múltiples barreras de artillería:
Si en una unidad hay más de un arma de Barrera de Artillería, tendrán que disparar al unísono, como se explica a continuación:  Primero se coloca la plantilla de área de efecto para el arma  de la unidad que dispara que se encuentre más cerca del  objetivo. Si el objetivo está al alcance, tira el dado de dispersión corno se ha descrito anteriormente. Una vez determinada Ia final de Ia primera plantilla,  tira un dado de dispersión cada arma de barrera adicional que dispara la unidad. Si el resultado obtenido es una flecha, coloca la plantilla en la indicada por ésta, de tal  manera que quede adyacente y tocando el borde de la plantilla que se ha colocado en primer lugar (consulta el diagrama pg 32). Si el resultado obtenido es un punto de mira, la plantilla se coloca de manera que su borde esté en contacto con el  borde de cualquiera de las plantillas ya colocadas de la salva. Ten en cuenta que es perfectamente válido que, durante este  prcxeso, algunas plantillas se superpongan.
Una vez colocadas, resuelve los impactos de cada plantilla de área de la manera habitual.</description>
    </rule>
    <rule id="2d66-d516-2bf5-5751" name="Fusión" publicationId="1595-b68b-b80b-025d" page="32" hidden="false">
      <description>Las armas de fusión son letales y disparan &quot;rayos de calor&quot; a muy corto alcance.
Al efectuar una tirada para  penetrar el blindaje de un vehículo situado a la mitad o menos del alcance, tira ID6 adicional. Si el objetivo está a más de la mitad del alcance máximo del arma, se tira un solo dado de la forma habitual.</description>
    </rule>
    <rule id="7157-0eb6-5c30-32e8" name="Lanza" publicationId="1595-b68b-b80b-025d" page="32" hidden="false">
      <description>Debido a su naturaleza, todo Blindaje mayor de 12 se considerará 12 para las lanzas de energía.</description>
    </rule>
    <rule id="1e15-345f-8925-f91b" name="Arma de Combate Cuerpo a Cuerpo" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>No confieren ninguna bonificación, la miniatura realizará sus ataques con su atributo de Fuerza y FP -</description>
    </rule>
    <rule id="2528-3f58-a823-5b4a" name="Energía" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>Las miniaturas heridas por un arma de energía no pueden realizar tiradas de salvación por armadura.</description>
    </rule>
    <rule id="d32e-85b7-332a-3283" name="Cuchilla Relámpago" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>Las cuchillas relámpago se consideran armas de energía que. además, permiten repetir cualquier tirada para herir fallida.</description>
    </rule>
    <rule id="bbfc-16f2-5a79-049f" name="Arma Psíquica" publicationId="1595-b68b-b80b-025d" page="42, 50" hidden="false">
      <description>Las armas psíquicas de consideran armas de energía que, adicionalmente, le otorga al portador la posibilidad de realizar un poder psíquico tras los ataques. Efectua las tiradas para impactar, herir y salvaciones invulnerables de manera habitual. Si tras el procedimiento habitual una miniatura ha sufrido una o más heridas no salvadas de esta arma, el portador del arma podrá realizar un chequeo psíquico de la misma forma que con el resto de poderes, y por lo tanto, aplicando las reglas habituales relacionadas con los mismos. Si el psíquico supera el chequeo, la miniatura enemiga sufrirá una muerte instantanea, independientemente de su atributo de Resistencia.
Este poder no tendrá efecto en Vehículos, miniaturas inmunes a la muerte instantanea o cualquier miniatura sin atributo de Heridas.
Este poder cuenta para el límite de poderes que un psíquico puede lanzar durante el turno (normalmente 1).</description>
    </rule>
    <rule id="48c8-bb35-6595-03d1" name="Envenenada" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>Las armas envenenadas no se basan en la comparación de Fuerza y Resistencia para herir, si no que siempre hieren con un valor fijo dado entre parentesis, normalmente 4+. Adicionalmente, si la fuerza del portador es mayor que la resistencia de la víctima, el portador podrá repetir la tirada para herir.</description>
    </rule>
    <rule id="3982-7f84-5050-c9dd" name="Puño de Combate" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>Un puño de combate (o &quot;garra de combate&quot;) es un guantelete blindado rodeado de un campo disruptor de energía. Un puno de combate es un arma de energía que dobla la
Fuerza original de quien la usa (hasta un máximo de 10). No obstante, los punos de combate son difíciles y pesados de manejar, por lo que una miniatura equipada con un
puño de combate siempre atacará con Iniciativa 1 (ignora cualquier bonificación a la Iniciativa por reglas especiales, equipo, etc.).</description>
    </rule>
    <rule id="a887-a454-c960-3c1f" name="Martillo Trueno" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>Un Martillo de Trueno es un arma de energía que duplica la fuerza del usuario al igual que un puño de combate. Adicionalmente, las miniaturas que no mueran tras recibir al menos una herida por un Martillo de Trueno quedarán aturdidas y verán su Iniciativa reducida a 1 hasta el final del siguiente turno del jugador. Contra los Vehículos sin Iniciativa, los ataques que no inflinjan ningún daño, también inflingirán un resultado de Tripulación Acobardada.</description>
    </rule>
    <rule id="144b-325e-c8f7-2e8b" name="Bruja" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>Las armas Bruja siempre hieren al objetivo con un resultado de 2+ independientemente de la Resistencia del rival. Adicionalmente, el portador se considera con Fuerza 9 contra vehículos.</description>
    </rule>
    <rule id="d53e-70b2-27c9-9282" name="Dos Armas de Combate Cuerpo a Cuerpo" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>El portador obtiene +1 Ataque</description>
    </rule>
    <rule id="a1c1-210b-6f48-16bd" name="Dos Armas Especiales Diferentes" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>El portador deberá elegir que arma especial usar durante el combate, solo pudiendo usar una de ellas y sin obtener el bonificador de +1 Ataque por portar 2 Armas.</description>
    </rule>
    <rule id="366a-5348-9b99-efe2" name="Un Arma Normal y Otra Especial" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>El portador obtiene +1 Ataque. Todos los ataques, incluido el adicional, utilizan los modificadores y penalizadores del arma especial.

Los Puños y Garras de Combate, Martillos Trueno y Cuchillas Relámpago son una excepción, ya que el portador solo se beneficiará del ataque extra solo si porta 2 armas especiales iguales.</description>
    </rule>
    <rule id="7873-fff4-9cb3-2a23" name="Dos Armas Especiales Iguales" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>El portador obtiene +1 Ataque. Todos los ataques, incluido el adicional, utilizan los modificadores y penalizadores del arma especial</description>
    </rule>
    <rule id="3e32-1b73-9eb0-f59e" name="Contraataque" publicationId="1595-b68b-b80b-025d" page="74" hidden="false">
      <description>Cuando una unidad con  esta regla es asaltada por el enemigo, debe efectuar un chequeo de liderazgo. Si la unidad supera el chequeo,  todas sus miniaturas obtienen +1 Ataque adicional, exactamente igual que si hubieran asaltado ese turno.
La regla no puede usarse si, cuando fue asaltada, la unidad  ya estaba trabada en combate en un turno previo.</description>
    </rule>
    <rule id="71c3-7c34-f6f0-b284" name="Guerrero Eterno" publicationId="1595-b68b-b80b-025d" page="74" hidden="false">
      <description>La miniatura es inmune a los efectos de la Muerte Instantánea</description>
    </rule>
    <rule id="b23b-fb5c-4c8c-5ae4" name="Coraje" publicationId="1595-b68b-b80b-025d" page="75" hidden="false">
      <description>Las unidades con coraje superan automáticamente cualquier chequeo de moral y de acobardamiento que tengan que efectuar y nunca se retiran. A pesar de ello, pueden ponerse  iCuerpo a tierra! voluntariamente.
Esta regla especial se aplica a un Personaje Independiente que se una a una unidad con Coraje. Por otro lado, mientras un personaje con Coraje  permanezca en una unidad que no tenga esta regla especial,  el personaje perderá esta habilidad.
Si una unidad que se retira se beneficia de esta regla, podrá reagruparse automáticamente al inicio de su siguiente fase de movimiento, ignorando las restricciones habituales de reagrupamiento.</description>
    </rule>
    <rule id="fe28-c924-099d-aa4e" name="No Hay Dolor" publicationId="1595-b68b-b80b-025d" page="75" hidden="false">
      <description>Algunos guerreros están dominados por un ansia de sangre tan grande que pueden ignorar heridas que acabarían hasta con un experimentado Marine Espacial. Tira un dado cuando una miniatura con esta regla especial pierda una Herida. Con un resultado de 1, 2 ó 3, Ia Herida se pierde normalmente y la miniatura será retirada si era su última Herida, pero con un resultado de 4, 5 ó 6, la Herida se ignora por completo y la miniatura continúa luchando.
Esta habilidad es inútil contra armas que causen muerte instantánea (tengan una Fuerza del  doble o una regla especial que tal efecto, aunque Ia miniatura sea un guerrero etemo). Tampoco puede usarse  contra heridas de FP1 y FP2, armas de energía y cualquier otra  herida sin posibilidad de tirada de salvación por armadura  (como las heridas causadas por puños de combate, armas de combate cuerpo a cuerpo para dreadnoughts, armas aceradas que obtengan un resultado de 6, peligros de la disformidad, chequeos por terreno no superados, etc.).</description>
    </rule>
    <rule id="33b4-1a73-92db-e562" name="Asalto Rabioso" publicationId="1595-b68b-b80b-025d" page="75" hidden="false">
      <description>Las miniaturas con esta regla especial son conocidas por Ia ferocidad de sus cargas. En cualquier turno en el que la unidad haya cargado, todas las miniaturas que la componen tendrán un modificador de +1 a la Iniciativa y a la Fuerza en combate cuerpo a cuerpo (esta regla especial no afecta a las persecuciones arrolladoras).</description>
    </rule>
    <rule id="d110-fc1c-250c-54d4" name="Veloces" publicationId="1595-b68b-b80b-025d" page="75" hidden="false">
      <description>Existen muchas variantes de esta regla especial: pies ligeros, rápidos e incluso trote. Aunque esta regla especial tiene muchos nombres, funciona igual para todas las unidades que la poseen. Una unidad sujeta a esta regla puede asaltar en el mismo turno en que haya corrido.</description>
    </rule>
    <rule id="e664-80ee-cd50-fd59" name="Atacar y Huir" publicationId="1595-b68b-b80b-025d" page="75" hidden="false">
      <description>Las miniaturas que tengan esta regla pueden destrabarse de un combate cuerpo a cuerpo al término de la fase de asalto. La unidad que use esta regla especial debe efectuar un chequeo de iniciativa. Si no supera el chequeo, no ocurre nada y las miniaturas continúan trabadas en combate. Si  supera el chequeo, tira 3D6 (3=8 cm, 4= 8cm, 5=12 cm,  6=15 cm, 7=18 cm, 8=20 cm, 9=22 cm, 10=25 cm, 11=28  cm, 12=30 cm, 13=33 cm, 14=35 cm, 15=38 cm, 16=40 cm,  17=42 cm, 18=45 cm). La unidad se alejará Ia distancia obtenida en la tirada en Iinea recta y en la dirección que prefiera,  ignorando las unidades con las que pudiera estar trabada en combate. No pueden realizarse persecuciones arrolladoras. La  unidad enemiga con la que estuviera trabada en combate puede consolidar la posición normalmente. Un movimiento de atacar y huir no se ve ralentizado terreno difícil, pero se ve afectado por terreno peligroso. No puede usarse para  entrar en contacto con el enemigo. Si hay unidades sujetas a esta regla en ambos bandos, tira un dado para determinar la iniciativa y destrabalas alternativamente. Si la última unidad está destrabada, consolida posición.</description>
    </rule>
    <rule id="3310-5f06-776a-5b35" name="Infiltración" publicationId="1595-b68b-b80b-025d" page="75" hidden="false">
      <description>Las unidades con esta regla especial se despliegan en último lugar, una vez que todas las unidades (amigas o enemigas) se  hayan desplegado. Si ambos bandos tienen infiltradores, los  jugadores tiran un dado y el que obtenga el resultado mayor, tendrá la iniciativa y decidirá quién inicia el despliegue de estas unidades. Los infiltradores pueden desplegarse en cualquier punto del tablero que esté a una distancia de más de 30 cm de una unidad enemiga, siempre que ninguna unidad enemiga pueda trazar una línea de visión hasta ellos. Esto incluye a las unidades en el interior de un edificio (consulta la página 83), siempre que el edificio esté a más de 30 cm de cualquier unidad enemiga. Alternativamente, pueden desplegarse en cualquier punto del tablero que esté a más de 45 cm de cualquier unidad enemiga, incluso en terreno despejado.  Si una unidad con esta habilidad se despliega en el interior  de un vehículo de transporte, no puede infiltrarse.
La infiltración también confiere un movimiento especial de flanquear a unidades de infiltradores que se mantienen en  reserva (consulta la página 94).</description>
    </rule>
    <rule id="6cf1-d139-8b14-6083" name="Moverse a Través de Cobertura" publicationId="1595-b68b-b80b-025d" page="75" hidden="false">
      <description>Tira 1 dado adicional para determinar la distancia que se puede mover una unidad al atravesar cobertura</description>
    </rule>
    <rule id="ea4b-af50-a8b0-62b7" name="Visión Nocturna / Sentidos Agudos" publicationId="1595-b68b-b80b-025d" page="75" hidden="false">
      <description>En los escenarios donde se apliquen las reglas de Combate Nocturno, las unidades con esta regla podrán repetir la tirada para determinar hasta dónde alcanza su visión, pero deberán aceptar el segundo resultado aunque sea peor que el primero.
Los Personajes Independientes con esta habilidad la confieren a la unidad a la que se unan. De la misma forma que las unidades con esta regla la confieren a los Personajes Independientes que se unan a ella.</description>
    </rule>
    <rule id="3fe5-67c3-5aee-a5e7" name="Enemigo Predilecto" publicationId="1595-b68b-b80b-025d" page="75" hidden="false">
      <description>La unidad puede repetir los ataques para impactar en Combate Cuerpo a Cuerpo contra su enemigo predilecto.
Esta habilidad no funciona cuando atacan a vehículos sin Habilidad de Armas</description>
    </rule>
    <rule id="2b48-a95a-9e05-1de0" name="Rabia" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>En la fase de Movimiento, las unidades sujetas a Rabia deben moverse lo más rápido posible hacia el enemigo visible más cercano. En la fase de Disparo son libres de decidir si quieren correr o no, aunque en el caso de hacerlo lo haran hacia el enemigo más próximo visible. En la fase de asalto siempre deben consolidar la posición hacia el enemigo más prñoximo visible. Cuando se baten en Retirada, se embarcan en un transporte o si no hay enemigo visible, ignora esta regla.</description>
    </rule>
    <rule id="470c-bf6a-caae-15c9" name="Implacables" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>Las miniaturas sujetas a esta regla podrán disparar armas de fuego rápido y pesadas considerandose estacionarias, incluso si han movido, pudiendo asaltar en el mismo turno en el que disparan.
Un Personaje Independiente Implacable sigue sujeto a las limitaciones de cualquier unidad a la que se haya unido.</description>
    </rule>
    <rule id="630b-a220-22d6-31d0" name="Exploradores" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>Cuando ambos ejércitos hayan desplegado (incluidos los infiltradores), pero antes de que el jugador con la iniciativa empiece su primer turno, los exploradores pueden efectuar su movimiento normal, efectuado igual que en su fase de Movimiento con Ia única diferencia de que deben permanecer a más de 30 cm de cualquier unidad enemiga.
Si ambos bandos disponen de exploradores, los jugadores tiran 1D6 y el que obtenga el resultado mayor decide quién tiene la iniciativa, para después mover alternativamente a estas unidades.
Si una unidad con esta habilidad se despliega en el interior de un transporte asignado, confiere Ia habilidad explorador también al transporte. Esta regla también confiere un movimiento especial de flanqueo a las unidades de exploradores que se mantienen en reserva (consulta Ia página 94).</description>
    </rule>
    <rule id="e663-91fe-14da-9aa4" name="Jinete Experto" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>La unidad de motoristas o caballería puede repetir los chequeos por terreno peligroso.</description>
    </rule>
    <rule id="bb8e-642b-6fbc-bb61" name="Avance Sistemático" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>Las unidades con esta regla se consideran Implacables aunque siempre avanzan como si estuvieran por terreno dificil (Incluyendo los asaltos).
Un personaje proporcionará esta regla a la unidad y viceversa.</description>
    </rule>
    <rule id="f1ee-e19a-a3c3-6797" name="Sigilo" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>Las tiradas de salvación por cobertura de las miniaturas con esta regla especial se ven mejoradas en 1+</description>
    </rule>
    <rule id="6238-4e29-b780-4b11" name="Testarudos" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>Las unidades con esta regla especial siempre ignoran los modificadores negativos cuando efectuan los Chequeos de Moral.
Los personajes Independientes confieren esta habilidad a las unidades a las que se unan.</description>
    </rule>
    <rule id="4614-34c7-8574-6faf" name="Enjambres" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>Todos los Enjambres poseen las reglas de Sigilo y Vulnerable a las Explosiones, así como que estas unidades no ofrecen tiradas de salvación por cobertura a Vehículos y Criaturas Monstruosas</description>
    </rule>
    <rule id="45ff-62c7-dac8-61cc" name="Cazacarros" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>Las unidades con esta regla especial tienen un 1+ a sus tiradas para penetrar blindaje, tanto a distancia como cuerpo a cuerpo. También superarán automáticamente los chequeos de moral provocados por brutalidad acorazada.</description>
    </rule>
    <rule id="146e-d4a2-283a-f0f5" name="Turbopropulsores" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>Las unidades montadas en motocicletas o motocicletas a reacción pueden utilizar turbopropulsores para moverse a gran velocidad. Una unidad que emplee los turbopropulsores de sus vehículos puede mover hasta 60 cm en la fase de movimiento. Controlar una motocicleta a tal  velocidad requiere mucha habilidad y gran concentración, por lo que estas unidades no podrán moverse por terreno dificil en un turno en el que hayan utilizado los turbopropulsores y tampoco podrán disparar, lanzar asaltos o ejecutar una acción  voluntaria de cualquier tipo en el mismo turno. Además, en la siguiente fase de disparo del adversario, la motocicleta se beneficia de una tirada de salvación por cobertura de 3+, para representar lo difícil que resulta impactar en un objetivo que se mueve a tal velocidad. Sin embargo, en Ia fase de disparo enemiga, los motoristas pierden la habilidad de iCuerpo  a tierra! y superan automáticamente los chequeos de acobardamiento. Una unidad que utilice los turbopropulsores de sus vehículos debe finalizar su movimiento al menos a 45 cm de su posición inicial para obtener esta tirada de salvación por cobertura.</description>
    </rule>
    <rule id="394d-92aa-234a-d417" name="Vulnerable a las Explosiones" publicationId="1595-b68b-b80b-025d" page="76" hidden="false">
      <description>Si la unidad es un Vehículo, cada impacto de Área o de Plantilla contará como dos.
Si la unidad no es un Vehículo, cada herida recibida contará como dos.</description>
    </rule>
    <rule id="61b4-c5bb-9d85-8506" name="Personaje independiente" publicationId="1595-b68b-b80b-025d" page="47" hidden="false">
      <description>Los personajes independientes están representados por miniaturas individuales que luchan como unidades de un solo guerrero. Una de las habilidades más útiles de los personajes independientes es que pueden unirse a otras unidades durante la batalla, de forma que pueden reforzar aquellas posiciones en que el combate es más enconado. Los personajes independientes tienen su propia entrada en el codex correspondiente y sus reglas indican claramente que se trata de un personaje independiente.
Ten presente que existen otras miniaturas que siempre combaten como unidades de una sola miniatura, pero no son personajes independientes.</description>
    </rule>
    <rule id="b1c6-9a9a-fc08-321d" name="Granadas de asalto" publicationId="1595-b68b-b80b-025d" page="36" hidden="false">
      <description>Las miniaturas equipadas con granadas de asalto no sufren el penalizador por asaltar a un enemigo a cubierto.
Al atacar a Vehículos, otorgan un Ataque con una Fuerza de 4+1d6.</description>
    </rule>
    <rule id="e4b4-fbcb-fe82-edaf" name="Granadas defensivas" publicationId="1595-b68b-b80b-025d" page="36" hidden="false">
      <description>Las unidades que asalten a unidades equipadas con granadas defensivas no ontienen ninguna bonificación por asalto, a no ser que estuviera ya trabada en un turno anterior o estubiera ¡Cuerpo a Tierra! en el momento de ser asaltada.
Al atacar a Vehículos, otorgan un Ataque con una Fuerza de 4+1d6.</description>
    </rule>
    <rule id="e73e-593a-922e-a47a" name="Despliegue Rápido" hidden="false">
      <description>Algunas reglas especiales de unidad permiten que se incorporen al juego mediante túneles, teleportación, volando o mediante algún otro método extraordinario. Si quieres usar esta opción, la unidad en cuestión inicia el juego en reserva (incluso si estás jugando una misión especial en la que la regla especial reservas no se aplica). Tira por la llegada de estas unidades tal y como lo especifican las reglas de reservas y despliégalas como sigue.

Primero, coloca una miniatura de la unidad en cualquier punto del tablero, en la posición en la que te gustaría que la unidad llegase, y tira el dado de dispersión. Si obtienes un resultado de punto de mira, la miniatura permanece donde está, pero si aparece una flecha, ésta determina la dirección en la que se mueve la miniatura. Si obtienes un resultado de dispersión, tira 2D6 (1=3 cm, 2=5 cm, 3=8 cm, 4=10 cm, 5=12 cm, 6=15 cm, 7=18 cm, 8=20 cm, 9= 22 cm, 10=25 cm, 11=28 cm, 12=30 cm) para comprobar la distancia a la que se mueve desde la posición.

Una vez hecho, el resto de miniaturas de la unidad se colocan alrededor de la primera. Las miniaturas deben situarse en contacto peana con peana con la miniatura original en un círculo a su alrededor. Cuando el primer círculo esté completo, debe iniciarse un nuevo círculo con cada miniatura tocando el círculo interno. Cada círculo debería incluir tantas miniaturas como quepan en su interior.

Las miniaturas sujetas a despliegue rápido consideran el terreno difícil como terreno peligroso. En la fase de movimiento en la que aparecen, estas unidades no pueden mover, tan solo desembarcar de un vehículo de transporte sujeto a despliegue rápido. Las unidades sujetas a despliegue rapido en edificios en ruinas se situan en la planta baja. No pueden efectuar el despliegue rápido directamente en el interior de un vehículo de transporte o un edificio, que se considerará terreno infranqueable.

En la fase de disparo de ese turno, estas unidades pueden disparar (o correr) normalmente y, obviamente, cuentan como si hubieran movido en la fase de movimiento previa.
Los vehículos se consideran como si hubieran movido a velocidad de crucero.

En la fase de asalto de ese turno, estas unidades no pueden lanzar un asalto (incluso si son veloces), a menos que lo especifique claramente en sus reglas especiales, ya que están demasiado trastornadas por su movimiento de des pliegue rápido.</description>
    </rule>
    <rule id="0903-3583-24c6-b52c" name="Granadas Perforantes" publicationId="f176-f140-74d8-da7d" page="63" hidden="false">
      <description>Contra Vehículos otorgan un Ataque de Fuerza 6+1d6.</description>
    </rule>
    <rule id="8870-5967-3fc8-f95d" name="Flanquear" publicationId="1595-b68b-b80b-025d" page="94" hidden="false">
      <description>Durante el despliegue, los jugadores pueden declarar que las unidades sujetas a la regla especial exploradores o infiltradores intentan flanquear al enemigo. Esto significa que están efectuando un movimiento envolvente para alcanzar al enemigo desde una dirección inesperada. Cuando una unidad que flanquea se incorpora como reserva, el jugador que la controla tira 1D6: un resultado de 1 6 2 indica que la unidad aparecera desde el borde corto del tablero a la izquierda del jugador; con un resultado de 3-4, la unidad aparecera por la derecha y con un resultado de 5-6, el jugador puede elegir entre aparecer por la derecha o la izquierda. Las miniaturas se moverán en el tablero tal y como describen las reglas de las reservas, descritas arriba. Recuerda que si las unidades se eligen de la lista de ejército con un transporte asignado, pueden flanquear con su transporte, pero si lo hacen deberan moverse a bordo de su transporte.</description>
    </rule>
    <rule id="7654-3d41-1fbd-d710" name="Descargadores de Humo" publicationId="1595-b68b-b80b-025d" page="62" hidden="false">
      <description>Una vez por batalla, después de completar su movimiento, un vehículo equipado con descargadores de humo puede activarlos (no importa cuánto haya movido). Coloca un poco de algodón alrededor del vehículo para indicar que está oculto por el humo. El vehículo no puede disparar el mismo turno en que utiliza los descargadores de humo y se considerará un
objetivo desenfilado en la siguiente fase de disparo.

Después de la fase de disparo enemiga, el humo se dispersará sin ningún efecto adicional. Hay que tener en cuenta que un vehículo puede usar los descargadores de humo aunque su tripulación esté acobardada o aturdida.

Cabe la pena destacar que algunos ejércitos pueden usar versiones diferentes de los descargadores de humo, sujetos a reglas ligeramente diferentes. Como siempre, las reglas que aparecen en el codex tienen prioridad.</description>
    </rule>
    <rule id="6548-d2e6-6a0b-555b" name="Granada" publicationId="1595-b68b-b80b-025d" page="63" hidden="false">
      <description>Las granadas deben colocarse en lugares específicos para que puedan infligir suficiente daño, por lo que cada miniatura que las utilice solo podrá efectuar un ataque, independientemente del número de Ataques que tenga en su perfil de atributos y del resto de modificadores que pueda obtener durante un asalto.
Las granadas tienen los siguientes Factores de Penetración contra vehículos:

Granadas defensivas y de asalto: 4+1D6

Granadas perforantes: 6+1D6

Bombas de fusión: 8+2D6</description>
    </rule>
    <rule name="Psíquico" id="72c2-fd50-9880-c83c" hidden="false">
      <description>Los psíquicos son guerreros dotados de poderes increíblemente terribles, que canalizan las malignas energías de la disformidad.




Estos poderes varían de una raza a otra y, en ocasiones, de un psíquico a otro. Los poderes psíquicos disponibles para nuestras miniaturas no los trataremos en esta página, sino que se describen en detalle en los codex, donde encontrarás reglas más completas para cada uno de los poderes. Las reglas generales que tratamos a continuación explican cómo se utilizan los poderes psíquicos. Las excepciones a estas reglas se explican en los codex.




Los psíquicos pueden utilizar un poder psíquico por turno del jugador. Para utilizar un poder de forma eficaz, el psíquico debe superar un chequeo psíquico, que es un chequeo de liderazgo normal. Ten en cuenta que este chequeo
siempre tiene que efectuarse utilizando el atributo Liderazgo del psíquico. Aunque hay situaciones en las que los chequeos de liderazgo se efectúan con los atributos de Liderazgo de otras miniaturas, los chequeos para utilizar los
poderes psíquicos siempre se efectúan usando el Liderazgo del propio psíquico.




PELIGROS DE LA DISFORMIDAD
Si el resultado del chequeo psíquico es un doble 1 o un doble 6, algo horrible le ha sucedido al psíquico. Los demonios de la disformidad entran en la mente del psíquico y amenazan con tragárselo y destruirlo. El psíquico sufre 1
herida sin ninguna tirada de salvación por armadura o por cobertura posible. Sí puede efectuar una tirada de salvación invulnerable, pero el poder de la disformidad es tan grande que las tiradas de salvación superadas se deberán
volver a tirar. Ten en cuenta que un psíquico que obtiene un doble 1 en los dados podrá seguir utilizando su poder, incluso si ha resultado herido o muerto.




PROYECTILES PSÍQUICOS
Es habitual que los poderes psíquicos tomen la forma de proyectiles. Utilizar un proyectil psíquico cuenta como disparar con un arma de fuego (un arma de asalto si no se especifica lo contrario). Por eso el psíquico debe ser capaz
de ver a la unidad objetivo, no puede estar trabado en combate y no puede haber corrido en la fase de disparo si quiere utilizar un proyectil psíquico. Igualmente, si un psíquico ataca a una unidad con un proyectil psíquico, solo
podrá asaltar a esa unidad en la subsiguiente fase de asalto. Incluso si posee una regla especial que le permite utilizar más de un poder psíquico por turno, un psíquico solo podrá utilizar un proyectil psíquico (igual que las miniaturas
solo pueden disparar un arma de fuego por turno). Sin embargo si puede disparar mas de un arma de fuego por turno, el psíquico puede reemplazar el disparo de una de sus armas por un proyectil psíquico (pero seguirá sin poder usar el mismo poder dos veces en un mismo turno).</description>
    </rule>
    <rule name="Criatura monstruosa" id="bc40-f8c8-be5a-20ac" hidden="false" publicationId="1595-b68b-b80b-025d" page="51">
      <description>Estas aterradoras criaturas son mucho más grandes que sus oponentes. Masacran a los enemigos que se atreven a enfrentarse a ellas y apartan los tanques a manotazos. Entre ellas se encuentran los grandes demonios, los avatares eldars o el temido cárnifex tiránido.


MOVIMIENTO
Todas las criaturas monstruosas poseen la regla especial moverse a través de cobertura (consulta la página 75). Simplemente se abren camino derribando árboles y ruinas.


DISPARO
Las criaturas monstruosas pueden disparar hasta dos armas (una vez cada una) por fase de disparo. De todas maneras, deben disparar las dos armas contra el mismo objetivo. Además, las criaturas monstruosas poseen la regla especial implacables (consulta la página 76).


A menos que una de sus reglas especiales especifique lo contrario, las criaturas monstruosas no pueden tirarse ¡Cuerpo a tierra!, ni voluntariamente ni de ninguna otra forma. Además, una criatura monstruosa debe tener tras una cobertura como mínimo el 50% de su cuerpo (como se explica en la página 16) para considerarse a cubierto desde el punto de vista de la mayoría de las miniaturas que disparan. Además, estar dentro de una escenografía de área no les proporciona automáticamente la tirada de salvación por cobertura (tiene preferencia la regla del 50% del cuerpo). Para ellas, la cobertura funciona de la misma forma que para los vehículos (consulta la página 62). Como siempre, si no sabes si el 50% del cuerpo de la miniatura está a cubierto, deberás disminuir la tirada de salvación por cobertura en -1.


ASALTO
Las heridas infligidas por una criatura monstruosa en combate cuerpo a cuerpo ignoran la tirada de salvación por armadura, igual que un arma de energía. Además, las criaturas monstruosas tiran un dado adicional (2D6 + Fuerza) para determinar si su ataque en combate cuerpo a cuerpo a un vehículo penetra el blindaje.</description>
    </rule>
    <rule name="Unidad retropropulsada" id="d6f4-cfda-75c5-f2f1" hidden="false" publicationId="1595-b68b-b80b-025d" page="51">
      <description>MOVIMIENTO

Las unidades retropropulsadas pueden utilizar sus retrorreactores para moverse un máximo de 30 cm durante la fase de movimiento. Este movimiento es opcional y pueden decidir mover como la infantería normal si lo prefieren. Al utilizar retrorreactores, pueden moverse libremente por encima de otras miniaturas y toda clase de terrenos. Sin embargo, si el movimiento empieza o finaliza en una zona de terreno difícil, la unidad debe efectuar un chequeo por terreno peligroso. Una unidad retropropulsada no puede finalizar su movimiento encima de otra miniatura o de algún elemento que se considere terreno infranqueable, a no ser que sea posible colocar las miniaturas encima. Si lo hacen, el terreno infranqueable se considerará terreno peligroso. Las unidades retropropulsadas pueden entrar en combate utilizando despliegue rápido (consulta la página 95).


Movimiento de retirada
Las unidades retropropulsadas tiran 3D6 al retirarse (3=8 cm, 4=10 cm, 5=12 cm, 6=15 cm, 7=18 cm, 8=20 cm, 9=22 cm, 10=25 cm, 11=28 cm, 12=30 cm, 13=33 cm, 14= 35 cm, 15=38 cm, 16=40 cm, 17=42 cm, 18=45 cm), pues para ello siempre utilizan sus retrorreactores. Pueden moverse sobre cualquier tipo de obstáculo durante la retirada, pero si finalizan su movimiento en terreno difícil (o encima de algún elemento de terreno infranqueable), deberán realizar un chequeo por terreno peligroso. No podrán finalizar su movimiento encima de otras miniaturas, por lo que deberán desviarse lo menos posible en su retirada para evitarlo, como una unidad normal cuando se retira a pie. Si no pueden hacerlo, quedarán atrapados y destruidos.


DISPARAR
Las unidades retropropulsadas siguen las mismas reglas que las unidades de infantería.


ASALTO
Las unidades retropropulsadas asaltan 15 cm, igual que las tropas de infantería. Este movimiento se ve dificultado por el terreno difícil como en el caso de las unidades de infantería, puesto que cubren siempre a pie los últimos metros de un asalto.</description>
    </rule>
    <rule name="Unidad con retrocohetes" id="d1d5-2744-48fb-be81" hidden="false" publicationId="1595-b68b-b80b-025d" page="52">
      <description>Algunas unidades retropropulsadas están equipadas con un tipo especial de retrorreactor denominado &quot;retrocohete&quot;. Los retrocohetes están diseñados como plataformas de disparo estables en vez de como medio para trabarse en combate cuerpo a cuerpo. Los Tau son los que utilizan esta tecnología de manera más habitual. Los retrocohetes se diferencian de los retrorreactores en lo siguiente:

· Las unidades equipadas con retrocohetes solo mueven 15 cm en la fase de movimiento, pero pueden mover otros 15 cm en la fase de asalto incluso si no asaltan. Cuando las unidades que utilizan retrocohetes se mueven en la fase de asalto y no asaltan, considerarán el terreno difícil como las demás unidades retropropulsadas lo hacen en la fase de movimiento.

· Las miniaturas con retrocohetes son implacables (consulta la página 76).</description>
    </rule>
    <rule name="Motocicletas" id="b722-581c-bc45-7f56" hidden="false" publicationId="1595-b68b-b80b-025d" page="53">
      <description>PROTECCIÓN ADICIONAL

Las motocicletas son grandes y sólidas y suelen tener algún blindaje y escudos deflectores para repeler el fuego enemigo. Los motoristas se benefician de esta protección que incrementa su atributo de Resistencia en 1. Ten en cuenta que este incremento no cuenta a la hora de resolver una muerte instantánea (consulta la página 26).


MOVIMIENTO
Las motocicletas pueden mover hasta 30 cm en la fase de movimiento y no ven reducido su movimiento por el terreno difícil. Sin embargo, consideran el terreno difícil como terreno peligroso.


Las motocicletas tienen turbopropulsores (consulta la página 76).


Movimiento de retirada
Puesto que las motocicletas se mueven muy rápido, al retirarse tiran 3D6 en vez de 2D6 (3=8 cm, 4=10 cm, 5=12 cm, 6=15 cm, 7=18 cm, 8=20 cm, 9=22 cm, 10=25 cm,
11=28 cm, 12=30 cm, 13=33 cm, 14= 35 cm, 15=38 cm, 16=40 cm, 17=42 cm, 18=45 cm). Recuerda que consideran el terreno difícil como peligroso.


DISPARO
Las motocicletas no pueden correr en la fase de disparo.


Las motocicletas son implacables (consulta la pág. 76).


Cada motocicleta de la unidad puede disparar un arma por cada motorista que la monte. Por tanto, una motocicleta de ataque de los Marines Espaciales con un conductor y un pasajero en un sidecar podrá disparar dos armas.


ASALTO
El terreno difícil no reduce el movimiento de asalto de las motocicletas. Sin embargo, una miniatura que entre en terreno difícil, se mueva a través de él o asalte a un enemigo que esté en terreno difícil o detrás de un obstáculo, deberá efectuar un chequeo por terreno peligroso.</description>
    </rule>
    <rule name="Motocicletas a reacción" id="6fea-20ca-60b6-f234" hidden="false" publicationId="1595-b68b-b80b-025d" page="53">
      <description>Las motocicletas a reacción se mueven como las motocicletas pero con algunas excepciones:


· En la fase de movimiento, se pueden mover libremente sobre otras miniaturas y todo tipo de terreno. Sin embargo, si se empiezan o acaban su movimiento en terreno difícil, deberán efectuar un chequeo por terreno peligroso. Las motocicletas a reacción no pueden finalizar su movimiento sobre otras miniaturas o sobre terreno infranqueable, a no ser que sea físicamente posible colocarse encima de este, pero si lo hacen considerarán el terreno infranqueable como terreno peligroso.


· En la fase de asalto, actúan como las motocicletas, puesto que deben moverse cerca del suelo para poder luchar.


· Cuando se están retirando, también pueden moverse sobre otras miniaturas y terreno, pero si finalizan su movimiento en terreno difícil (o sobre algún elemento de terreno infranqueable) deben efectuar un chequeo por terreno peligroso. No pueden finalizar su movimiento sobre otras miniaturas, por lo que deberán alterar la dirección de su retirada lo mínimo posible para evitarlo, tal como lo hace una unidad normal cuando se retira a pie. Si no pueden hacerlo, quedan atrapados y son destruidos inmediatamente.


Motocicletas a reacción eldars
Las motocicletas a reacción eldars (incluidas las de los Eldars Oscuros) pueden mover un máximo de 15 cm en la fase de asalto, incluso si no asaltan. Cuando se mueven en la fase de asalto y no asaltan, considerarán el terreno difícil como lo hacen en la fase de movimiento.</description>
    </rule>
    <rule name="Bestias y Caballería" id="1c05-d1e6-a25a-918b" hidden="false" publicationId="1595-b68b-b80b-025d" page="54">
      <description>MOVIMIENTO

Las bestias y la caballería mueven como la infantería.


Movimiento de retirada
Las bestias y la caballería se retiran como la infantería, pero tiran 3D6 (3=8 cm, 4=10 cm, 5=12 cm, 6=15 cm, 7=18 cm, 8=20 cm, 9=22 cm, 10=25 cm, 11=28 cm, 12=30 cm, 13=33 cm, 14= 35 cm, 15=38 cm, 16=40 cm, 17=42 cm, 18=45 cm) debido a su velocidad.


DISPARO
Las bestias no pueden disparar, pero la caballería si, y sigue las mismas reglas que la infantería.


ASALTO
Las bestias y la caballería son veloces (consulta la página 75).


Las bestias y la caballería pueden efectuar un asalto especialmente rápido para cargar contra los enemigos. Al asaltar, pueden mover hasta 30 cm.


Cuando asaltan a través de cobertura, las bestias y la caballería ven reducido su movimiento por el terreno difícil, por lo que se debe tirar un dado para determinar la distancia que pueden moverse, igual que en el caso de la infantería, pero se dobla el resultado mayor obtenido en los dados.


Aparte de eso, asaltan como lo hace la infantería.</description>
    </rule>
    <rule name="Unidad de artillería" id="01b8-b97f-0668-0498" hidden="false" publicationId="1595-b68b-b80b-025d" page="55">
      <description>LA UNIDAD

Las unidades de artillería están formadas por un grupo de soldados (dotación) y la propia arma. Estas unidades son bastante complejas debido a que combinan vehículos e infantería. Las armas se consideran vehículos con Blindaje 10 (consulta la sección Vehículos). Cualquier impacto superficial o interno destruye el cañón (no se efectúa la tirada en las tablas de daños del vehículo, el cañón simplemente se retira). Si todos los miembros de la dotación mueren, los cañones se eliminan inmediatamente.


Algunas veces, el jugador puede añadir líderes u otras miniaturas a la unidad de artillería. Estas miniaturas forman parte de la dotación en todos los sentidos y utilizarán sus armas de la manera habitual, incluso si son ligeramente diferentes al resto de la dotación. Los personajes independientes que se unan a la unidad no contarán como dotación ni podrán usar los cañones.


MOVIMIENTO
El terreno difícil frena el avance de estas unidades como a las de infantería y los cañones deben efectuar un chequeo por terreno peligroso al atravesar este tipo de terreno. En la unidad debe haber al menos un miembro de la dotación por cañón para que la unidad pueda mover; si hay menos, no podrá moverse.


DISPARO
A diferencia de otros vehículos, el cañón no se podrá disparar si la unidad de artillería ha movido en la fase de movimiento. Cualquier miembro de la dotación podrá disparar el cañón, siempre que esté a 5 cm o menos de él. Los miembros de la dotación que disparen el cañón no podrán disparar ninguna otra arma que lleven
encima, mientras que los demás miembros (y cualquier personaje independiente que se haya unido a la unidad) si podrán disparar sus armas, incluso contra un objetivo diferente del del cañón. Los cañones no pueden dividir sus disparos y para disparar tanto el cañón como el miembro de la dotación que dispara deben tener línea de visión al objetivo (a no ser que sean armas de barrera de artillería). El alcance se mide desde el cañón.


Cuando dispares contra una unidad de artillería tira un dado por cada impacto causado: con un resultado de 1-4 el cañón es impactado, mientras que con un resultado de 5-6 es un miembro de la dotación el que resulta impactado. Tira para herir al miembro de la dotación y para penetrar en el blindaje del arma con diferentes tiradas de dados.


Si una unidad de artillería está ¡Cuerpo a tierra!, los cañones de la unidad no tienen protección adicional alguna.


Las unidades de artillería no pueden correr en la fase de disparo.


ASALTO
Las unidades de artillería no pueden asaltar mientras incluyan algún cañón.


Cuando sean asaltadas, desplaza las miniaturas que asaltan hasta estar en contacto con el miembro de la dotación o con el cañón de la forma habitual, pero a partir de ese momento el cañón se ignora. Todos los enemigos trabados tirarán para impactar y para herir contra la dotación (incluso si solo están trabados con el canon). Los miembros de la dotación que estén trabados pueden contraatacar, pero no los cañones.


MORAL Y MOVIMIENTOS DE RETIRADA
Para realizar los chequeos de moral y otros chequeos de liderazgo, y para la resolución del combate, ignora los cañones, como si no estuvieran. Puesto que necesitan
como mínimo un miembro de la dotación por canon para poder mover la unidad, si una unidad de artillería no tiene un miembro por cañón cuando se está retirando, los cañones sin dotación se abandonan y se retiran del tablero. A continuación, el resto de la unidad se retira de la forma habitual. Si una unidad de artillería está obligada a retirarse del combate cuerpo a cuerpo y el enemigo puede realizar una persecución arrolladora, la unidad de artillería puede automáticamente la tirada de iniciativa y es destruida.</description>
    </rule>
  </sharedRules>
  <sharedProfiles>
    <profile id="27f4-3f80-5047-a64a" name="Granadas defensivas" publicationId="1595-b68b-b80b-025d" page="36, 63" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con Granadas defensivas</characteristic>
      </characteristics>
    </profile>
    <profile id="8e64-1c75-85f5-7ac0" name="Arma de energía" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="cdf6-05fb-71d5-1982" typeName="Arma de combate">
      <characteristics>
        <characteristic name="Descripción" typeId="11b5-56ae-f93d-b524">La miniatura se considera equipada con un arma de energía.</characteristic>
      </characteristics>
    </profile>
    <profile id="6fa5-b37d-1b93-9529" name="Granadas de asalto" publicationId="1595-b68b-b80b-025d" page="36, 63" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con Granadas de asalto</characteristic>
      </characteristics>
    </profile>
    <profile id="2434-afee-c960-b04e" name="Arma Psíquica" publicationId="1595-b68b-b80b-025d" page="50" hidden="false" typeId="cdf6-05fb-71d5-1982" typeName="Arma de combate">
      <characteristics>
        <characteristic name="Descripción" typeId="11b5-56ae-f93d-b524">Las Armas Psíquicas se consideran armas de energía.
Adicionalmente, tras realizar las tiradas para impactar, herir y salvaciones invulnerables de la manera habitual, el psíquico deberá realizar un chequeo psíquico para poder utilizar el poder del arma contra un objetivo que haya sufrido al menos una herida de la misma. Deben aplicarse las reglas habituales de los poderes psíquicos, respetando el límite de poderes que el portador puede manifestar a lo largo de su turno. Si el psíquico supera el chequeo, la miniatura enemiga sufrirá una muerte instantanea independientenente de su atributo de Resistencia. Este poder no tiene efecto en miniaturas que son inmunes a la muerte instantanea, Vehículos o cualquier miniatura sin atributo de Heridas.</characteristic>
      </characteristics>
    </profile>
    <profile id="ba22-cd8e-0d95-8e72" name="Retrorreactores" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Las miniaturas equipadas con retrorreactores se consideran unidades retropropulsadas, tal y como se describen en el reglamento de Warhammer 40,000. Además, los Marines Espaciales equipados con retrorreactores pueden saltar desde cañoneras Thunderhawk en vuelo rasante, utilizando sus retrorreactores para descender suavemente hasta el campo de batalla. Para representar esto, estas tropas pueden mantenerse en reserva y entrar en el campo de batalla utilizando las reglas de despliegue rapido (consulta la seccion Reglas Especiales de Misión en el reglamento de Warhammer 40,000).</characteristic>
      </characteristics>
    </profile>
    <profile id="2ce5-817f-85b3-3115" name="Reflector" publicationId="f176-f140-74d8-da7d" page="103" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Los reflectores pueden utilizarse cuando se aplican las reglas de combate nocturno. Si un vehículo dispone de reflector, debera seguir aplicando las reglas de combate nocturno al elegir su objetivo; pero, una vez adquirido un objetivo, lo iluminara con el reflector de forma que, durante el resto de la fase de disparo, cualquier otra unidad que dispare a la unidad iluminada no deberá aplicar la regla de combate nocturno. Sin embargo, el vehiculo que utiliza el reflector podrá ser designado como objetivo en el siguiente turno del enemigo como si las reglas de combate nocturno no estuvieran en efecto, ya que el enemigo puede ver la luz del reflector.</characteristic>
      </characteristics>
    </profile>
    <profile id="88ef-f347-6da1-b41f" name="Granadas Perforantes" publicationId="1595-b68b-b80b-025d" page="36, 63" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con Granadas Perforantes</characteristic>
      </characteristics>
    </profile>
    <profile id="562f-8ac0-91b5-c835" name="Martillo de Trueno" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="cdf6-05fb-71d5-1982" typeName="Arma de combate">
      <characteristics>
        <characteristic name="Descripción" typeId="11b5-56ae-f93d-b524">Un Martillo de Trueno es un arma de energía que duplica la fuerza del usuario al igual que un puño de combate. Adicionalmente, las miniaturas que no mueran tras recibir al menos una herida por un Martillo de Trueno quedarán aturdidas y verán su Iniciativa reducida a 1 hasta el final del siguiente turno del jugador. Contra los Vehículos sin Iniciativa, los ataques que no inflinjan ningún daño, también inflingirán un resultado de Tripulación Acobardada.</characteristic>
      </characteristics>
    </profile>
    <profile id="dfa9-ab46-df3f-727f" name="Puño de Combate" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="cdf6-05fb-71d5-1982" typeName="Arma de combate">
      <characteristics>
        <characteristic name="Descripción" typeId="11b5-56ae-f93d-b524">Un puño de combate (o &quot;garra de combate&quot;) es un guantelete blindado rodeado de un campo disruptor de energía. Un puno de combate es un arma de energía que dobla la
Fuerza original de quien la usa (hasta un máximo de 10). No obstante, los punos de combate son difíciles y pesados de manejar, por lo que una miniatura equipada con un
puño de combate siempre atacará con Iniciativa 1 (ignora cualquier bonificación a la Iniciativa por reglas especiales, equipo, etc.).</characteristic>
      </characteristics>
    </profile>
    <profile id="729e-f6e7-1eea-7223" name="Cuchillas Relámpago" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="cdf6-05fb-71d5-1982" typeName="Arma de combate">
      <characteristics>
        <characteristic name="Descripción" typeId="11b5-56ae-f93d-b524">Una cuchilla relámpago es un arma de energía que, además, permiten repetir cualquier tirada para herir fallida.</characteristic>
      </characteristics>
    </profile>
    <profile id="931c-06e0-1d62-e106" name="Armas Envenenadas" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Las armas envenenadas van desde espadas recubiertas de veneno a garras hipodermicas. No se basan en la comparación de la Fuerza con la Resistencia para herir, sino que
siempre hieren con un número fijo, generalmente indicado entre paréntesis. En la mayoría de casos es 4+. Algunos venenos son tan letales que pueden llegar a matar con una
sola gota (hieren con un 3+, incluso con un 2+, como se describe en el codex correspondiente). Además, si la Fuerza del soldado es igual o superior a la Resistencia de la vícti
ma, el soldado podrá repetir las tiradas para herir fallidas en combate cuerpo a cuerpo. Estas armas no tienen ventajas contra los vehículos.</characteristic>
      </characteristics>
    </profile>
    <profile id="59f3-98ac-9e4f-1169" name="Descargadores de Humo" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">El vehículo cuenta con Descargadores de Humo</characteristic>
      </characteristics>
    </profile>
    <profile id="dbc6-a593-44fa-6777" name="Arma de combate cuerpo a cuerpo para Dreadnoughts" publicationId="1595-b68b-b80b-025d" page="73" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Un arma de combate cuerpo a cuerpo de un dreadnought es un arma de energía y dobla la Fuerza del bípode en combate cuerpo a cuerpo (hasta un máximo de 10).

Si el bípode sufre un resultado de armamento destruido y el jugador elige el arma de combate cuerpo a cuerpo, el bípode pierde los modificadores conferidos
por el arma de combate cuerpo a cuerpo del dreadnought (y los de cualquier otra arma que lleve fijada en el mismo brazo).

Si un bípode está armado con dos o más armas de combate cuerpo a cuerpo, obtiene un modificador al Ataque por cada arma adicional tras la primera. Si una de sus armas adicionales resulta destruida, se pierde el modificador al ataque.</characteristic>
      </characteristics>
    </profile>
    <profile id="178c-4e2d-91ce-bc1b" name="Bomba de Fusión" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con Bombas de Fusión</characteristic>
      </characteristics>
    </profile>
    <profile name="Arma de combate cuerpo a cuerpo" typeId="cdf6-05fb-71d5-1982" typeName="Arma de combate" hidden="false" id="232a-872d-f770-2ce7">
      <characteristics>
        <characteristic name="Descripción" typeId="11b5-56ae-f93d-b524"/>
      </characteristics>
    </profile>
    <profile name="Blindaje adicional" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo" hidden="false" id="cf47-2dba-970c-bb92">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Los vehículos equipados con blindaje adicional cuentan los resultados de Tripulación aturdida de la tabla de daños en vehículos como si fueran resultados de Tripulación acobardada.</characteristic>
      </characteristics>
    </profile>
    <profile name="Reparación" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo" hidden="false" id="2041-9c89-a1d7-51f3">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">si un Rhino está inmovilizado por cualquier razón, su tripulación puede intentar reparar el vehículo en turnos siguientes en vez de disparar el armamento del vehículo. Tira 1D6 en la fase de Disparo; con un resultado de 6 el vehículo deja de estar inmovilizado.</characteristic>
      </characteristics>
    </profile>
    <profile name="Pala excavadora" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo" hidden="false" id="cc87-4ebb-33bb-a377">
      <characteristics>
        <characteristic name="Descripción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Los vehículos equipados con palas excavadoras podrán repetir los chequeos fallidos de Terreno Difícil.</characteristic>
      </characteristics>
    </profile>
    <profile name="Misil cazador asesino" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma" hidden="false" id="fffa-5f18-59af-8106">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">Ilimitado</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">8</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">3</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 1, Un solo uso</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
  <sharedInfoGroups>
    <infoGroup id="f5e9-e97c-ca02-307d" name="Granadas defensivas" hidden="false">
      <infoLinks>
        <infoLink id="ac3d-01f3-1a4a-ac2c" name="Granadas defensivas" hidden="false" targetId="e4b4-fbcb-fe82-edaf" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="a9de-5c4c-d2c8-6676" name="Granadas de asalto" hidden="false">
      <infoLinks>
        <infoLink id="5445-7aa1-0d07-700a" name="Granadas de asalto" hidden="false" targetId="b1c6-9a9a-fc08-321d" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="d148-5cd0-877e-b38d" name="Arma de energía" hidden="false">
      <infoLinks>
        <infoLink id="4a4e-6780-865c-d008" name="Energía" hidden="false" targetId="2528-3f58-a823-5b4a" type="rule"/>
        <infoLink id="7b42-ac58-aac2-ccce" name="Arma de energía" hidden="false" targetId="8e64-1c75-85f5-7ac0" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="ee91-b32d-2d83-a10e" name="Retrorreactores" hidden="false">
      <infoLinks>
        <infoLink id="f63e-0d79-32a0-bcee" name="Despliegue Rápido" hidden="false" targetId="e73e-593a-922e-a47a" type="rule"/>
        <infoLink id="0fe2-8bd0-0f32-1286" name="Retrorreactores" hidden="false" targetId="ba22-cd8e-0d95-8e72" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="343c-e366-59e5-f8f8" name="Bomba de Fusión" hidden="false">
      <infoLinks>
        <infoLink id="907f-c9fe-4da3-c4fa" name="Bomba de Fusión" hidden="false" targetId="178c-4e2d-91ce-bc1b" type="profile"/>
        <infoLink id="a772-52ac-3c60-0643" name="Granada" hidden="false" targetId="6548-d2e6-6a0b-555b" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="5013-1b13-3fea-2166" name="Granadas Perforantes" hidden="false">
      <infoLinks>
        <infoLink id="0875-9818-e611-df77" name="Granadas Perforantes" hidden="false" targetId="0903-3583-24c6-b52c" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="3917-3cbb-258b-1f99" name="Cuchillas Relámpago" hidden="false">
      <infoLinks>
        <infoLink id="afed-f0dc-8f7e-1c5b" name="Cuchillas Relámpago" hidden="false" targetId="729e-f6e7-1eea-7223" type="profile"/>
        <infoLink id="323e-03f5-339a-d685" name="Energía" hidden="false" targetId="2528-3f58-a823-5b4a" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="25b3-7b9d-199b-6d35" name="Puño de Combate" hidden="false">
      <infoLinks>
        <infoLink id="9f17-21e9-4a36-8c0e" name="Puño de Combate" hidden="false" targetId="dfa9-ab46-df3f-727f" type="profile"/>
        <infoLink id="c6f4-7fe0-1a3d-8103" name="Energía" hidden="false" targetId="2528-3f58-a823-5b4a" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="2f30-354a-4687-ab1f" name="Martillo de Trueno" hidden="false">
      <infoLinks>
        <infoLink id="f599-73ab-e50d-4bde" name="Martillo de Trueno" hidden="false" targetId="562f-8ac0-91b5-c835" type="profile"/>
        <infoLink id="9d9f-7a74-9d86-06dd" name="Energía" hidden="false" targetId="2528-3f58-a823-5b4a" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="3bba-24a9-ee2c-c073" name="Arma Psíquica" hidden="false">
      <infoLinks>
        <infoLink id="4990-3307-d7be-b7ce" name="Arma Psíquica" hidden="false" targetId="2434-afee-c960-b04e" type="profile"/>
        <infoLink id="79a8-f3ff-c290-6f20" name="Energía" hidden="false" targetId="2528-3f58-a823-5b4a" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="5f5d-9bd0-13e1-801b" name="Arma de combate cuerpo a cuerpo para Dreadnoughts" publicationId="1595-b68b-b80b-025d" page="73" hidden="false">
      <infoLinks>
        <infoLink id="6581-73e1-7d5d-b17a" name="Energía" hidden="false" targetId="2528-3f58-a823-5b4a" type="rule"/>
        <infoLink id="4815-75fa-8f1d-b3bd" name="Arma de combate cuerpo a cuerpo para Dreadnoughts" hidden="false" targetId="dbc6-a593-44fa-6777" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="8194-3b3c-a8d5-412c" name="Descargadores de Humo" hidden="false">
      <infoLinks>
        <infoLink id="dc93-d483-1f40-2867" name="Descargadores de Humo" hidden="false" targetId="7654-3d41-1fbd-d710" type="rule"/>
        <infoLink id="27b8-65b1-5b38-10be" name="Descargadores de Humo" hidden="false" targetId="59f3-98ac-9e4f-1169" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup name="Arma de combate cuerpo a cuerpo" id="613c-90cb-5674-bf95" hidden="false">
      <infoLinks>
        <infoLink name="Arma de combate cuerpo a cuerpo" id="e131-129a-eca1-693a" hidden="false" type="profile" targetId="232a-872d-f770-2ce7"/>
        <infoLink name="Arma de Combate Cuerpo a Cuerpo" id="dd79-0106-1386-64ee" hidden="false" type="rule" targetId="1e15-345f-8925-f91b"/>
      </infoLinks>
    </infoGroup>
    <infoGroup name="Criatura monstruosa" id="0cf1-0713-bbc8-cbdc" hidden="false">
      <infoLinks>
        <infoLink name="Criatura monstruosa" id="bbc1-8276-7e27-bd2d" hidden="false" type="rule" targetId="bc40-f8c8-be5a-20ac"/>
        <infoLink name="Implacables" id="04d9-fffc-61b8-f48b" hidden="false" type="rule" targetId="470c-bf6a-caae-15c9"/>
        <infoLink name="Moverse a Través de Cobertura" id="3696-a02f-5f67-70f9" hidden="false" type="rule" targetId="6cf1-d139-8b14-6083"/>
      </infoLinks>
    </infoGroup>
    <infoGroup name="Unidad retropropulsada" id="9cdf-bda3-6dab-3a27" hidden="false">
      <infoLinks>
        <infoLink name="Unidad retropropulsada" id="3ba0-9233-356e-ffda" hidden="false" type="rule" targetId="d6f4-cfda-75c5-f2f1"/>
      </infoLinks>
    </infoGroup>
    <infoGroup name="Motocicletas" id="8f6f-a28c-d5e4-9511" hidden="false">
      <infoLinks>
        <infoLink name="Turbopropulsores" id="92a8-1a53-e969-bd34" hidden="false" type="rule" targetId="146e-d4a2-283a-f0f5"/>
        <infoLink name="Motocicletas" id="74b7-f4cf-cf7f-acfe" hidden="false" type="rule" targetId="b722-581c-bc45-7f56"/>
        <infoLink name="Implacables" id="b5fc-d45f-86d9-c76f" hidden="false" type="rule" targetId="470c-bf6a-caae-15c9"/>
      </infoLinks>
    </infoGroup>
    <infoGroup name="Unidad con retrocohetes" id="7808-b8a7-4247-8b91" hidden="false">
      <infoLinks>
        <infoLink name="Unidad con retrocohetes" id="1333-b311-ed43-31d1" hidden="false" type="rule" targetId="d1d5-2744-48fb-be81"/>
        <infoLink name="Unidad retropropulsada" id="c496-6f47-6bef-57e7" hidden="false" type="infoGroup" targetId="9cdf-bda3-6dab-3a27"/>
        <infoLink name="Implacables" id="a501-0094-339e-337f" hidden="false" type="rule" targetId="470c-bf6a-caae-15c9"/>
      </infoLinks>
    </infoGroup>
    <infoGroup name="Motocicletas a reacción" id="3c91-d34e-f3b2-7232" hidden="false">
      <infoLinks>
        <infoLink name="Motocicletas a reacción" id="3ed5-efb8-8942-b504" hidden="false" type="rule" targetId="6fea-20ca-60b6-f234"/>
        <infoLink name="Motocicletas" id="a0df-da20-f975-824d" hidden="false" type="infoGroup" targetId="8f6f-a28c-d5e4-9511"/>
      </infoLinks>
    </infoGroup>
    <infoGroup name="Bestias y Caballería" id="0859-a7ad-262b-1463" hidden="false">
      <infoLinks>
        <infoLink name="Bestias y Caballería" id="bc32-d5ba-3a3e-9cdb" hidden="false" type="rule" targetId="1c05-d1e6-a25a-918b"/>
        <infoLink name="Veloces" id="bb54-fdf6-ef5b-5ef7" hidden="false" type="rule" targetId="d110-fc1c-250c-54d4"/>
      </infoLinks>
    </infoGroup>
    <infoGroup name="Unidad de artillería" id="6f86-bf95-0deb-ce1e" hidden="false">
      <infoLinks>
        <infoLink name="Unidad de artillería" id="6b6d-ae76-cdfe-57c8" hidden="false" type="rule" targetId="01b8-b97f-0668-0498"/>
      </infoLinks>
    </infoGroup>
    <infoGroup name="Enjambres" id="1587-f21a-885c-baf3" hidden="false">
      <infoLinks>
        <infoLink name="Enjambres" id="7a98-eaac-ed37-9615" hidden="false" type="rule" targetId="4614-34c7-8574-6faf"/>
        <infoLink name="Sigilo" id="6975-8eba-35cf-140c" hidden="false" type="rule" targetId="f1ee-e19a-a3c3-6797"/>
        <infoLink name="Vulnerable a las Explosiones" id="361f-f888-4d14-956b" hidden="false" type="rule" targetId="394d-92aa-234a-d417"/>
      </infoLinks>
    </infoGroup>
  </sharedInfoGroups>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Misil cazador asesino" hidden="false" id="f4a3-48a3-bdaf-c717">
      <infoLinks>
        <infoLink name="Misil cazador asesino" id="3649-a4c3-f338-143c" hidden="false" type="profile" targetId="fffa-5f18-59af-8106"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry type="upgrade" import="true" name="Blindaje adicional" hidden="false" id="9694-1ee2-7ee4-b8ee">
      <infoLinks>
        <infoLink name="Blindaje adicional" id="0d16-f1b1-d26c-b577" hidden="false" type="profile" targetId="cf47-2dba-970c-bb92"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry type="upgrade" import="true" name="Reflector" hidden="false" id="c1ac-63b0-b525-40b4">
      <infoLinks>
        <infoLink name="Reflector" id="c419-7827-a6bf-2e4b" hidden="false" type="profile" targetId="2ce5-817f-85b3-3115"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry type="upgrade" import="true" name="Descargadores de humo" hidden="false" id="236b-e147-1f64-7edc">
      <infoLinks>
        <infoLink name="Descargadores de Humo" id="f891-bffa-71a8-d2f1" hidden="false" type="profile" targetId="59f3-98ac-9e4f-1169"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry type="upgrade" import="true" name="Pala excavadora" hidden="false" id="f2a9-ff54-43f1-b5a8">
      <infoLinks>
        <infoLink name="Pala excavadora" id="cd63-d6d7-6ed2-0262" hidden="false" type="profile" targetId="cc87-4ebb-33bb-a377"/>
      </infoLinks>
    </selectionEntry>
  </sharedSelectionEntries>
</gameSystem>
