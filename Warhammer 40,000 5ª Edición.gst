<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="8cf6-c83d-3eeb-e95c" name="Warhammer 40,000 5ª Edición " revision="7" battleScribeVersion="2.03" authorName="Diego Muñiz" authorContact="Club Panzerhammer: panzerhammerwargamesclub@gmail.com  csddmv@gmail.com" authorUrl="csddmv@gmail.com" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
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
        <categoryLink id="267a-3e9a-654e-fa91" name="Personaje Especial" hidden="false" targetId="ee338739-6edf-4620-a2cc-f38d5dd21606" primary="false"/>
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
    <selectionEntry id="030d-a973-2604-0b66" name="Lanzallamas" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4ac4-b4f6-8db0-059c" name="Lanzallamas" hidden="false" targetId="df4b-fc7e-991e-2ce4" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="48a3-adbd-01b3-d460" name="Combilanzallamas" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="fb8d-8f9d-f00a-ee42" name="Combilanzallamas" hidden="false" targetId="85c8-2a1f-938d-147d" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8a83-fbea-b45a-8e73" name="Rifle de Fusión" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6cd2-35ec-8c2c-5e87" name="Rifle de Fusión" hidden="false" targetId="1f94-65f0-6cf5-5997" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="5f5f-4bb9-ba56-c67b" name="Pistola de Fusión" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d40b-5a46-e52c-9907" name="Pistola de Fusión" hidden="false" targetId="a4a2-ca3c-990f-6265" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="3bdc-d68e-647e-8fe8" name="Pistola de Plasma" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1948-12e8-da8c-3734" name="Pistola de Plasma" hidden="false" targetId="7ab5-7984-af7d-f5c0" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="1847-9bf4-2a1b-75fc" name="Combifusión" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="2350-a8f0-2aaa-72a2" name="Combifusión" hidden="false" targetId="d323-9a7c-50ee-c319" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="4cb7-a555-7c31-f580" name="Combiplasma" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="108a-4747-65db-50f6" name="Combiplasma" hidden="false" targetId="4853-dd70-590e-1770" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="510e-1957-dafb-cb26" name="Puño de Combate" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="62ff-f4e9-116d-1b8f" name="Puño de Combate" hidden="false" targetId="25b3-7b9d-199b-6d35" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="61d0-7f59-f1d2-c950" name="Cañón de Fusión" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="26ce-8d73-15ce-1e58" name="Cañón de Fusión" hidden="false" targetId="6227-1328-9375-e3f1" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="9da1-bc83-3f4c-9273" name="Pistola Bolter" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="da03-250d-0e3f-726f" name="Pistola Bolter" hidden="false" targetId="ac8a-08c7-c65f-f8ac" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="5c8c-6baa-011e-146b" name="Arma de energía" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b856-6780-24a9-f208" name="Arma de energía" hidden="false" targetId="d148-5cd0-877e-b38d" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="fcd6-0249-2773-010a" name="Bolter Pesado" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="102d-b2e5-b2ec-845d" name="Bolter Pesado" hidden="false" targetId="12cd-cd02-44d2-3fc8" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="2611-875a-822d-661e" name="Martillo de Trueno" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8435-13f9-493f-c5a5" name="Martillo de Trueno" hidden="false" targetId="2f30-354a-4687-ab1f" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="1dec-d26f-17be-095a" name="Bolter" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a233-43c9-77f4-2a5f" name="Bolter" hidden="false" targetId="40c7-cb9b-c278-04f7" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="41b7-1209-3158-f0a8" name="Espada Sierra" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4824-ab34-3032-8c98" name="Espada Sierra" hidden="false" targetId="2d0b-76e6-9ce1-0890" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b78b-12bb-f14a-d4c7" name="Bolter de Asalto" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6495-8f96-bbcb-9aad" name="Bolter de Asalto" hidden="false" targetId="0fd5-a425-7f84-efce" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="54af-bc17-717b-3f62" name="Escudo de Tormenta" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="735c-45d0-ff19-b699" name="Escudo de Tormenta" hidden="false" targetId="5aa5-2d1e-ce0c-f49b" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="4053-85f1-1400-2404" name="Escudo de Combate" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="06a8-ca18-4f9d-937d" name="Escudo de Combate" hidden="false" targetId="27fb-5d49-623d-e7d4" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="25db-d67e-1fd2-9a04" name="Bombas de Fusión" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1407-32d9-1ae0-20e9" name="Bomba de Fusión" hidden="false" targetId="343c-e366-59e5-f8f8" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="650d-89d1-6808-d14d" name="Cuchilla Relámpago" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d41f-7927-e659-a07b" name="Cuchillas Relámpago" hidden="false" targetId="3917-3cbb-258b-1f99" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="a4f2-2f35-df77-5f31" name="Puño Sierra" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9c03-90e6-60d7-f5cb" name="Puño Sierra" hidden="false" targetId="4ad6-a7b9-4380-d6cb" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="e38f-c8d7-d4fb-9bdc" name="Rhino" hidden="false" collective="false" import="true" type="model">
      <infoLinks>
        <infoLink id="c14b-309a-cda9-a180" name="Rhino" hidden="false" targetId="e9e0-c36a-4116-d3c7" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="9a37-bc3b-1a04-f114" name="Razorback" hidden="false" collective="false" import="true" type="model">
      <infoLinks>
        <infoLink id="5db0-e47d-d68a-7350" name="Razorback" hidden="false" targetId="84ce-9822-b073-8524" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="2526-7732-5148-fa72" name="Cápsula de Desembarco" hidden="false" collective="false" import="true" type="model">
      <infoLinks>
        <infoLink id="0d9d-e776-706b-2e3b" name="Cápsula de Desembarco" hidden="false" targetId="c39d-016b-8f46-4e1c" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="48ec-6833-075c-c2e8" name="Pala Excavadora" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="ed61-7e5a-295a-517e" name="Pala Excavadora" hidden="false" targetId="5120-1c08-7db5-8808" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="15d1-7866-9f72-4776" name="Misil Cazador Asesino" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9d50-c786-343e-745a" name="Misil Cazador Asesino" hidden="false" targetId="3c78-b4c4-5e08-b14a" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="5210-a9e7-eb35-7a86" name="Reflector" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="721c-3653-bdf9-ea36" name="Reflector" hidden="false" targetId="2ce5-817f-85b3-3115" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="6986-f71c-8e1d-d6c7" name="Blindaje Adicional" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b391-0175-a3be-8e09" name="Blindaje Adicional" hidden="false" targetId="dcd2-7fb2-d3a9-8f3d" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="a490-5fee-6a8b-3922" name="Cañón Láser" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0656-0141-fa33-dd0f" name="Cañón Láser" hidden="false" targetId="fb4a-a75e-cc5e-cca3" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="aaf3-e120-b51c-e99e" name="Lanzallamas Pesado" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="636f-dca6-0d15-3819" name="Lanzallamas Pesado" hidden="false" targetId="1f93-cb42-10a7-7475" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="80bf-3866-7147-a98a" name="Cañón de Asalto" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="2e33-c067-f7ca-17be" name="Cañón de Asalto" hidden="false" targetId="cc2e-7a37-3344-5b2a" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="7494-23b0-6fa2-cdf4" name="Rifle de Plasma" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9644-9ab2-e250-7ef8" name="Rifle de Plasma" hidden="false" targetId="88f3-7ccf-3af4-00c9" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="252e-7b2f-de47-a082" name="Cañón de Plasma" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c57e-5a30-2a3b-1ef7" name="Cañón de Plasma" hidden="false" targetId="3e15-1a75-e024-0ffd" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="fa18-1ef5-3c47-9c22" name="Bolter Pesado Acoplado" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b3eb-9d1a-43b7-6e38" name="Bolter Pesado" hidden="false" targetId="12cd-cd02-44d2-3fc8" type="infoGroup"/>
        <infoLink id="de33-920d-eabf-6c25" name="Acoplada" hidden="false" targetId="a06f-e29d-bcf4-ed75" type="rule"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="ae46-8833-d9d3-d03a" name="Cañón de Asalto Acoplado" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8515-898b-50f5-e9c8" name="Cañón de Asalto" hidden="false" targetId="cc2e-7a37-3344-5b2a" type="infoGroup"/>
        <infoLink id="5522-7538-9462-e0c4" name="Acoplada" hidden="false" targetId="a06f-e29d-bcf4-ed75" type="rule"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8ee4-dc6f-50d8-f760" name="Cañón Láser Acoplado" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="730d-7547-74d4-1ecd" name="Cañón Láser" hidden="false" targetId="fb4a-a75e-cc5e-cca3" type="infoGroup"/>
        <infoLink id="9e0a-58c6-5341-85dd" name="Acoplada" hidden="false" targetId="a06f-e29d-bcf4-ed75" type="rule"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="9b0b-33ba-248a-2c6a" name="Lanzallamas Pesado Acoplado" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="7211-5bce-805c-6290" name="Lanzallamas Pesado" hidden="false" targetId="1f93-cb42-10a7-7475" type="infoGroup"/>
        <infoLink id="24b3-8e87-9ef4-4a23" name="Acoplada" hidden="false" targetId="a06f-e29d-bcf4-ed75" type="rule"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="32c5-1d0f-0991-7296" name="Rifle de Plasma Acoplado" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="38a0-1dfd-d5fd-af0b" name="Rifle de Plasma" hidden="false" targetId="88f3-7ccf-3af4-00c9" type="infoGroup"/>
        <infoLink id="d751-73c9-d609-7acb" name="Acoplada" hidden="false" targetId="a06f-e29d-bcf4-ed75" type="rule"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="07bd-58f7-625a-9946" name="Lanzamisiles Viento de Muerte" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3c70-770a-2c59-0a1f" name="Lanzamisiles Viento de Muerte" hidden="false" targetId="757f-8d37-9fcb-d04f" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="08e9-6e7a-bcfa-db6d" name="Cañón Automático Acoplado" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9cc0-9eac-13ee-79e7" name="Cañón Automático" hidden="false" targetId="6954-ea1e-f8d3-12e6" type="infoGroup"/>
        <infoLink id="fc7f-1fff-065d-6e2e" name="Acoplada" hidden="false" targetId="a06f-e29d-bcf4-ed75" type="rule"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="04d1-4af6-cf70-a728" name="Cañón Automático" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0c76-a7d6-6d1f-04f4" name="Cañón Automático" hidden="false" targetId="6954-ea1e-f8d3-12e6" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="7fb9-d1ca-7bec-71b4" name="Lanzamisiles" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d2c9-c73a-c533-b16e" name="Lanzamisiles" hidden="false" targetId="8230-cf82-9f0d-9e30" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="21ae-cfa4-8ef5-a272" name="Lanzamisiles Ciclón" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c029-3fe4-aee0-b8d0" name="Lanzamisiles Ciclón" hidden="false" targetId="c1b5-e451-4eab-a69e" type="infoGroup"/>
      </infoLinks>
      <costs>
        <cost name="Pts" typeId="puntos" value="0.0"/>
      </costs>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup id="a36c-4097-d84a-44b9" name="Combi" hidden="false" collective="false" import="true" defaultSelectionEntryId="a7c5-d6f2-740e-6093">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="826c-b020-fc61-b117" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2c5d-f8d8-920b-3ae7" type="min"/>
      </constraints>
      <entryLinks>
        <entryLink id="1921-422e-d24b-9b43" name="Combiplasma" hidden="false" collective="false" import="true" targetId="4cb7-a555-7c31-f580" type="selectionEntry"/>
        <entryLink id="3dd9-b07a-e745-edc5" name="Combilanzallamas" hidden="false" collective="false" import="true" targetId="48a3-adbd-01b3-d460" type="selectionEntry"/>
        <entryLink id="a7c5-d6f2-740e-6093" name="Combifusión" hidden="false" collective="false" import="true" targetId="1847-9bf4-2a1b-75fc" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="20ea-663a-add8-91e9" name="Transporte Asignado Marines Espaciales" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="fb72-978d-9de3-b454" name="Rhino" hidden="false" collective="false" import="true" targetId="e38f-c8d7-d4fb-9bdc" type="selectionEntry"/>
        <entryLink id="efd1-1c3c-25ef-ed48" name="Razorback" hidden="false" collective="false" import="true" targetId="9a37-bc3b-1a04-f114" type="selectionEntry"/>
        <entryLink id="4167-9949-89c0-a1a6" name="Cápsula de Desembarco" hidden="false" collective="false" import="true" targetId="2526-7732-5148-fa72" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="d347-7975-512a-f20a" name="Arma de combate cuerpo a cuerpo para Dreadnoughts" publicationId="f176-f140-74d8-da7d" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7467-fc46-faa8-db0b" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="90ea-1405-a622-21d1" type="min"/>
      </constraints>
      <entryLinks>
        <entryLink id="8a86-4305-e3ed-6add" name="Bolter de Asalto" hidden="false" collective="false" import="true" targetId="b78b-12bb-f14a-d4c7" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2cfb-46d7-9bca-9334" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="47bf-2771-0c0f-b48d" name="Lanzallamas Pesado" hidden="false" collective="false" import="true" targetId="aaf3-e120-b51c-e99e" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d85f-8e00-01e2-d170" type="max"/>
          </constraints>
        </entryLink>
      </entryLinks>
    </selectionEntryGroup>
  </sharedSelectionEntryGroups>
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
    <rule id="61b4-c5bb-9d85-8506" name="Personaje independiente" publicationId="1595-b68b-b80b-025d" page="47" hidden="false"/>
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
    <rule id="0de5-bc1b-a29c-7520" name="Bombas de Fusión" publicationId="f176-f140-74d8-da7d" page="63" hidden="false">
      <description>Contra Vehículos otorgan un Ataque de Fuerza 8+2d6.</description>
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
  </sharedRules>
  <sharedProfiles>
    <profile id="27f4-3f80-5047-a64a" name="Granadas defensivas" publicationId="1595-b68b-b80b-025d" page="36, 63" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con Granadas defensivas</characteristic>
      </characteristics>
    </profile>
    <profile id="8e64-1c75-85f5-7ac0" name="Arma de energía" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura se considera equipada con un arma de energía.</characteristic>
      </characteristics>
    </profile>
    <profile id="6fa5-b37d-1b93-9529" name="Granadas de asalto" publicationId="1595-b68b-b80b-025d" page="36, 63" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con Granadas de asalto</characteristic>
      </characteristics>
    </profile>
    <profile id="6bed-df85-7d9c-528d" name="Bombas de fusión" publicationId="1595-b68b-b80b-025d" page="63" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
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
    <profile id="2434-afee-c960-b04e" name="Arma Psíquica" publicationId="1595-b68b-b80b-025d" page="50" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Las Armas Psíquicas se consideran armas de energía.
