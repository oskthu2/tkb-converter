# 2 Versionsinformation - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* **2 Versionsinformation**

## 2 Versionsinformation

## Versionsinformation

Denna revision av tjänstekontraktsbeskrivningen handlar om domänen clinicalprocess: healthcond: basic. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.2

#### Oförändrade tjänstekontrakt

Inga oförändrade tjänstekontrakt.

#### Nya tjänstekontrakt

Inga nya tjänstekontrakt.

#### Förändrade tjänstekontrakt

GetObservations version 1.2 Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| | | | |
| :--- | :--- | :--- | :--- |
| GetObservations | 1.1 | 1.0 | OK |
|   | 1.0 | 1.1 | Ej kompatibel (se R2) |

| | | | |
| :--- | :--- | :--- | :--- |
| GetObservations | 1.2 | 1.1 | OK |
|   | 1.1 | 1.2 | Ej kompatibel (se R2) |

#### Utgångna tjänstekontrakt

Inga tjänstekontrakt har utgått.

### Version tidigare

Tidigare domänversion 1.1.3

### Revisionshistorik

Revisionshistorik för tjänstekontraktsbeskrivningen (dokumentversion 1.2.1, 2025-07-07, enligt försättsbladet):

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0_RC4 | - | Tagit bort process- och delete-tjänster / Slagit ihop observations- och mätvärdeskontrakten / Uppdaterat kapitel 3 / Använder Socialstyrelsens NI-modeller som referensmodell | Torbjörn Dahlin |
| 1.0_RC4 | 2014-12-17 | Ändrat categorization ifrån chb-go till chb-o / Uppdaterat referenser / Tagit bort avsnittet kring EI GetUpdates då det inte stöds av plattformen. | Khaled Daham |
| 1.0_RC5 | 2015-02-25 | Tagit bort filter på clinical model / Textjusteringar samt rättningar kardinaliteter, och några saknade fält med mera / Ändrat villkor för tidsbaserade utsökningar. Nu matchas denna parameter endast om observation.time / Korrigeringar av infomodell i form av kardinaliteter, använder NI 2015:1 istället för pre-release versionen. / Lagt till optional attribut observation.status (från NI 2015:1) / Tagit bort device och location från observation group. Dessa är nu typer av additionalParticipant. / Möjlighet att ange namn på patient. / Ny del i ANY-datatypen för observation.value. Nu finns möjlighet att ange IVL`<TS>`. / Ändrat datatyp på ReferredInformationType till xs:string. / observationType.codeSystemVersion skall ignoreras som sökparameter. / referredInformationType i -relationsfilterparametern i begäran är nu obligatorisk att ange. / Ändrat kardinalitet för utsökning av relationer från 0..1 till 0..*. / Ändrat regel för vilka relationer som returneras. Ny regel är att endast de relationer som explicit matchar sökvillkor skall returneras. Om sökvillkoret är tomt returneras inga relationer, bara observationer som matchar övriga sökvillkor. / Location kan vara AdditionalParticipant / Attributet telecom har bytt namn till electronicAddress för att överensstämma med NI 2015:1 / Tidsattribut på additionalParticipant är nu frivilligt. / Tidsformatet hanterar nu variabel precision från sekund till att ange endast år. / AddressType använder nu PostalAddressUseEnum enligt specifikation. | Torbjörn Dahlin / Erik Nissen / Khaled Daham |
| 1.0_RC6 | 2015-03-09 | Justeringar i inledande texter / Justerat innebörden av id-begrepp för observationer (se beskrivning av klasser och attribut). / Beskrivning av behovet av interaktionsöverenskommelser / Ny parameter i begäran för att kunna explicit kräva att källsystemet svarar enligt överenskommelsens krav på semantisk interoperabilitet. / Lagt till kommentarer om att relationer i denna version inte får skapas mellan källsystem | Johan Eltes / Torbjörn Dahlin |
| 1.0_RC7 | 2015-05-18 | Korrigerat HSA-id som skall användas vid addressering till Inera. | Khaled Daham |
| 1.0_RC8 | 2015-12-02 | Tagit bort möjlighet att använda interaktionsöverenskommelse | Torbjörn Dahlin |
| 1.0_RC12 | 2016-01-20 | Uppdaterat dokumentdatum / Uppdaterat lista med godkända anslutningar i AB-bilaga / I övrigt inga förändringar i detta dokument efter version RC8 | Torbjörn Dahlin |
| 1.0 | 2016-02-05 | Uppdatering av tekniska artefakter, lagt till xs:any i de komplexa typer som saknade dessa. / Lagt till en referens för ärendehantering. / Lagt tillbaka patient.name då den av misstag tagits bort ur fältregeltabellen (schemat har dock varit intakt). | Khaled Daham |
| 1.0.1 | 2016-02-09 | Korrigerat typ och elementnamn för att söka mot ett källsystem. sourceSystem [SourceSystemType] -> sourceSystemHSAId [HSAIdType] | Khaled Daham |
| 1.0.2 | 2016-11-14 | Uppdaterat SLA-tabell enligt ärende #349 | Khaled Daham |
| 1.0.3_RC1 | 2017-04-19 | Testsvit uppdaterad | Björn Pettersson |
| 1.0.4 | 2017-06-21 | Testsviter och självdeklaration uppdaterad | Magnus Söderlind |
| 1.0.5 | 2017-10-03 | Kontroll av förekomst av tomma element tillagt som schematrontest. / Kontroll att recordId:s är unikta i svaret. / Förtydligande att pq.unit ska sättas till 1 om värdet av en observation är enhetslöst. | Magnus Söderlind / Emmy Damberg |
| 1.0.6 | 2018-04-03 | Uppdaterat enligt ärende | Khaled Daham |
| 1.0.6 | 2018-10-16 | Test: Uppdateringar i SJD och testförbättringar i testsviter, framförallt tidsfiltrering. Testsvit 7 & 8 tillkommer. | Magnus Söderlind |
| 1.0.6 | 2019-03-25 | Lagt till SjD för konsument och uppdaterat mock | Jan Söderman |
| 1.0.6 | 2019-10-10 | Uppdaterat fältregler för att hantera spärr, sammanhållen journalföring och patientens direktåtkomst. Det krävs nu att namn på personal är angivet i personklassen för att stödja sammanhållen journalföring och patientens direktåtkomst. Fältreglerna har setts över och fått ny numrering och setts över. Uppdaterade fältregler avseende låsning och legal authenticator. | Torbjörn Dahlin |
| 1.0.7 | 2020-04-07 | Uppdaterat fältregler för relation för att förtydliga förväntat resultat om inte relation har använts som urvalsfilter. Uppdatering gjort enligt bitbucket issue: här / Uppdatering av brutna länkar i referenslistan / Ändrat användning av vård- och omsorg (tex vård och omsorgspersonal) till hälso- och sjukvård (tex hälso- och sjukvårdspersonal). | Maja Hedengren |
| 1.0.8 | 2020-07-08 | Bytt ut förkortningar PNR, resp. SNR till personnummer, resp. samordningsnummer / Bytt ut alla förekomster av skall till ska och förekomster av oid till OID. / Ersätt SOSFS 2008:14 med HSLF-FS 2016:40, då förstnämnda är utgången. Lagt till tillhörande referenser R7 och R8 / Uppdaterat länkar under Referenser / Lagt till referens för Kodverkslistan, dvs R9, där kodverket Kv kön finns / Tagit bort mappningar mot V-TIM från mappningstabellen för tjänstekontraktet samt övriga referenser till mappningen, efter A&R beslut om att mappningen ska tas bort. / Fastställt version 1.0.8 | Claudia Ehrentraut |
| 1.0.9 | 2020-11-25 | Uppdaterat versionsnummer. | Claudia Ehrentraut |
| 1.0.10 | 2021-04-19 / 2021-04-30 | Lagt till referens till ark_0040 / Lagt till referens till Personuppgiftstjänsten / Uppdaterat kap 4.3 / Uppdaterat länkar till kodverk / Uppdaterat beskrivningen för attribut som används för tidsfiltrering / Uppdaterat beskrivningen för attributet MostRecentContent under kap 4.1 / Uppdaterat beskrivningen av domänen respektive GO / Uppdaterat attributbeskrivning av attributet Relation i GO / Justerat regel 4 under Övriga regler / Lagt till Begrepp och Termer / Förtydligat beskrivning i attributet observationGroup/observation/id / Uppdaterat kap 3.1.2 | Tobias Blomberg |
| 1.0.11 | 2021-10-20 | Uppdaterat version | Tobias Blomberg |
| 1.0.12_RC1 | 2022-01-11 / 2022-03-18 | Textuella uppdateringar genom rättning av slarvfel, bland annat ändrat från aktivitet till observation på fåtal ställen. / Uppdaterat beskrivningen för interaktionsöverenskommelser. / Uppdaterat beskrivningen för elementet sourceSystemHSAId | Tobias Blomberg |
| 1.0.12 | 2022-03-22 | Version godkänd | Tobias Blomberg |
| 1.0.13_RC1 | 2022-10-11 | Tagit bort möjligheten att indikera låsning för journalinformation genom att ta bort fält 7 under övriga regler. / Uppdaterat formateringen i fältregeltabellen. | Tobias Blomberg |
| 1.0.13 | 2022-11-21 | Version godkänd | Tobias Blomberg |
| 1.1 | 2023-04-04 | Fört över till ny mall. / Uppdaterat ”Övriga regler” få formatet stämmer med övriga tjänstekontrakt. | Tobias Blomberg |
| 1.1.1 | 2024-02-16 | Stegrat versionnummer. Inga ändringar i detta dokument. | Tobias Blomberg |
| 1.1.2 | 2024-04-04 | Stegrat versionnummer. Inga ändringar i detta dokument. | Tobias Blomberg |
| 1.1.3 | 2024-04-29 | Tydliggjort beskrivningar för attributet patientId i begäran. / Tydliggjort hur performerRole.id ska användas tjn-401 / Tydliggjort hur performerRole.person ska användas tjn-401 / Tydliggjort hur additionalParticipant.id ska användas tjn-401 / Tydliggjort hur additionalParticipant.person ska användas tjn-401 / Delat upp regel 2.1 under Övriga regler i två; 2.1 samt 2.2 för att dessa ska bli lättare att förstå. / Tagit bort en Övrig regel gällande additionalParticipant som nu täcks av texter i attributsbeskrivningarna. | Tobias Blomberg |
| 1.2 | 2024-04-01 | Tagit bort del av övrig regel 2.3 som kräver att LegalAuthenticator.name anges för sammanhållen journalföring. / Lagt till möjligheten att använda PQIntervalType för att ange observationsresultat. / Ändrat beskrivningen av klassen device genom att ta bort termen ”medicinteknisk” för att möjliggöra annan typ av utrustning än enbart medicinteknisk utrustning. |   |

