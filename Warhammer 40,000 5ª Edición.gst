<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="8cf6-c83d-3eeb-e95c" name="Warhammer 40,000 5ª Edición " revision="6" battleScribeVersion="2.03" authorName="Diego Muñiz" authorContact="Club Panzerhammer: panzerhammerwargamesclub@gmail.com  csddmv@gmail.com" authorUrl="csddmv@gmail.com" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <readme>Esto es for fun. Cualquier error o sugerencia serán bienvenidas

En este sistema se agruparán el sistema de Warhammer 40000 5ª edición, así como todos los los codex que se usarán en este sistema cerrado.</readme>
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
  </publications>
  <costTypes>
    <costType id="puntos" name="Pts" defaultCostLimit="0.0" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="2d6001b0-980e-46d2-bcc2-a9fc60109afd" name="Unidad">
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
    <profileType id="725a358c-765b-498c-8de5-399fc0c0725f" name="Vehículo">
      <characteristicTypes>
        <characteristicType id="f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5" name="HP"/>
        <characteristicType id="8cdd4fef-d1ba-4007-992c-b6f93e86d43f" name="Frontal"/>
        <characteristicType id="5f9a3780-eecb-4c70-be1d-e5bd06b06e9e" name="Lateral"/>
        <characteristicType id="0a9f33cb-0412-420a-89d2-20707c360bd2" name="Posterior"/>
        <characteristicType id="077c342f-d7b9-45c6-b8af-88e97cafd3a2" name="Tipo"/>
      </characteristicTypes>
    </profileType>
    <profileType id="3dadd2ff-33f1-41dd-85c7-bee5a7dfa413" name="Bípode">
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
    <profileType id="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" name="Arma">
      <characteristicTypes>
        <characteristicType id="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464" name="Alcance"/>
        <characteristicType id="a6383362-5aa8-4ff0-b1d0-00e059fc9d45" name="F"/>
        <characteristicType id="6abee736-f8d3-498e-97ac-a5c68445609f" name="FP"/>
        <characteristicType id="077c342f-d7b9-45c6-b8af-88e97cafd3a2" name="Tipo"/>
      </characteristicTypes>
    </profileType>
    <profileType id="72c5eafc-75bf-4ed9-b425-78009f1efe82" name="Equipo">
      <characteristicTypes>
        <characteristicType id="21befb24-fc85-4f52-a745-64b2e48f8228" name="Descripcción"/>
      </characteristicTypes>
    </profileType>
    <profileType id="286c-0cd4-7630-47d0" name="Edificio">
      <characteristicTypes>
        <characteristicType id="83f8-a458-93f9-3e46" name="Blindaje"/>
        <characteristicType id="0e9c-76b3-2877-614d" name="Capacidad"/>
        <characteristicType id="13de-08da-586d-f7c0" name="Puntos de Acceso"/>
        <characteristicType id="0767-d18e-a48d-3b39" name="Puntos de Disparo"/>
        <characteristicType id="ff97-f5f0-521b-eaf4" name="Tipo"/>
      </characteristicTypes>
    </profileType>
    <profileType id="ae70-4738-0161-bec0" name="Poder Psíquico">
      <characteristicTypes>
        <characteristicType id="fd64-cbc4-94de-24cc" name="Alcance"/>
        <characteristicType id="ad96-dfa4-b4ed-656d" name="Detalles"/>
      </characteristicTypes>
    </profileType>
    <profileType id="9c33-b0c8-74bd-e5a7" name="Poder Psíquico (Proyectil)">
      <characteristicTypes>
        <characteristicType id="5bf6-378a-0cb7-b079" name="Alcance"/>
        <characteristicType id="12da-9b3e-f37b-bc35" name="F"/>
        <characteristicType id="10b5-aa5b-ccde-79cc" name="FP"/>
        <characteristicType id="20e7-cbcb-1781-a732" name="Tipo"/>
        <characteristicType id="a812-390d-dff6-dabd" name="Detalles"/>
      </characteristicTypes>
    </profileType>
    <profileType id="c970-b832-a956-1ac8" name="Habilidad">
      <characteristicTypes>
        <characteristicType id="917b-713d-7c3d-7a9e" name="Descripción"/>
      </characteristicTypes>
    </profileType>
    <profileType id="d12a-b581-e1f4-1193" name="Transporte">
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
        <categoryLink id="c43c-bef7-5416-465c" name="CG" hidden="false" targetId="dd59-30d7-da4f-6ea4" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5c15-a06e-e008-2bf7" type="min"/>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="da7e-d1f2-0445-9e2a" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="0e02-60a7-050b-b42f" name="Linea" hidden="false" targetId="1ebf-bf5c-b1c9-eb84" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c894-4c0a-7aaa-19c7" type="min"/>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3f2e-a194-8dd8-f2b4" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="e62c-770a-568a-e93c" name="Élite" hidden="false" targetId="cf43-5aa1-0e52-25d7" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6aeb-08bf-a051-e16a" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="c430-acd7-8bff-78c5" name="Ataque Rápido" hidden="false" targetId="f5d9-d854-c8fa-782b" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a3d3-b5cb-a8ba-b180" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="0620-d50d-9a6d-123c" name="Apoyo Pesado" hidden="false" targetId="1267-e587-8ef8-b252" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ab9d-e6e8-17b8-af1e" type="max"/>
          </constraints>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
    <forceEntry id="41e7-39b7-0228-e766" name="Muerte en las Calles" hidden="false">
      <categoryLinks>
        <categoryLink id="6e724632-cf44-9d21-8f7a-c05fff71b966-ff36a6f3-19bf-4f48-8956-adacfd28fe74" name="No Force Org Slot" hidden="false" targetId="ff36a6f3-19bf-4f48-8956-adacfd28fe74" primary="false"/>
      </categoryLinks>
    </forceEntry>
    <forceEntry id="d48c-a71b-2cd9-c8e6" name="Apocalipsis" hidden="false">
      <categoryLinks>
        <categoryLink id="2ab3ec2f-b302-e8d0-fcd4-4d3d19033c54-ff36a6f3-19bf-4f48-8956-adacfd28fe74" name="No Force Org Slot" hidden="false" targetId="ff36a6f3-19bf-4f48-8956-adacfd28fe74" primary="false"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <sharedSelectionEntries>
    <selectionEntry id="29e5-eb99-563b-681b" name="CG" hidden="true" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8437-eb4f-e864-0858" type="max"/>
      </constraints>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="030d-a973-2604-0b66" name="Apoyo Pesado" hidden="true" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a51b-f073-3b6f-5a2d" type="max"/>
      </constraints>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="4acc-8e07-b1d5-49ac" name="Ataque Rápido" hidden="true" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cfe9-37d5-667b-6711" type="max"/>
      </constraints>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="c6e2-f98a-521e-3114" name="Élite" hidden="true" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f58d-55de-c088-3458" type="max"/>
      </constraints>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b87a-70ba-e34c-2d0d" name="Linea" hidden="true" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="86e6-6f9a-ea5e-cc24" type="max"/>
      </constraints>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
  </sharedSelectionEntries>
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
    <rule id="7097-6879-0d11-787d" name="Aceradas" publicationId="1595-b68b-b80b-025d" page="31" hidden="false">
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
      <description>Los Puños o Garras de Combate, se consideran armas de Energía que doblan la Fuerza del portador, hasta un máximo de 10.