Adicionalmente, tras realizar las tiradas para impactar, herir y salvaciones invulnerables de la manera habitual, el psíquico deberá realizar un chequeo psíquico para poder utilizar el poder del arma contra un objetivo que haya sufrido al menos una herida de la misma. Deben aplicarse las reglas habituales de los poderes psíquicos, respetando el límite de poderes que el portador puede manifestar a lo largo de su turno. Si el psíquico supera el chequeo, la miniatura enemiga sufrirá una muerte instantanea independientenente de su atributo de Resistencia. Este poder no tiene efecto en miniaturas que son inmunes a la muerte instantanea, Vehículos o cualquier miniatura sin atributo de Heridas.</characteristic>
      </characteristics>
    </profile>
    <profile id="72da-c0ac-0a81-ce11" name="Bolter" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">60cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">4</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">5</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Fuego Rápido</characteristic>
      </characteristics>
    </profile>
    <profile id="a4bf-9373-f03d-c801" name="Bolter de Asalto" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">60cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">4</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">5</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Asalto 2</characteristic>
      </characteristics>
    </profile>
    <profile id="9a38-2efe-0771-7505" name="Bolter Pesado" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">90cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">5</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">4</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 3</characteristic>
      </characteristics>
    </profile>
    <profile id="23a5-08ab-5472-217e" name="Cañón de Asalto" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">60cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">6</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">4</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 4, Acerada</characteristic>
      </characteristics>
    </profile>
    <profile id="6687-d100-fc5b-ca7c" name="Cañón de Fusión" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">60cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">8</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">1</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 1, Fusión</characteristic>
      </characteristics>
    </profile>
    <profile id="7f4a-587f-500c-0636" name="Cañón Láser" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">120cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">9</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">2</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 1</characteristic>
      </characteristics>
    </profile>
    <profile id="9f97-1cd0-bb02-2437" name="Cañón de Plasma" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">90cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">7</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">2</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 1, Área, Sobrecalentamiento</characteristic>
      </characteristics>
    </profile>
    <profile id="6d2d-4a20-74a7-0f00" name="Combiarma" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Una Marine Espacial armado con una combiarma (combirrifle de fusión, combirrifle de plasma o combilanzallamas) puede elegir entre disparar el bólter o el arma  secundaria, cada una con el perfil indicado en su correspondiente descripción. El bolter puede dispararse cada turno, pero el arma secundaria únicamente puede dispararse  una vez por batalla (un combirrifle de plasma puede, evidentemente, disparar en fuego rápido). En un mismo turno no pueden dispararse las dos armas.</characteristic>
      </characteristics>
    </profile>
    <profile id="2913-a02f-140a-18c1" name="Lanzallamas" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">Plantilla</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">4</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">5</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Asalto 1</characteristic>
      </characteristics>
    </profile>
    <profile id="a638-90e9-907a-f8a3" name="Lanzallamas Pesado" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">Plantilla</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">5</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">4</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Asalto 1</characteristic>
      </characteristics>
    </profile>
    <profile id="7d3b-1cdf-2f02-b1fb" name="Lanzamisiles Perforante" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">120cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">8</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">3</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 1</characteristic>
      </characteristics>
    </profile>
    <profile id="103e-13b1-e046-4c1a" name="Lanzamisiles Fragmentación" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">120cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">4</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">6</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 1, Área</characteristic>
      </characteristics>
    </profile>
    <profile id="0000-5c3d-ec2b-d0f5" name="Pistola Bolter" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">30cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">4</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">5</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pistola</characteristic>
      </characteristics>
    </profile>
    <profile id="778f-443d-161a-482f" name="Pistola de Plasma" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">30cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">7</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">2</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pistola, Sobrecalentamiento</characteristic>
      </characteristics>
    </profile>
    <profile id="3f1f-aba6-6b66-329a" name="Rifle de Fusión" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">30cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">8</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">1</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Asalto1, Fusión</characteristic>
      </characteristics>
    </profile>
    <profile id="807b-491c-1065-6ae9" name="Rifle de Plasma" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">60cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">7</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">2</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Fuego Rápido, Sobrecalentamiento</characteristic>
      </characteristics>
    </profile>
    <profile id="bc07-b40a-0174-12ce" name="Motocicleta Marines Espaciales" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Las miniaturas equipadas con motos marines espaciales siguen las reglas de las tropas de motos descritas en el reglamento de Warhammer 40,000. Las motocicletas marines espaciales estan artilladas con un bolter acoplado.</characteristic>
      </characteristics>
    </profile>
    <profile id="ba22-cd8e-0d95-8e72" name="Retrorreactores" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Las miniaturas equipadas con retrorreactores se consideran unidades retropropulsadas, tal y como se describen en el reglamento de Warhammer 40,000. Además, los Marines Espaciales equipados con retrorreactores pueden saltar desde cañoneras Thunderhawk en vuelo rasante, utilizando sus retrorreactores para descender suavemente hasta el campo de batalla. Para representar esto, estas tropas pueden mantenerse en reserva y entrar en el campo de batalla utilizando las reglas de despliegue rapido (consulta la seccion Reglas Especiales de Misión en el reglamento de Warhammer 40,000).</characteristic>
      </characteristics>
    </profile>
    <profile id="c666-800e-e05c-b96a" name="Armadura Artesanal" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Las miniaturas equipadas con una Armadura Artesanal disponen de una tirada de salvación por armadura de 2+</characteristic>
      </characteristics>
    </profile>
    <profile id="cce3-61ef-1c69-d775" name="Armadura de Explorador" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Las miniaturas equipadas con una Armadura de Explorador disponen de una tirada de salvación por armadura de 4+.</characteristic>
      </characteristics>
    </profile>
    <profile id="7e8c-f124-153a-4ffa" name="Armadura de Exterminador" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Una miniatura equipada con Armadura de Exterminador dispone de una tirada de salvación por armadura de 2+ y una tirada de salvación invulnerable de 5+.

