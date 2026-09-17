# 7 Tjänstekontrakt - infrastructure: itintegration: registry v2

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

## Tjänstekontrakt

### GetLogicalAddresseesByServiceContract

Tjänsten returnerar en lista över logiska adressater som har en tjänsteproducent för angivet tjänstekontrakt (namnrymd) och som har anropsbehörighet för angiven tjänstekonsument (hsa-id). Ett tänkt syfte med denna tjänst är att konsumenter med behov av att vidarebefordra anrop till alla producenter av ett specifikt tjänstekontrakt ska kunna använda tjänsten för att fastställa vilka logiska adressater som erbjuder angiven tjänst.

#### Version

2.0

#### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardinalitet | | :— | :— | :— | :— | | Begäran | | | | | serviceConsumerHsaId | hsaId | Tjänstekonsument mot vars anropsbehörighet svaret filtreras. | 1..1 | | serviceContractNameSpace | urn | Det tjänstekontrakt som frågan gäller | 1..1 | | Svar | | | | | logicalAddressRecord | LogicalAddresseeRecordType | | 0..* | | logicalAddressRecord. logicalAddress | Text | Tjänstekontrakt som stöds av angiven tjänstekonsument vid tidpunkten för anropet av GetLogicalAddresseesByServiceContract. | 1..1 | | logicalAddressRecord.filter | FilterType | | 0..* | | logicalAddressRecord.filter. serviceDomain | URN på formatet ::. | Namnrymd för Tjänstedomän enligt RIVTA-förvaltningens förvaltade tjänstedomäner. Anges utan versionsnummer. Ex: ”urn:riv:crm:scheduling” | 1..1 | | logicalAddressRecord.filter. categorization | Text | Kodverk enligt tjänstedomänens dokumentation. | 0..* | Not: Utformandet av behörighetsfiltret, FilterType, avspeglar den första intressentens (EngagemangsIndex) direkta behov av filter-information. Om man i framtiden kan identifiera fler intressenter av behörighetsfilter kan datamodellen generaliseras baserat på de behov som då identifierats och införas i en major-version av tjänstekontraktet.

#### Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. R1: Producenten ska filtrera svaret så att det endast innehåller de logiska adresser som angiven konsument har rättighet att adressera för angivet tjänstekontrakt (vid tidpunkten för anropet av GetLogicalAddresseesByServiceContract). R2: Behörighetsfilter-informationen i svaret skall hanteras enligt följande vid behörighetskontroll: Om posten logicalAddressRecord för avsedd logicalAddress i svaret från GetLogicalAddresseesByServiceContract inte innehåller några filter-poster så skall anropet tillåtas. Om det finns en eller flera fitler-poster i logicalAddressRecord så måste meddelandet som skall skickas till logicalAddress innehålla en serviceDomain som ingår i en av filter-posterna, annars skall anropet inte tillåtas. Om den matchande filter-posten (map serviceDomain) inte anger någon categorization så skall anropet tillåtas. Om det finns en eller flera categorization angivna i den matchande fitler-posten så måste meddelandet som skall skickas till logicalAddress innehålla en cateorization som ingår i filter-posten, annars skall anropet inte tillåtas. Om meddelandet innehåller en matchande categorization så skall anropet tillåtas. Exempel på R2 Varje exempel nedan avspeglar respektive del-regel i R2 ovan. Följande exempel-meddelande skall skickas till logicalAddress ”logisk-adress”:

crm:scheduling
Booking
Filter exempel #1 ger behörighet då filter-information saknas:

logisk-adress
Filter exempel #2 ger inte behörighet då filter-informationen inte matchar serviceDomain i meddelandet:

logisk-adress

riv:crm:other
Filter exempel #3 ger behörighet då filter-informationen matchar serviceDomain i meddelandet samt inte innehåller någon categorization:

logisk-adress

riv:crm:scheduling
Filter exempel #4 ger inte behörighet då filter-informationen matchar serviceDomain men inte categorization i meddelandet:

logisk-adress

riv:crm:scheduling
Other1
Other2

riv:crm:other
Booking
Filter exempel #5 ger behörighet då filter-informationen matchar såväl serviceDomain som categorization i meddelandet:

logisk-adress