Adicionalmente, la iniciativa de la miniatura que porta el arma pasará a ser 1 siempre que realice ataques con esta arma.</description>
    </rule>
    <rule id="a887-a454-c960-3c1f" name="Martillo Trueno" publicationId="1595-b68b-b80b-025d" page="42" hidden="false">
      <description>Los martillos trueno se consideran Puños de Combate ( Energía, F X2, I 1) y adicionalmente todas las miniaturas heridas con un martillo trueno se reducirá a 1 hasta el final del siguiente turno del jugador.</description>
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
    <rule id="61b4-c5bb-9d85-8506" name="Personaje independiente" publicationId="1595-b68b-b80b-025d" page="47" hidden="false"/>
    <rule id="b1c6-9a9a-fc08-321d" name="Granadas de asalto" publicationId="1595-b68b-b80b-025d" page="36" hidden="false">
      <description>Las miniaturas equipadas con granadas de asalto no sufren el penalizador por asaltar a un enemigo a cubierto.</description>
    </rule>
    <rule id="e4b4-fbcb-fe82-edaf" name="Granadas defensivas" publicationId="1595-b68b-b80b-025d" page="36" hidden="false">
      <description>Las unidades que asalten a unidades equipadas con granadas defensivas no ontienen ninguna bonificación por asalto, a no ser que estuviera ya trabada en un turno anterior o estubiera ¡Cuerpo a Tierra! en el momento de ser asaltada.</description>
    </rule>
    <rule id="e73e-593a-922e-a47a" name="Despliegue Rápido" hidden="false"/>
  </sharedRules>
  <sharedProfiles>
    <profile id="27f4-3f80-5047-a64a" name="Granadas defensivas" publicationId="1595-b68b-b80b-025d" page="36" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con Granadas defensivas</characteristic>
      </characteristics>
    </profile>
    <profile id="8e64-1c75-85f5-7ac0" name="Arma de energía" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Las miniatura se considera equipada con un arma de energía.</characteristic>
      </characteristics>
    </profile>
    <profile id="6fa5-b37d-1b93-9529" name="Granadas de asalto" publicationId="1595-b68b-b80b-025d" page="36" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con Granadas de asalto</characteristic>
      </characteristics>
    </profile>
    <profile id="6bed-df85-7d9c-528d" name="Bombas de fusión" publicationId="1595-b68b-b80b-025d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con Bombas de fusión</characteristic>
      </characteristics>
    </profile>
    <profile id="3030-7382-5979-600a" name="Pistola de Fusión" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">15cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">8</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">1</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pistola, Fusión</characteristic>
      </characteristics>
    </profile>
    <profile id="1efa-e99d-3f88-fa1c" name="Arma de combate cuerpo a cuerpo" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con un arma de combate cuerpo a cuerpo</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
  <sharedInfoGroups>
    <infoGroup id="f5e9-e97c-ca02-307d" name="Granadas defensivas" hidden="false">
      <infoLinks>
        <infoLink id="81f7-905e-8dd3-6f51" name="Granadas defensivas" hidden="false" targetId="27f4-3f80-5047-a64a" type="profile"/>
        <infoLink id="ac3d-01f3-1a4a-ac2c" name="Granadas defensivas" hidden="false" targetId="e4b4-fbcb-fe82-edaf" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="a9de-5c4c-d2c8-6676" name="Granadas de asalto" hidden="false">
      <infoLinks>
        <infoLink id="9e43-dffe-021f-e777" name="Granadas de asalto" hidden="false" targetId="6fa5-b37d-1b93-9529" type="profile"/>
        <infoLink id="5445-7aa1-0d07-700a" name="Granadas de asalto" hidden="false" targetId="b1c6-9a9a-fc08-321d" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="d148-5cd0-877e-b38d" name="Arma de energía" hidden="false">
      <infoLinks>
        <infoLink id="4a4e-6780-865c-d008" name="Energía" hidden="false" targetId="2528-3f58-a823-5b4a" type="rule"/>
        <infoLink id="8b01-dcbd-1fb2-0e29" name="Arma de energía" hidden="false" targetId="8e64-1c75-85f5-7ac0" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="a4a2-ca3c-990f-6265" name="Pistola de Fusión" hidden="false">
      <infoLinks>
        <infoLink id="6a32-16ce-223c-a8d9" name="Pistola de Fusión" hidden="false" targetId="3030-7382-5979-600a" type="profile"/>
        <infoLink id="2817-5730-68b8-19d5" name="Pistola" hidden="false" targetId="ff92-d10b-2808-eb79" type="rule"/>
        <infoLink id="495a-f917-7b3b-7fb0" name="Fusión" hidden="false" targetId="2d66-d516-2bf5-5751" type="rule"/>
      </infoLinks>
    </infoGroup>
  </sharedInfoGroups>
</gameSystem>