Cualquier miniatura equipada con Armadura de Exterminador puede ser teleportada al campo de batalla. Siempre puede empezar el juego en reserva y llegar siguiendo las reglas de despliegue rápido, incluso si la misión no lo contempla.

Los exterminadores cuentan como dos miniaturas a efectos de capacidad de transporte, y no pueden embarcarse en Rhinos o Razorbacks.</characteristic>
      </characteristics>
    </profile>
    <profile id="6466-7442-d2df-9190" name="Servoarmadura" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Las miniaturas equipadas con Servoarmadura disponen de una tirada de salvación por armadura de 3+.</characteristic>
      </characteristics>
    </profile>
    <profile id="dcd2-7fb2-d3a9-8f3d" name="Blindaje Adicional" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Los vehiculos con Blindaje Adicional consideran cualquier resultado de tripulación aturdida en la tabla de daños como tripulación acobardada.</characteristic>
      </characteristics>
    </profile>
    <profile id="df61-bef6-a971-d063" name="Cañón Automático" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">120cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">7</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">4</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 2</characteristic>
      </characteristics>
    </profile>
    <profile id="bada-d29f-82f0-0aa6" name="Misil Cazador Asesino" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Un misil cazador asesino es un misil perforante con un alcance ilimitado que puede utilizarse solo una vez por batalla. Se dispara con HP4. Se considera un arma adicional.</characteristic>
      </characteristics>
    </profile>
    <profile id="5120-1c08-7db5-8808" name="Pala Excavadora" publicationId="f176-f140-74d8-da7d" page="103" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Los vehículos equipados con Pala Excavadora pueden repetir los chequeos por terreno dificil no superados.</characteristic>
      </characteristics>
    </profile>
    <profile id="2ce5-817f-85b3-3115" name="Reflector" publicationId="f176-f140-74d8-da7d" page="103" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Los reflectores pueden utilizarse cuando se aplican las reglas de combate nocturno. Si un vehículo dispone de reflector, debera seguir aplicando las reglas de combate nocturno al elegir su objetivo; pero, una vez adquirido un objetivo, lo iluminara con el reflector de forma que, durante el resto de la fase de disparo, cualquier otra unidad que dispare a la unidad iluminada no deberá aplicar la regla de combate nocturno. Sin embargo, el vehiculo que utiliza el reflector podrá ser designado como objetivo en el siguiente turno del enemigo como si las reglas de combate nocturno no estuvieran en efecto, ya que el enemigo puede ver la luz del reflector.</characteristic>
      </characteristics>
    </profile>
    <profile id="88ef-f347-6da1-b41f" name="Granadas Perforantes" publicationId="1595-b68b-b80b-025d" page="36, 63" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">La miniatura está equipada con Granadas Perforantes</characteristic>
      </characteristics>
    </profile>
    <profile id="562f-8ac0-91b5-c835" name="Martillo de Trueno" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Un Martillo de Trueno es un arma de energía que duplica la fuerza del usuario al igual que un puño de combate. Adicionalmente, las miniaturas que no mueran tras recibir al menos una herida por un Martillo de Trueno quedarán aturdidas y verán su Iniciativa reducida a 1 hasta el final del siguiente turno del jugador. Contra los Vehículos sin Iniciativa, los ataques que no inflinjan ningún daño, también inflingirán un resultado de Tripulación Acobardada.</characteristic>
      </characteristics>
    </profile>
    <profile id="dfa9-ab46-df3f-727f" name="Puño de Combate" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Un puño de combate (o &quot;garra de combate&quot;) es un guantelete blindado rodeado de un campo disruptor de energía. Un puno de combate es un arma de energía que dobla la