riv:crm:scheduling
Booking

riv:crm:other
Other1
Other2
R3: All matchning av strängar för att avgöra om serviceDomain och categorization överensstämmer mellan meddelande och behörighetsfilter skall göras utan att ta hänsyn till versaler och gemener, dvs med ”IgnoreCase” semantik. Detta för att undika problem som uppkommer om olika intressenter använder versaler och gemener på olika sätt.

##### Icke funktionella krav

Inga specifika för denna tjänst.

###### SLA-krav

Inga avvikande krav som avviker från de generella kraven.

#### Annan information om kontraktet

Ingen övrig information om kontraktet.

#### 7.1 Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetLogicalAddresseesByServiceContractInteraction_2.0_RIVTABP21.wsdl](GetLogicalAddresseesByServiceContractInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetLogicalAddresseesByServiceContractResponder_2.0.xsd](GetLogicalAddresseesByServiceContractResponder_2.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_itintegration_registry_2.0.xsd](infrastructure_itintegration_registry_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Domänschema (delat, används fortfarande för LogicalAddress i SOAP-header enligt RIV TA Basic Profile 2.1 regel #8) |

#### 7.1 FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getlogicaladdresseesbyservicecontract](StructureDefinition-getlogicaladdresseesbyservicecontract.md)

**Request-modell: ej skapad som egen logisk modell — requesten innehåller endast två filterfält (`serviceConsumerHsaId`, `serviceContractNameSpace`) som dokumenteras i fältregeltabellen ovan.**

### GetSupportedServiceContracts

Tjänsten returnerar en lista över tjänstekontrakt (namnrymder) som stöds av en specifik logisk adressat. Varje huvudversion uppträder som ett eget tjänstekontrakt (namnrymd). Ett tänkt syfte med denna tjänst är att konsumenter med avancerad process-logik ska kunna använda tjänsten för att fastställa vilka tjänstkontrakt (eller huvudversioner av tjänster) som stöds av t.ex. en viss vårdenhet. Det är framför allt intressant för konsumenter av tjänstedomäner där vissa tjänstekontrakt är frivilliga att realisera. Om en logisk adressat (verksamhet så som vårdenhet) saknar stöd för ett av domänens frivilla tjänstekontrakt blir det underlag för hur den konsumerande e-tjänsten ska styra sitt flöde. Sedan v2.0 av tjänsten är fältet serviceConsumerHsaId frivilligt, det var obligatoriskt i v1.0.

#### Version

2.0

#### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| serviceConsumerHsaId | hsaId | Tjänstekonsument. Svaret innehåller bara de tjänstekontrakt som denna konsument har rättighet att använda mot angiven logisk adress. | 0..1 |
| logicalAdress | Text | Typ och betydelse definieras per tjänstedomän. | 1..1 |
| Svar |   |   |   |
| serviceContractNamespace | urn | Tjänstekontrakt som stöds av angiven logisk adress vid tidpunkten för anropet av GetSupportedServiceContracts. | 0..* |

#### Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. R1: Om tjänstekonsument är angiven så skall producenten ska filtrera svaret så att det endast innehåller de tjänstekontrakt som angiven konsument har rättighet att använda för angiven logisk adressat.

##### Icke funktionella krav

Inga specifika för denna tjänst.

###### SLA-krav

Inga avvikande krav som avviker från de generella kraven.

#### Annan information om kontraktet

Ingen övrig information om kontraktet.

#### 7.2 Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetSupportedServiceContractsInteraction_2.0_RIVTABP21.wsdl](GetSupportedServiceContractsInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetSupportedServiceContractsResponder_2.0.xsd](GetSupportedServiceContractsResponder_2.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_itintegration_registry_2.0.xsd](infrastructure_itintegration_registry_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Domänschema (delat, används fortfarande för LogicalAddress i SOAP-header enligt RIV TA Basic Profile 2.1 regel #8) |

#### 7.2 FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getsupportedservicecontracts](StructureDefinition-getsupportedservicecontracts.md)

**Request-modell: ej skapad som egen logisk modell — requesten innehåller endast två filterfält (`serviceConsumerHsaId`, `logicalAdress`) som dokumenteras i fältregeltabellen ovan.**