Fuerza original de quien la usa (hasta un máximo de 10). No obstante, los punos de combate son difíciles y pesados de manejar, por lo que una miniatura equipada con un
puño de combate siempre atacará con Iniciativa 1 (ignora cualquier bonificación a la Iniciativa por reglas especiales, equipo, etc.).</characteristic>
      </characteristics>
    </profile>
    <profile id="729e-f6e7-1eea-7223" name="Cuchillas Relámpago" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Una cuchilla relámpago es un arma de energía que, además, permiten repetir cualquier tirada para herir fallida.</characteristic>
      </characteristics>
    </profile>
    <profile id="931c-06e0-1d62-e106" name="Armas Envenenadas" publicationId="1595-b68b-b80b-025d" page="42" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Las armas envenenadas van desde espadas recubiertas de veneno a garras hipodermicas. No se basan en la comparación de la Fuerza con la Resistencia para herir, sino que
siempre hieren con un número fijo, generalmente indicado entre paréntesis. En la mayoría de casos es 4+. Algunos venenos son tan letales que pueden llegar a matar con una
sola gota (hieren con un 3+, incluso con un 2+, como se describe en el codex correspondiente). Además, si la Fuerza del soldado es igual o superior a la Resistencia de la vícti
ma, el soldado podrá repetir las tiradas para herir fallidas en combate cuerpo a cuerpo. Estas armas no tienen ventajas contra los vehículos.</characteristic>
      </characteristics>
    </profile>
    <profile id="2d0b-76e6-9ce1-0890" name="Espada Sierra" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Arma de combate Cuerpo a Cuerpo</characteristic>
      </characteristics>
    </profile>
    <profile id="5aa5-2d1e-ce0c-f49b" name="Escudo de Tormenta" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Proporciona al portador una tirada de Salvación Invulnerable de 3+, pero nunca podrá aplicar el modificador de +1 Ataque por estar armado por dos armas de combate cuerpo a cuerpo</characteristic>
      </characteristics>
    </profile>
    <profile id="27fb-5d49-623d-e7d4" name="Escudo de Combate" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Proporciona al portador una tirada de Salvación Invulnerable de 6+</characteristic>
      </characteristics>
    </profile>
    <profile id="bfd6-c4bf-9cfe-5cef" name="Rhino" publicationId="f176-f140-74d8-da7d" page="76" hidden="false" typeId="d12a-b581-e1f4-1193" typeName="Transporte">
      <characteristics>
        <characteristic name="HP" typeId="eeb7-edf8-2c77-59b6">4</characteristic>
        <characteristic name="Frontal" typeId="584e-15ce-949b-e298">11</characteristic>
        <characteristic name="Lateral" typeId="27a5-c15e-f5b6-9c11">11</characteristic>
        <characteristic name="Posterior" typeId="e7fb-2121-c86d-7a50">10</characteristic>
        <characteristic name="Tipo" typeId="f141-fc34-4d2a-b484">Vehículo (Tanque)</characteristic>
        <characteristic name="Capacidad" typeId="f90f-9546-155f-c585">10 Miniaturas, no puede transportar miniaturas con Armadura de Exterminador</characteristic>
        <characteristic name="Puntos de acceso" typeId="8cb4-5303-693b-0256">Uno a cada lado del casco y otro en la parte posterior</characteristic>
        <characteristic name="Puntos de disparo" typeId="85c0-7904-8bac-a359">Dos miniaturas desde la escotilla superior </characteristic>
      </characteristics>
    </profile>
    <profile id="a173-e634-a587-7a35" name="Razorback" publicationId="f176-f140-74d8-da7d" page="77" hidden="false" typeId="d12a-b581-e1f4-1193" typeName="Transporte">
      <characteristics>
        <characteristic name="HP" typeId="eeb7-edf8-2c77-59b6">4</characteristic>
        <characteristic name="Frontal" typeId="584e-15ce-949b-e298">11</characteristic>
        <characteristic name="Lateral" typeId="27a5-c15e-f5b6-9c11">11</characteristic>
        <characteristic name="Posterior" typeId="e7fb-2121-c86d-7a50">10</characteristic>
        <characteristic name="Tipo" typeId="f141-fc34-4d2a-b484">Vehículo (Tanque)</characteristic>
        <characteristic name="Capacidad" typeId="f90f-9546-155f-c585">6 Miniaturas, no puede transportar miniaturas con Armadura de Exterminador</characteristic>
        <characteristic name="Puntos de acceso" typeId="8cb4-5303-693b-0256">Uno a cada lado del casco y otro en la parte posterior</characteristic>
        <characteristic name="Puntos de disparo" typeId="85c0-7904-8bac-a359">Ninguno</characteristic>
      </characteristics>
    </profile>
    <profile id="b9f7-2866-cc0a-4200" name="Cápsula de Desembarco" publicationId="f176-f140-74d8-da7d" page="69" hidden="false" typeId="d12a-b581-e1f4-1193" typeName="Transporte">
      <characteristics>
        <characteristic name="HP" typeId="eeb7-edf8-2c77-59b6">4</characteristic>
        <characteristic name="Frontal" typeId="584e-15ce-949b-e298">12</characteristic>
        <characteristic name="Lateral" typeId="27a5-c15e-f5b6-9c11">12</characteristic>
        <characteristic name="Posterior" typeId="e7fb-2121-c86d-7a50">12</characteristic>
        <characteristic name="Tipo" typeId="f141-fc34-4d2a-b484">Vehículo (Descubierto)</characteristic>
        <characteristic name="Capacidad" typeId="f90f-9546-155f-c585">12 Miniaturas, puede transportar un Dreadnought o Cañón Tormenta</characteristic>
        <characteristic name="Puntos de acceso" typeId="8cb4-5303-693b-0256">Se considera un Vehículo Descubierto al desplegarse, no se puede volver a embarcar una vez desplegada</characteristic>
        <characteristic name="Puntos de disparo" typeId="85c0-7904-8bac-a359">Se considera un Vehículo Descubierto al desplegarse</characteristic>
      </characteristics>
    </profile>
    <profile id="59f3-98ac-9e4f-1169" name="Descargadores de Humo" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">El vehículo cuenta con Descargadores de Humo</characteristic>
      </characteristics>
    </profile>
    <profile id="9127-a3e4-0910-fcf0" name="Lanzamisiles Viento de Muerte" publicationId="f176-f140-74d8-da7d" page="69" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">30cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">5</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">-</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 1, Área Grande</characteristic>
      </characteristics>
    </profile>
    <profile id="137f-271f-b4c1-dc0c" name="Marine Espacial Veterano" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="2d6001b0-980e-46d2-bcc2-a9fc60109afd" typeName="Unidad">
      <characteristics>
        <characteristic name="Tipo" typeId="c2b4b061-a0fd-499d-8a3d-6ee52587cbd5">Infantería</characteristic>
        <characteristic name="HA" typeId="5ee4ff0b-b244-4670-9d05-91d10f80c32e">4</characteristic>
        <characteristic name="HP" typeId="f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5">4</characteristic>
        <characteristic name="F" typeId="da036dbb-32c2-430a-9dd5-aa74e0c4f74b">4</characteristic>
        <characteristic name="R" typeId="3f9ed75c-36cd-4169-9cef-48391bb55cfd">4</characteristic>
        <characteristic name="H" typeId="17ee558f-3014-4bd2-afc1-b474d8d2b7a8">1</characteristic>
        <characteristic name="I" typeId="a558b3ef-04d0-440e-a312-bac3255bf592">4</characteristic>
        <characteristic name="A" typeId="5dff3e7c-e024-4030-a71d-03195ec06ea7">2</characteristic>
        <characteristic name="L" typeId="4a42059d-12cd-4c1f-a4c7-bb569d13eeea">9</characteristic>
        <characteristic name="S" typeId="b215fe72-dbce-4ad6-89ec-c4bb3962c39d">3+</characteristic>
      </characteristics>
    </profile>
    <profile id="0cd0-cd61-3ca0-d044" name="Marine Espacial" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="2d6001b0-980e-46d2-bcc2-a9fc60109afd" typeName="Unidad">
      <characteristics>
        <characteristic name="Tipo" typeId="c2b4b061-a0fd-499d-8a3d-6ee52587cbd5">Infantería</characteristic>
        <characteristic name="HA" typeId="5ee4ff0b-b244-4670-9d05-91d10f80c32e">4</characteristic>
        <characteristic name="HP" typeId="f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5">4</characteristic>
        <characteristic name="F" typeId="da036dbb-32c2-430a-9dd5-aa74e0c4f74b">4</characteristic>
        <characteristic name="R" typeId="3f9ed75c-36cd-4169-9cef-48391bb55cfd">4</characteristic>
        <characteristic name="H" typeId="17ee558f-3014-4bd2-afc1-b474d8d2b7a8">1</characteristic>
        <characteristic name="I" typeId="a558b3ef-04d0-440e-a312-bac3255bf592">4</characteristic>
        <characteristic name="A" typeId="5dff3e7c-e024-4030-a71d-03195ec06ea7">1</characteristic>
        <characteristic name="L" typeId="4a42059d-12cd-4c1f-a4c7-bb569d13eeea">8</characteristic>
        <characteristic name="S" typeId="b215fe72-dbce-4ad6-89ec-c4bb3962c39d">3+</characteristic>
      </characteristics>
    </profile>
    <profile id="2b13-8a02-0acd-87d3" name="Campeón de la Compañía" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="2d6001b0-980e-46d2-bcc2-a9fc60109afd" typeName="Unidad">
      <characteristics>
        <characteristic name="Tipo" typeId="c2b4b061-a0fd-499d-8a3d-6ee52587cbd5">Infantería</characteristic>
        <characteristic name="HA" typeId="5ee4ff0b-b244-4670-9d05-91d10f80c32e">5</characteristic>
        <characteristic name="HP" typeId="f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5">4</characteristic>
        <characteristic name="F" typeId="da036dbb-32c2-430a-9dd5-aa74e0c4f74b">4</characteristic>
        <characteristic name="R" typeId="3f9ed75c-36cd-4169-9cef-48391bb55cfd">4</characteristic>
        <characteristic name="H" typeId="17ee558f-3014-4bd2-afc1-b474d8d2b7a8">1</characteristic>
        <characteristic name="I" typeId="a558b3ef-04d0-440e-a312-bac3255bf592">4</characteristic>
        <characteristic name="A" typeId="5dff3e7c-e024-4030-a71d-03195ec06ea7">2</characteristic>
        <characteristic name="L" typeId="4a42059d-12cd-4c1f-a4c7-bb569d13eeea">9</characteristic>
        <characteristic name="S" typeId="b215fe72-dbce-4ad6-89ec-c4bb3962c39d">3+</characteristic>
      </characteristics>
    </profile>
    <profile id="ae50-146d-b34e-1a45" name="Apotecario" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="2d6001b0-980e-46d2-bcc2-a9fc60109afd" typeName="Unidad">
      <characteristics>
        <characteristic name="Tipo" typeId="c2b4b061-a0fd-499d-8a3d-6ee52587cbd5">Infantería</characteristic>
        <characteristic name="HA" typeId="5ee4ff0b-b244-4670-9d05-91d10f80c32e">4</characteristic>
        <characteristic name="HP" typeId="f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5">4</characteristic>
        <characteristic name="F" typeId="da036dbb-32c2-430a-9dd5-aa74e0c4f74b">4</characteristic>
        <characteristic name="R" typeId="3f9ed75c-36cd-4169-9cef-48391bb55cfd">4</characteristic>
        <characteristic name="H" typeId="17ee558f-3014-4bd2-afc1-b474d8d2b7a8">1</characteristic>
        <characteristic name="I" typeId="a558b3ef-04d0-440e-a312-bac3255bf592">4</characteristic>
        <characteristic name="A" typeId="5dff3e7c-e024-4030-a71d-03195ec06ea7">2</characteristic>
        <characteristic name="L" typeId="4a42059d-12cd-4c1f-a4c7-bb569d13eeea">9</characteristic>
        <characteristic name="S" typeId="b215fe72-dbce-4ad6-89ec-c4bb3962c39d">3+</characteristic>
      </characteristics>
    </profile>
    <profile id="f795-bbc3-7097-9809" name="Dreadnought" publicationId="f176-f140-74d8-da7d" page="65" hidden="false" typeId="3dadd2ff-33f1-41dd-85c7-bee5a7dfa413" typeName="Bípode">
      <characteristics>
        <characteristic name="HA" typeId="5ee4ff0b-b244-4670-9d05-91d10f80c32e">4</characteristic>
        <characteristic name="HP" typeId="f6f92f00-8bb1-4afa-8ccb-46310b7dd5e5">4</characteristic>
        <characteristic name="F" typeId="da036dbb-32c2-430a-9dd5-aa74e0c4f74b">6</characteristic>
        <characteristic name="Frontal" typeId="8cdd4fef-d1ba-4007-992c-b6f93e86d43f">12</characteristic>
        <characteristic name="Lateral" typeId="5f9a3780-eecb-4c70-be1d-e5bd06b06e9e">12</characteristic>
        <characteristic name="Posterior" typeId="0a9f33cb-0412-420a-89d2-20707c360bd2">10</characteristic>
        <characteristic name="I" typeId="a558b3ef-04d0-440e-a312-bac3255bf592">4</characteristic>
        <characteristic name="A" typeId="5dff3e7c-e024-4030-a71d-03195ec06ea7">2</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Vehículo (Bípode)</characteristic>
      </characteristics>
    </profile>
    <profile id="b06c-b059-afbc-8055" name="Bolter Huracán" publicationId="f176-f140-74d8-da7d" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Cada Bolter Huracan consta de tres bolteres acoplados que disparan como una sola arma.</characteristic>
      </characteristics>
    </profile>
    <profile id="6d17-59df-c7c5-36d2" name="Lanzamisiles Ciclón Perforante" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">120cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">8</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">3</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 2</characteristic>
      </characteristics>
    </profile>
    <profile id="1e1c-4a92-b4a3-f025" name="Lanzamisiles Ciclón" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
      <characteristics>
        <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Un exterminador puede disparar su lanzamisiles ciclón además de su bolter de asalto. Cada vez que un lanzamisiles ciclón dispara, el jugador que lo controla puede elegir el tipo de misil que utiliza.</characteristic>
      </characteristics>
    </profile>
    <profile id="cc76-d486-dcc8-3824" name="Lanzamisiles Ciclón Fragmentación" hidden="false" typeId="d5f97c0b-9fc9-478d-aa34-a7c414d3ea48" typeName="Arma">
      <characteristics>
        <characteristic name="Alcance" typeId="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464">120cm</characteristic>
        <characteristic name="F" typeId="a6383362-5aa8-4ff0-b1d0-00e059fc9d45">4</characteristic>
        <characteristic name="FP" typeId="6abee736-f8d3-498e-97ac-a5c68445609f">6</characteristic>
        <characteristic name="Tipo" typeId="077c342f-d7b9-45c6-b8af-88e97cafd3a2">Pesada 2, Área</characteristic>
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
    <infoGroup id="0fd5-a425-7f84-efce" name="Bolter de Asalto" hidden="false">
      <infoLinks>
        <infoLink id="2207-74f7-4398-47df" name="Asalto" hidden="false" targetId="8714-46ad-62c0-ce35" type="rule"/>
        <infoLink id="6086-b3fc-95bf-898e" name="Bolter de Asalto" hidden="false" targetId="a4bf-9373-f03d-c801" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="40c7-cb9b-c278-04f7" name="Bolter" hidden="false">
      <infoLinks>
        <infoLink id="30b6-1b5e-6e38-e01a" name="Fuego Rápido" hidden="false" targetId="e15d-1437-cfb2-b8dd" type="rule"/>
        <infoLink id="ef0e-bdfe-4617-47a4" name="Bolter" hidden="false" targetId="72da-c0ac-0a81-ce11" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="12cd-cd02-44d2-3fc8" name="Bolter Pesado" hidden="false">
      <infoLinks>
        <infoLink id="0386-e4a1-ce57-a6cf" name="Pesada" hidden="false" targetId="2e56-6b02-4343-0e40" type="rule"/>
        <infoLink id="3dc8-cc53-5cab-6c80" name="Bolter Pesado" hidden="false" targetId="9a38-2efe-0771-7505" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="cc2e-7a37-3344-5b2a" name="Cañón de Asalto" hidden="false">
      <infoLinks>
        <infoLink id="f49b-7da4-1a9d-321f" name="Pesada" hidden="false" targetId="2e56-6b02-4343-0e40" type="rule"/>
        <infoLink id="ecd8-e9b3-756c-c840" name="Cañón de Asalto" hidden="false" targetId="23a5-08ab-5472-217e" type="profile"/>
        <infoLink id="cfe1-3cf4-f89e-40fc" name="Aceradas" hidden="false" targetId="7097-6879-0d11-787d" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="6227-1328-9375-e3f1" name="Cañón de Fusión" hidden="false">
      <infoLinks>
        <infoLink id="288a-f638-0303-71eb" name="Pesada" hidden="false" targetId="2e56-6b02-4343-0e40" type="rule"/>
        <infoLink id="2d94-ca85-b1f4-2b0a" name="Cañón de Fusión" hidden="false" targetId="6687-d100-fc5b-ca7c" type="profile"/>
        <infoLink id="6317-8453-4b5d-3d4e" name="Fusión" hidden="false" targetId="2d66-d516-2bf5-5751" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="fb4a-a75e-cc5e-cca3" name="Cañón Láser" hidden="false">
      <infoLinks>
        <infoLink id="6759-46f7-466e-3986" name="Pesada" hidden="false" targetId="2e56-6b02-4343-0e40" type="rule"/>
        <infoLink id="ae7d-7abe-fa53-fcde" name="Cañón Láser" hidden="false" targetId="7f4a-587f-500c-0636" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="3e15-1a75-e024-0ffd" name="Cañón de Plasma" hidden="false">
      <infoLinks>
        <infoLink id="f049-2db4-1edc-9c72" name="Pesada" hidden="false" targetId="2e56-6b02-4343-0e40" type="rule"/>
        <infoLink id="14f2-3f01-5371-072c" name="Cañón de Plasma" hidden="false" targetId="9f97-1cd0-bb02-2437" type="profile"/>
        <infoLink id="db30-141c-faa1-cbab" name="Área" hidden="false" targetId="31c7-fe6c-af95-f0b5" type="rule"/>
        <infoLink id="d2b2-0e7a-e0e8-f4dd" name="Sobrecalentamiento" hidden="false" targetId="f6bb-191b-f63a-0ec5" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="df4b-fc7e-991e-2ce4" name="Lanzallamas" hidden="false">
      <infoLinks>
        <infoLink id="6dc4-55d4-9bda-8289" name="Plantilla" hidden="false" targetId="d094-3fd7-bd10-443d" type="rule"/>
        <infoLink id="e62e-0b2e-4357-3a27" name="Lanzallamas" hidden="false" targetId="2913-a02f-140a-18c1" type="profile"/>
        <infoLink id="6665-afa9-c331-e4a7" name="Asalto" hidden="false" targetId="8714-46ad-62c0-ce35" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="1f93-cb42-10a7-7475" name="Lanzallamas Pesado" hidden="false">
      <infoLinks>
        <infoLink id="01e8-3982-b55c-b232" name="Plantilla" hidden="false" targetId="d094-3fd7-bd10-443d" type="rule"/>
        <infoLink id="132c-4ec9-a75b-3185" name="Lanzallamas Pesado" hidden="false" targetId="a638-90e9-907a-f8a3" type="profile"/>
        <infoLink id="5f40-24fc-ea2f-92af" name="Asalto" hidden="false" targetId="8714-46ad-62c0-ce35" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="8230-cf82-9f0d-9e30" name="Lanzamisiles" hidden="false">
      <infoLinks>
        <infoLink id="41ae-1dfb-df2e-6036" name="Pesada" hidden="false" targetId="2e56-6b02-4343-0e40" type="rule"/>
        <infoLink id="b44d-a290-45c2-5a0b" name="Lanzamisiles Fragmentación" hidden="false" targetId="103e-13b1-e046-4c1a" type="profile"/>
        <infoLink id="b2e1-4830-37c8-c326" name="Área" hidden="false" targetId="31c7-fe6c-af95-f0b5" type="rule"/>
        <infoLink id="a642-98c2-9120-5607" name="Lanzamisiles Perforante" hidden="false" targetId="7d3b-1cdf-2f02-b1fb" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="ac8a-08c7-c65f-f8ac" name="Pistola Bolter" hidden="false">
      <infoLinks>
        <infoLink id="4073-2411-e066-c1a5" name="Pistola" hidden="false" targetId="ff92-d10b-2808-eb79" type="rule"/>
        <infoLink id="5dad-8710-a126-f389" name="Pistola Bolter" hidden="false" targetId="0000-5c3d-ec2b-d0f5" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="7ab5-7984-af7d-f5c0" name="Pistola de Plasma" hidden="false">
      <infoLinks>
        <infoLink id="4804-3198-69a4-c24c" name="Pistola de Plasma" hidden="false" targetId="778f-443d-161a-482f" type="profile"/>
        <infoLink id="8e8c-2abf-3c9e-ea9b" name="Pistola" hidden="false" targetId="ff92-d10b-2808-eb79" type="rule"/>
        <infoLink id="5620-9b4f-4b91-3405" name="Sobrecalentamiento" hidden="false" targetId="f6bb-191b-f63a-0ec5" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="1f94-65f0-6cf5-5997" name="Rifle de Fusión" hidden="false">
      <infoLinks>
        <infoLink id="2d4f-45b1-d4ab-76be" name="Asalto" hidden="false" targetId="8714-46ad-62c0-ce35" type="rule"/>
        <infoLink id="759c-afdc-a281-568a" name="Rifle de Fusión" hidden="false" targetId="3f1f-aba6-6b66-329a" type="profile"/>
        <infoLink id="f265-9440-ba1b-959f" name="Fusión" hidden="false" targetId="2d66-d516-2bf5-5751" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="88f3-7ccf-3af4-00c9" name="Rifle de Plasma" hidden="false">
      <infoLinks>
        <infoLink id="0bb1-b287-5b50-7f13" name="Fuego Rápido" hidden="false" targetId="e15d-1437-cfb2-b8dd" type="rule"/>
        <infoLink id="89fe-db8b-be41-7360" name="Rifle de Plasma" hidden="false" targetId="807b-491c-1065-6ae9" type="profile"/>
        <infoLink id="67ce-cf09-52be-860a" name="Sobrecalentamiento" hidden="false" targetId="f6bb-191b-f63a-0ec5" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="3dbe-89b1-f5b9-bf68" name="Motocicleta Marines Espaciales" hidden="false">
      <infoLinks>
        <infoLink id="ab95-1d8e-c38e-98b8" name="Motocicleta Marines Espaciales" hidden="false" targetId="bc07-b40a-0174-12ce" type="profile"/>
        <infoLink id="7dc6-d214-8237-578d" name="Turbopropulsores" hidden="false" targetId="146e-d4a2-283a-f0f5" type="rule"/>
        <infoLink id="3f37-d54d-8c5d-fc26" name="Bolter" hidden="false" targetId="40c7-cb9b-c278-04f7" type="infoGroup"/>
        <infoLink id="23fa-b2d7-12d9-adf0" name="Acoplada" hidden="false" targetId="a06f-e29d-bcf4-ed75" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="ee91-b32d-2d83-a10e" name="Retrorreactores" hidden="false">
      <infoLinks>
        <infoLink id="f63e-0d79-32a0-bcee" name="Despliegue Rápido" hidden="false" targetId="e73e-593a-922e-a47a" type="rule"/>
        <infoLink id="0fe2-8bd0-0f32-1286" name="Retrorreactores" hidden="false" targetId="ba22-cd8e-0d95-8e72" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="6954-ea1e-f8d3-12e6" name="Cañón Automático" hidden="false">
      <infoLinks>
        <infoLink id="a7aa-838f-2433-c7ed" name="Pesada" hidden="false" targetId="2e56-6b02-4343-0e40" type="rule"/>
        <infoLink id="aa33-3539-1219-ce64" name="Cañón Automático" hidden="false" targetId="df61-bef6-a971-d063" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="3c78-b4c4-5e08-b14a" name="Misil Cazador Asesino" hidden="false">
      <infoLinks>
        <infoLink id="c881-882c-265c-6791" name="Pesada" hidden="false" targetId="2e56-6b02-4343-0e40" type="rule"/>
        <infoLink id="408f-ce81-836d-dd62" name="Lanzamisiles Perforante" hidden="false" targetId="7d3b-1cdf-2f02-b1fb" type="profile">
          <modifiers>
            <modifier type="set" field="6fa97fa8-ea74-4a27-a0fb-bc4e5f367464" value="Ilimitado"/>
            <modifier type="append" field="077c342f-d7b9-45c6-b8af-88e97cafd3a2" value=", Un solo uso"/>
          </modifiers>
        </infoLink>
        <infoLink id="a65c-78e5-0184-1fef" name="Misil Cazador Asesino" hidden="false" targetId="bada-d29f-82f0-0aa6" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="343c-e366-59e5-f8f8" name="Bomba de Fusión" hidden="false">
      <infoLinks>
        <infoLink id="907f-c9fe-4da3-c4fa" name="Bombas de Fusión" hidden="false" targetId="0de5-bc1b-a29c-7520" type="rule"/>
        <infoLink id="a772-52ac-3c60-0643" name="Bombas de fusión" hidden="false" targetId="6bed-df85-7d9c-528d" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="5013-1b13-3fea-2166" name="Granadas Perforantes" hidden="false">
      <infoLinks>
        <infoLink id="0875-9818-e611-df77" name="Granadas Perforantes" hidden="false" targetId="0903-3583-24c6-b52c" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="750f-5a1e-0dae-f607" name="Armadura de Exterminador" hidden="false">
      <infoLinks>
        <infoLink id="8e82-2b55-c711-0c37" name="Armadura de Exterminador" hidden="false" targetId="7e8c-f124-153a-4ffa" type="profile"/>
        <infoLink id="9cc0-6eef-66eb-11b1" name="Despliegue Rápido" hidden="false" targetId="e73e-593a-922e-a47a" type="rule"/>
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
    <infoGroup id="d323-9a7c-50ee-c319" name="Combifusión" hidden="false">
      <infoLinks>
        <infoLink id="aba1-d8e6-689e-96aa" name="Rifle de Fusión" hidden="false" targetId="1f94-65f0-6cf5-5997" type="infoGroup"/>
        <infoLink id="30a3-77ec-2a5b-c28c" name="Bolter" hidden="false" targetId="40c7-cb9b-c278-04f7" type="infoGroup"/>
        <infoLink id="9c04-a09c-f14a-21fd" name="Combiarma" hidden="false" targetId="6d2d-4a20-74a7-0f00" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="85c8-2a1f-938d-147d" name="Combilanzallamas" hidden="false">
      <infoLinks>
        <infoLink id="2c8e-11d6-b867-c3d1" name="Lanzallamas" hidden="false" targetId="df4b-fc7e-991e-2ce4" type="infoGroup"/>
        <infoLink id="44a1-b745-a327-1821" name="Bolter" hidden="false" targetId="40c7-cb9b-c278-04f7" type="infoGroup"/>
        <infoLink id="5171-1971-9f36-5ff5" name="Combiarma" hidden="false" targetId="6d2d-4a20-74a7-0f00" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="4853-dd70-590e-1770" name="Combiplasma" hidden="false">
      <infoLinks>
        <infoLink id="3aa3-82b9-42b5-b308" name="Rifle de Plasma" hidden="false" targetId="88f3-7ccf-3af4-00c9" type="infoGroup"/>
        <infoLink id="f1d7-398b-4706-2d18" name="Bolter" hidden="false" targetId="40c7-cb9b-c278-04f7" type="infoGroup"/>
        <infoLink id="1876-2ed1-0c10-3f60" name="Combiarma" hidden="false" targetId="6d2d-4a20-74a7-0f00" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="4ad6-a7b9-4380-d6cb" name="Puño Sierra" hidden="false">
      <profiles>
        <profile id="7962-0a88-f8be-edd2" name="Puño Sierra" hidden="false" typeId="72c5eafc-75bf-4ed9-b425-78009f1efe82" typeName="Equipo">
          <characteristics>
            <characteristic name="Descripcción" typeId="21befb24-fc85-4f52-a745-64b2e48f8228">Se considera exactamente igual que un puño de combate, pero tira 2D6 al efectuar la tirada de penetración de blindaje.</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="3b64-86c2-0d02-ddf2" name="Puño de Combate" hidden="false" targetId="25b3-7b9d-199b-6d35" type="infoGroup"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="e9e0-c36a-4116-d3c7" name="Rhino" hidden="false">
      <rules>
        <rule id="81fa-c643-ceb4-8880" name="Reparación" hidden="false">
          <description>Si un Rhino queda inmovilizado por cualquier razón, en turnos posteriores la tripulación puede intentar una reparación temporal en vez de disparar el vehículo. Tira 1D6 en la fase de disparo y, si obtienes un resultado de 6, el vehículo dejará de estar inmovilizado.</description>
        </rule>
      </rules>
      <infoLinks>
        <infoLink id="ed51-c0c4-75d8-e99d" name="Rhino" hidden="false" targetId="bfd6-c4bf-9cfe-5cef" type="profile"/>
        <infoLink id="f0c5-e38f-8c5e-950b" name="Descargadores de Humo" hidden="false" targetId="cd72-117c-f741-24b3" type="infoGroup"/>
        <infoLink id="b556-38c7-e1e4-33b2" name="Reflector" hidden="false" targetId="2ce5-817f-85b3-3115" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="84ce-9822-b073-8524" name="Razorback" hidden="false">
      <infoLinks>
        <infoLink id="d934-33a5-f975-b3e9" name="Razorback" hidden="false" targetId="a173-e634-a587-7a35" type="profile"/>
        <infoLink id="4830-893d-17f1-056c" name="Descargadores de Humo" hidden="false" targetId="cd72-117c-f741-24b3" type="infoGroup"/>
        <infoLink id="f478-63e8-3385-bbe9" name="Reflector" hidden="false" targetId="2ce5-817f-85b3-3115" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="c39d-016b-8f46-4e1c" name="Cápsula de Desembarco" hidden="false">
      <profiles>
        <profile id="dba8-f0bd-1c0e-b7ba" name="Inmóvil" hidden="false" typeId="c970-b832-a956-1ac8" typeName="Habilidad">
          <characteristics>
            <characteristic name="Descripción" typeId="917b-713d-7c3d-7a9e">Una cápsula de desembarco no puede moverse una vez que ha entrado en batalla y cuenta a todos los efectos como un vehículo que ha
sufrido un resultado de inmovilizado en la tabla de daños (no puede repararse de ningún modo).</characteristic>
          </characteristics>
        </profile>
        <profile id="5fc8-ef5c-6c61-ea07" name="Sistema de guía inercial" hidden="false" typeId="c970-b832-a956-1ac8" typeName="Habilidad">
          <characteristics>
            <characteristic name="Descripción" typeId="917b-713d-7c3d-7a9e">Si una cápsula de desembarco se dispersa encima de terreno infranqueable o de otra miniatura (amiga o enemiga), reduce la distancia de dispersión a lo minima necesario para poder evitar el obstáculo.</characteristic>
          </characteristics>
        </profile>
        <profile id="e4e5-23f4-8e31-2b0c" name="Asalto orbital" hidden="false" typeId="c970-b832-a956-1ac8" typeName="Habilidad">
          <characteristics>
            <characteristic name="Descripción" typeId="917b-713d-7c3d-7a9e">Las cápsulas de desembarco entran en juego siguiendo las reglas de despliegue rápido descritas en la sección reglas especiales de mision del reglamento de Warhammer 40,000. Al inicio de tu primer turno, debes elegir a la mitad de tus cápsulas de desembarco (redondeando hacia arriba) para que efectue un asalto orbital. Las unidades que efectuan el asalto orbital aparecen en el primer turno del jugador. El resto de cápsulas de desembarco del jugador se incorporarán a la partida siguiendo el procedimiento habitual. Una unidad que efectue un asalto
orbital con cápsulas de desembarco no podrá asaltar el turno en el que entra en juego.</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="0a25-1fdb-c112-beb0" name="Cápsula de Desembarco" hidden="false" targetId="b9f7-2866-cc0a-4200" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="cd72-117c-f741-24b3" name="Descargadores de Humo" hidden="false">
      <infoLinks>
        <infoLink id="fa02-9ad4-5cb7-f7ba" name="Descargadores de Humo" hidden="false" targetId="7654-3d41-1fbd-d710" type="rule"/>
        <infoLink id="35b7-49aa-91e8-566d" name="Descargadores de Humo" hidden="false" targetId="59f3-98ac-9e4f-1169" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="757f-8d37-9fcb-d04f" name="Lanzamisiles Viento de Muerte" hidden="false">
      <infoLinks>
        <infoLink id="1b96-862a-89b1-a363" name="Pesada" hidden="false" targetId="2e56-6b02-4343-0e40" type="rule"/>
        <infoLink id="e773-9f57-9b98-04e1" name="Lanzamisiles Viento de Muerte" hidden="false" targetId="9127-a3e4-0910-fcf0" type="profile"/>
        <infoLink id="2c7b-226c-391c-ef72" name="Área Grande" hidden="false" targetId="952e-d8aa-7560-44b9" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="3bba-24a9-ee2c-c073" name="Arma Psíquica" hidden="false">
      <infoLinks>
        <infoLink id="4990-3307-d7be-b7ce" name="Arma Psíquica" hidden="false" targetId="2434-afee-c960-b04e" type="profile"/>
        <infoLink id="79a8-f3ff-c290-6f20" name="Energía" hidden="false" targetId="2528-3f58-a823-5b4a" type="rule"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="ae35-6938-e2d2-f73c" name="Bolter Huracán" hidden="false">
      <infoLinks>
        <infoLink id="04b3-384e-9b8e-fc28" name="Bolter" hidden="false" targetId="40c7-cb9b-c278-04f7" type="infoGroup"/>
        <infoLink id="f2cd-e296-a5ba-cad1" name="Acoplada" hidden="false" targetId="a06f-e29d-bcf4-ed75" type="rule"/>
        <infoLink id="1128-f19f-3815-39c9" name="Bolter Huracán" hidden="false" targetId="b06c-b059-afbc-8055" type="profile"/>
      </infoLinks>
    </infoGroup>
    <infoGroup id="c1b5-e451-4eab-a69e" name="Lanzamisiles Ciclón" hidden="false">
      <infoLinks>
        <infoLink id="84cf-5657-1eb2-1522" name="Lanzamisiles Ciclón" hidden="false" targetId="1e1c-4a92-b4a3-f025" type="profile"/>
        <infoLink id="8fe6-24d4-85ae-4729" name="Lanzamisiles Ciclón Fragmentación" hidden="false" targetId="cc76-d486-dcc8-3824" type="profile"/>
        <infoLink id="b399-7c15-8ace-ffac" name="Lanzamisiles Ciclón Perforante" hidden="false" targetId="6d17-59df-c7c5-36d2" type="profile"/>
        <infoLink id="c983-f36a-c5e1-bdac" name="Pesada" hidden="false" targetId="2e56-6b02-4343-0e40" type="rule"/>
        <infoLink id="e263-4786-61d8-3601" name="Área" hidden="false" targetId="31c7-fe6c-af95-f0b5" type="rule"/>
      </infoLinks>
    </infoGroup>
  </sharedInfoGroups>
</gameSystem>