Hantera hälsorelaterade tillstånd, basuppgifter clinicalprocess:healthcond:basic
Tjänstekontraktsbeskrivning

![Version 1.2.1
2025-07-07](images/img_003.png)

![Version 1.2.1
2025-07-07](images/img_008.png)
Version 1.2.1
2025-07-07
Innehållsförteckning
1	Inledning	10
1.1	Svenskt namn	10
1.2	Beskrivning	10
2	Versionsinformation	11
2.1	Version 1.2	11
2.1.1	Oförändrade tjänstekontrakt	11
2.1.2	Nya tjänstekontrakt	11
2.1.3	Förändrade tjänstekontrakt	11
2.1.4	Utgångna tjänstekontrakt	11
2.2	Version tidigare	12
3	Tjänstedomänens arkitektur	13
3.1	Flöden	13
3.1.1	Hämta observationer	13
3.1.2	Beskrivning av relationskonceptet	16
3.2	Adressering	19
3.2.1	Sammanfattning av adresseringsmodell	19
3.3	Aggregering och engagemangsindex	20
3.4	Interaktionsöverenskommelser	20
4	Tjänstedomänens krav och regler	21
4.1	Uppdatering av engagemangsindex	21
4.1.1	Regler för tilldelning av värde i fältet Categorization i engagemangsindexposten för tjänstekontrakt i denna domän.	23
4.2	Informationssäkerhet och juridik	24
4.2.1	Medarbetarens direktåtkomst	24
4.2.2	Patientens direktåtkomst	24
4.2.3	Generellt	24
4.3	Icke funktionella krav	25
4.3.1	SLA krav	25
4.3.2	Övriga krav	26
4.4	Felhantering	26
4.4.1	Krav på en tjänsteproducent	26
4.4.2	Krav på en tjänstekonsument	27
4.4.3	Tekniska fel	27
5	Tjänstedomänens meddelandemodeller	28
5.1	V-MIM – Observationer	28
5.2	Formatregler	34
6	Tjänstekontrakt	35
6.1	GetObservations	35
6.1.1	Version	35
6.1.2	Fältregler	35
6.1.3	Övriga regler	56
6.1.4	Annan information om kontraktet	58
Revisionshistorik

| Version | Datum | Beskrivning av ändringar | Ändringar gjorda av |
| :--- | :--- | :--- | :--- |
| 1.0_RC4 | - | Tagit bort process- och delete-tjänster / Slagit ihop observations- och mätvärdeskontrakten / Uppdaterat kapitel 3 / Använder Socialstyrelsens NI-modeller som referensmodell | Torbjörn Dahlin |
| 1.0_RC4 | 2014-12-17 | Ändrat categorization ifrån chb-go till chb-o / Uppdaterat referenser / Tagit bort avsnittet kring EI GetUpdates då det inte stöds av plattformen. | Khaled Daham |
| 1.0_RC5 | 2015-02-25 | Tagit bort filter på clinical model / Textjusteringar samt rättningar kardinaliteter, och några saknade fält med mera / Ändrat villkor för tidsbaserade utsökningar. Nu matchas denna parameter endast om observation.time / Korrigeringar av infomodell i form av kardinaliteter, använder NI 2015:1 istället för pre-release versionen. / Lagt till optional attribut observation.status (från NI 2015:1) / Tagit bort device och location från observation group. Dessa är nu typer av additionalParticipant. / Möjlighet att ange namn på patient. / Ny del i ANY-datatypen för observation.value. Nu finns möjlighet att ange IVL<TS>. / Ändrat datatyp på ReferredInformationType till xs:string. / observationType.codeSystemVersion skall ignoreras som sökparameter. / referredInformationType i -relationsfilterparametern i begäran är nu obligatorisk att ange. / Ändrat kardinalitet för utsökning av relationer från 0..1 till 0..*. / Ändrat regel för vilka relationer som returneras. Ny regel är att endast de relationer som explicit matchar sökvillkor skall returneras. Om sökvillkoret är tomt returneras inga relationer, bara observationer som matchar övriga sökvillkor. / Location kan vara AdditionalParticipant / Attributet telecom har bytt namn till electronicAddress för att överensstämma med NI 2015:1 / Tidsattribut på additionalParticipant är nu frivilligt. / Tidsformatet hanterar nu variabel precision från sekund till att ange endast år. / AddressType använder nu PostalAddressUseEnum enligt specifikation. | Torbjörn Dahlin / Erik Nissen / Khaled Daham |
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
| 1.2 | 2024-04-01 | Tagit bort del av övrig regel 2.3 som kräver att LegalAuthenticator.name anges för sammanhållen journalföring. / Lagt till möjligheten att använda PQIntervalType för att ange observationsresultat. / Ändrat beskrivningen av klassen device genom att ta bort termen ”medicinteknisk” för att möjliggöra annan typ av utrustning än enbart medicinteknisk utrustning. |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | RIVTA flera dokument | Finns på Webben | Länk |
| R2 | Arkitekturella beslut – | Obligatoriskt | Bilaga |
| R3 | RIV Tekniska Anvisningar Översikt 2.0.1 | Finns på Webben | Länk |
| R4 | The Unified Code for Units of Measure | Standardmåttenheter för att använda som enhet för mätvärden | Länk
Version 1.9 (2013-10-22) eller senare. |
| R5 | Nationell Informationsstruktur (NI) Socialstyrelsen |  | Länk |
| R6 | Ärendehantering | Ärendehantering för tjänstekontrakten i den här domänen. | Länk |
| R7 | Senaste version av SOSFS 2016:40 (HSLF-FS 2016:40) Socialstyrelsens föreskrifter och allmänna råd om journalföring och behandling av personuppgifter i hälso- och sjukvården |  | Länk |
| R8 | Journalföring och behandling av personuppgifter i hälso- och sjukvården - Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården |  | Länk |
| R9 | Lista med förekommande kodverk i Nationella tjänstekontrakt |  | Länk |
| R10 | RIV Tekniska Anvisningar – Parallella huvudversioner av ett tjänstekontrakt | Finns på webben | Länk |
| R11 | Information om Personuppgiftstjänsten | Flera dokument | Länk |
Begrepp och termer

| Begrepp | Beskrivning |
| :--- | :--- |
| Personidentifierare | En identitetsbeteckning för att identifiera person, här i IT-system. Exempel: personnummer, samordningsnummer eller reservidentitet. |
| Personnummer | För varje folkbokförd person i Sverige fastställer Skatteverket ett personnummer som identitetsbeteckning. |
| Reservidentitet (även kallat reservnummer) | Tillfällig identitetsbeteckning för individ då säkerställt person- eller samordningsnummer saknas, t.ex. då individens identitet inte kan fastställas, vid vård i katastrofsituationer mm. |
| Lokal reservidentitet | Reservidentiteter som ges ut och hanteras lokalt i en organisation, t.ex. i ett landsting eller en kommun. |
| Individs huvudidentitet | Den nu gällande (aktuella) personidentifieraren för en individ. / Exempel1: En person har haft ett samordningsnummer, men får vid senare tillfälle ett personnummer. Personnumret blir personens nya huvudidentitet. / Exempel2: En patient i vården som inte är folkbokförd i Sverige får ett nationellt Reservid tilldelat hos en vårdgivare, eftersom patienten saknar personnummer/samordningsnummer. Senare konstateras hos vårdgivaren att patienten också haft en lokal reservidentitet där man dokumenterat en tidigare vårdkontakt. Vårdgivaren knyter den lokala lokal reservidentiteten till patientens nationella Reservid, vilket är patientens huvudidentitet. |
| Kopplade personidentifierare, kopplingsinformation | Flera personidentifierare för samma individ har kopplats samman i en IT-tjänst. Exempel: en patient har tidigare registrerats på ett nationellt ReservID, men identifieras senare med hens personnummer. ReservID kopplas till patientens personnummer i en stödtjänst för personuppgifter. |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
clinicalprocess: healthcond: basic
Tjänstekontraktet är baserade på RIVTA 2.1 [R1] och reglerat genom arkitekturella beslut [R2].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Vård- och omsorg kärnprocess: hantera hälsorelaterade tillstånd: basuppgifter
basuppgifter tillstånd

### Beskrivning
Denna domän hanterar information gällande observationer och mätvärden. Syftet med domänen är att tillgängliggöra journalförd strukturerad information om observationer och mätvärden från vårdverksamheter för återanvändning i olika syften. Informationen i familjen av kontrakt som detta kontrakt tillhör möjliggör ett sätt att representera komplexa kliniska sammanhang i atomära delar. De atomära delarna sammanfogas med hjälp av sambandsklasser som kan skapa relationer mellan respektive del. Ett exempel på detta kan vara att det finns ett explicit dokumenterat samband mellan en ställd diabetes typ-1 diagnos och tidigare tagna blodglukosmätningar.
Tjänstedomänen ställer krav på att informationen är strukturerad och kodad. Denna domän ska tillgodose behov av återanvändning av strukturerad observationsinformation som finns hos exempelvis kvalitetsregister, uppföljningssystem, system för den enskildes direktåtkomst, system för utlämnande, system för professionens åtkomst till sammanhållen journalföring och centrala system för rapportering till olika former av myndighetsregister.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen clinicalprocess: healthcond: basic. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.2

#### Oförändrade tjänstekontrakt
Inga oförändrade tjänstekontrakt.

#### Nya tjänstekontrakt
Inga nya tjänstekontrakt.

#### Förändrade tjänstekontrakt
GetObservations version 1.2
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetObservations | 1.1 | 1.0 | OK |
|  | 1.0 | 1.1 | Ej kompatibel (se R2) |

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetObservations | 1.2 | 1.1 | OK |
|  | 1.1 | 1.2 | Ej kompatibel (se R2) |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Tidigare domänversion 1.1.3

## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Tjänsterna för beskrivning av observerade tillstånd erbjuder sökning av information i hälso- och sjukvårdgivarnas system för patientadministration och hälso- och sjukvårdsdokumentation. Utgångspunkten för tjänsterna i denna tjänstedomän är att historisk information sammanställs från det eller de källsystem där det finns historik via s.k. aggregerande tjänster, snarare än att begära information från ett specifikt system eller en specifik verksamhet. Som en följd av detta kravställer tjänstedomänen uppdatering av engagemangsindex.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det specifika systemet, istället för den aggregerande tjänsten, i syfte att söka fram information om just den händelse som orsakade notifieringen.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna.

### Flöden
Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras.

#### Hämta observationer
Nedanstående diagram visar hur flödet ser ut när information om observationer hämtas.

##### Arbetsflöde

![img_004.png](images/img_004.png)
*Figur 1. Exempel: Adressering vid anrop till aggregerande tjänst från patienttjänst (t.ex. från Mina Vårdkontakters tjänst för journalåtkomst).*

![img_009.png](images/img_009.png)
*Figur 2. Exempel: Adressering vid anrop till aggregerande vårdgivartjänst (t.ex. från NPÖ-tillämpningen).*

##### Sekvensdiagram
Siffrorna i diagrammet nedan kopplar ihop begäran-svar för respektive meddelande.

![img_002.png](images/img_002.png)
*Figur 3. Sekvensdiagram över sökning efter information*

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Aggregerande tjänst | En aggregerande tjänst är en integrationstjänst som för en tjänstekonsument sammanställer en nationell vy av informationen av den typ som är aktuell för tjänsten i fråga. Är beroende av engagemangsindex för att begränsa sökningen till relevanta informationsägare. |
| Engagemangsindex | En tjänst där det finns uppdaterade nationella index över vilka informationsägare som har information kring en viss invånare/patient. |
| Vårdinformationssystem 1 och 2 | Det system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

#### Beskrivning av relationskonceptet
Kontrakt i tjänstedomänen har stöd för att peka ut relaterade informationsmängder. Konceptet är till för att en tjänsteproducent skall kunna förmedla till en tjänstekonsument att det finns relaterad information att hämta. En aktivitet (blindtarmsoperation) kan exempelvis ha en relation till en tidigare observation (blindtarmsinflammation). Relationen har en viss typ vilket i ovanstående exempel skulle kunna vara ”har orsak”. En relaterad informationsmängd pekas ut med hjälp av typen ReferredInformationType där fältet type beskriver vilken informationstyp som är refererad och följer tabellen för engagemangsindex-kategori, enligt fältet ”categorization”, t.ex. chb-o för att referera till en annan observation. För att filtrera ut den källa som lagrar den relaterade informationsmängden används det HSA-id som återfinns i ObservationGroup/observation/relation/referredInformation/id/root som värde i sökparametern SourceSystemHSAId och som logisk adress.

##### Exempel på relaterad information/samband
I detta exempel har en patient en tidigare satt diagnos (observation) K35.2 Akut appendicit med generaliserad peritonit. På grund av denna diagnos utförs en appendektomi (aktivitet). Vid ett senare tillfälle upptäcks att en MRSA-infektion har uppkommit i operationssåret (observation).

![img_007.png](images/img_007.png)
För detaljerade beskrivningar av klasser och attribut ovan se [R5].
Ifall dessa data lagras i olika system, så är förutsättningen, för anrops-flödet i nästa avsnitt att identiteter för orsakande diagnos respektive operation har förmedlats vidare till nästa system i behandlingskedjan.
Ovanstående modell skulle kunna tänkas återspegla att en patient på en närakut får diagnosen Akut Appendicit och sänds med en akutremiss till det lokala sjukhuset. Via remissen förmedlas identiteten på den satta diagnosen i primärvårdssystemets journalsystem. När sedan operationen dokumenteras skapas ett explicit orsakssamband till den tidigare diagnosen. Tre veckor efter operationen kommer patienten tillbaka till primärvården för att operationssåret inte vill läka. Efter ett labbprov konstateras en MRSA-infektion. Läkaren använder möjligheten att söka i sammanhållen journal efter patientens samtycke och hittar då den dokumenterade aktiviteten Appendektomi som utfördes på sjukhuset. Genom att skapa ett orsakssamband mellan MRSA-infektionen och ingreppet får den opererande verksamheten möjlighet att följa upp sina operationskomplikationer även om patienten inte kom direkt till dem med det uppkomna problemet.

##### Sekvensdiagram
I detta exempel hämtas de operationstyper (aktiviteter) ut som man planerar följa upp. För att se vad orsaken var till operationer samt eventuella komplikationer hämtas sedan relaterade observationer före och efter operationen. Respektive händelse har dokumenterats i olika vårdsystem, men eftersom det finns engagemangsindexposter för observationstjänsten i både system 2 och 3 kommer båda dessa system tillfrågas två gånger i nedanstående sekvens (se 3.1.1.2 Sekvensdiagram för enkel begäran för detaljerad beskrivning av hur anrop sker i aggregerad tjänst). En konsument som  kräver följsamhet till en viss uppsättning interaktionsöverenskommelser skulle i exemplet nedan ange dessa som inparametrar vid anropen till GetActivities respektive GetObservations.
Nedan så har t ex system 2 kännedom om diagnosen, vilket redan har förmedlats till system 1 där operationen finns registrerad, inklusive dess orsak (med identitet enligt system 2). Slutligen så finns t ex i system 3 komplikationer noterade, vilka är relaterade till operationens identitet (enligt system 1).

![img_006.png](images/img_006.png)
*Figur 4. Sekvensdiagram för komplext flöde.*

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument / (för uppföljning) | Det system som används för att konsumera information. D.v.s. det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform
(GetActivities & GetObservations) | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| GetActivities/Get Observations system
1, 2, & 3 | De system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

### Adressering
Tjänstedomänen tillämpar källsystemsadressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem direkt. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA-id. Det sker genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSA-id finns då i svarsmeddelandet) eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direktadressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten.
Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt, Rev PD2, avsnitt 8.3, där mer information kan hittas.

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| Nationellt | Ineras HSA-id / QA: 5565594230 / Prod: 5565594230 |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

### Aggregering och engagemangsindex
Det behövs en aggregerande tjänst för varje tjänstekontrakt som läser data i denna domän.
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystemets HSA-id anges som logisk adress, kommer tjänsteplattformen att dirigera frågemeddelandet vidare direkt till källsystemet utan att passera en aggregerande tjänst.
Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex – vidarebefordrar frågan till de källsystem som har information om patienten.

### Interaktionsöverenskommelser

![img_005.png](images/img_005.png)
Konsumenter och producenter av information inom denna tjänstedomän kan inte enbart förlita sig på informationsspecifikation och tjänstekontraktsbeskrivning för att uppnå semantisk interoperabilitet. Skälet till detta är att kombinationen av typade relationer och möjligheten att använda godtyckliga kodverk för att beskriva en viss klinisk händelse ger möjlighet att skapa detaljerade modeller byggda som sammansättningar av dessa tjänster.
En interaktionsöverenskommelse utgör en överenskommelse om kliniska egenskaper som ska gälla för den information som tjänstekonsumenten efterfrågar inom ramen för ett tjänsteanrop. Under förutsättning att tjänsteproducenten stöder innebörden av interaktionsöverenskommelsen ska den returnera data enligt sökparametrarna. Om stöd saknas skall tjänsteproducenten returnera ett tomt svar.  En interaktionsöverenskommelse är specifik för ett tjänstekontrakt (t.ex. GetObservations). En överenskommelse kan exempelvis beskriva hur en kroppslängd mätt i centimeter representeras i GetObservations-interaktionen, samt eventuella relationer till andra informationsmängder som ett producentsystem förväntas producera för denna överenskommelse.
En tjänstekonsument av en viss typ kan kräva stöd för ett antal interaktionsöverenskommelser för att kunna utföra sin uppgift. En systemägare till ett producentsystem kan använda denna lista med interaktionsöverenskommelser som en beställning till sin systemleverantör.

## Tjänstedomänens krav och regler

### Uppdatering av engagemangsindex
Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.
All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet
urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”)
Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning för detaljer.
Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| Attribut | Beskrivning | Format | Kardinalitet | Kodverk/värde-mängd 
/ev begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens person-nummer | Personnummer eller samordningsnummer enligt Skatteverkets definition (12 tecken). / Lokal reservidentitet får ej användas. | 1..1 |  | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän1>:<underdomän2> | 1..1 | ”riv:clinicalprocess:healthcond:basic” | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Informationsmängd som finns i källsystemet för angiven patient och som indexposten avser. Anges med kortform enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Samma värde som fältet Source System. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – d.v.s. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | UUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Tidpunkt för senaste uppdatering av den informationstyp och patient i den källa som denna indexpost avser. | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttag. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. post uppdateras med tidpunkt för borttagshändelsen. |  |
| Creation / Time | Tidpunkten då indexposten registrerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Upp-datering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Källsystemet som genererade engagemangs-posten via Update-tjänsten | Systemets HSA-id.  För system-adresserade tjänstedomäner motsvarar detta LogicalAddress vid anrop till tjänster i tjänstedomänen i fråga. Detta är inte anslutningspunktens HSA-id utan systemet som operativt hanterar informationen i verksamheten. | 1..1 | Systemadressering tillämpas. Detta värde används som LogicalAddress vid tjänsteanrop. | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Vårdgivarens organisationsnummer eller HSA-id / eller inom källsystemet unik identifierare för vårdgivaren. | 1..1 | ”SE”<organisationsnummer>. Exempel: ”SE5565594230” eller HSA-id, eller / systemspecifik identitet. | Del av instansens unikhet |

#### Regler för tilldelning av värde i fältet Categorization i engagemangsindexposten för tjänstekontrakt i denna domän.
Kortnamnet skapas enligt konventionen första bokstaven i domännamnets komponenter ”-” första bokstaven i tjänstekontraktets namnkomponenter:

| Informationsmängd enligt Tjänstekontrakt | Värde på Categorization |
| :--- | :--- |
| GetObservations | chb-o |

### Informationssäkerhet och juridik

#### Medarbetarens direktåtkomst
Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till sammanhållen journal för att patientdatalagen efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke, vårdrelation och åtkomstloggning måste följas. Dessutom finns krav från Integritetsmyndigheten om ytterligare teknisk åtkomstkontroll.
HSLF-FS 2016:40 [R7] ställer också krav (via handboken "Journalföring och behandling av personuppgifter i hälso- och sjukvården" [R8]) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet).
Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande sammanhållen journalföring och eller krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vårdgivare (sammanhållen journalföring) eller andra vårdenheter inom egna vårdgivaren (spärrkrav).

#### Patientens direktåtkomst
Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten (informationsägaren) godkänt att informationen får visas för patient. Det kan t.ex. ha skett genom menprövning eller rådrum. För vissa av tjänstekontrakten, såsom hälso- och sjukvårdskontakter, kanske informationsägaren policymässigt har menprövat all information. Det är varje vårdgivares ansvar att tjänsteproducenten sätter ”kan visas för patient”-flaggan i enlighet med vårdgivarens verksamhetsregler.

#### Generellt
Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument - varit exkluderade i frågan.

### Icke funktionella krav
Det är den informationsproducerande vårdgivarens ansvar att endast ett källsystem tillhandahåller informationen via lästjänst och engagemangsindex där patientdata lagras i flera källsystem. Konsumenter som är anslutna till flera majorversioner av samma kontrakt måste hantera dubblettborttagning mellan dessa. Detta sker genom att jämföra identiteter på postnivå och endast behålla en av de poster som returnerats, se referens 10.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | Svarstiden för ett anrop får inte överstiga 27 sekunder |  |
| Tillgänglighet | 24x7, 99,5% | Vid katastrof, bortfall av hel hall är maximal otillgänglighet 1 dygn. |
| Last | 10 transaktion per sekund |  |
| Aktualitet | Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. Fördröjningen avser både journaldata och uppdatering av engagemangsindex. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. |  |
| Robusthet | Om komplett tidsintervall inte angivits i frågan kan tjänsteproducenten välja att lämna ett delsvar i syfte att uppfylla svarstidskravet. Delsvaret måste då vara avgränsat i tiden genom att det finns äldre men inte nyare data än det äldsta som returnerats. | Robusthet |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. | Samtidighet |

#### Övriga krav

##### Gemensamma konsumentregler
R1: Visa ej information för patient då flagga ”approvedForPatient”  är falsk
R2: Tillämpa regelverk enl. PDL
R3: Vid anrop skall individens huvudidentitet användas, den bör erhållas ifrån en nationell masterkälla [R11]

##### Gemensamma producentregler
R1: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.
R2: Skall returnera all information kopplat till individens huvudidentitet, även den information som ev. tidigare har registrerats på andra till individen kopplade identiteter.

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Logiska fel returneras inte i denna domän.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (Soap Fault).
Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel.
Tekniska fel får inte förmedla känsliga personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning.

#### Krav på en tjänstekonsument

##### Logiska fel
N/A.

#### Tekniska fel
Tekniska fel definieras med en text och en kod i ett Soap Fault. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot NI 2015:1 [R5] samt mot schema (XSD) för tjänstekontrakt.

### V-MIM – Observationer

![img_010.png](images/img_010.png)
*Figur 5. Mörkblå klasser och cyanfärgade markeringar visar skillnader från NI release 2015:1. I vissa fall är det endast en avvikande kardinalitet.*

| XSD Schema | Mappning mot NI 2015 release 1
(eller V-MIM enligt ovan) |
| :--- | :--- |
| ObservationGroup. sourceSystem | NI 2015.1 / Saknar motsvarighet / I V-MIM / Källsystem.id |
| Observation.id | Uppgift i patientjournal.id |
| Observation.type | Observation.typ |
| Observation.status | Observation.status |
| Observation.time | Observation.tid |
| Observation.method | NI 2015.1 / Saknar motsvarighet / I V-MIM / Observation.metod |
| Observation.value | Observation.värde |
| Observation.targetSite | Observation.lokalisation |
| Observation.valueNegation | Observation.negation |
| Observation.description | Observation.beskrivning |
| Observation.RegistrationTime | Uppgift i patientjournal.dokumentationstidpunkt |
| Observation.approvedForPatient | NI 2015.1 / Saknar motsvarighet / I V-MIM / Uppgift i patientjournal.godkändFörUtlämnandeTillPatient |
| Location.id | NI 2015.1 / Saknar motsvarighet / I V-MIM / Plats.id |
| Location.name | NI 2015.1 / Saknar motsvarighet / I V-MIM / Plats.namn |
| Location.address | NI 2015.1 / Saknar motsvarighet / I V-MIM / Plats.adress |
| Location.electronicAddress | NI 2015.1 / Saknar motsvarighet / I V-MIM / Plats.elektroniskAdress |
| Patient.id | Person.person-id/Patient.id |
| Patient.name | Person.förnamn
Person.efternamn
Person.mellannamn / Person.tilltalsnamnsmarkering |
| Patient.dateOfBirth | Person.födelsetidpunkt |
| Patient.gender | Person.kön |
| LegalAuthenticator.id | NI 2015:1 / Saknar motsvarighet / I V-MIM / Deltagande(signerare)->Professionell aktör.id |
| LegalAuthenticator.time | NI 2015.1 / Saknar motsvarighet / I V-MIM / Deltagande(signerare).tid |
| LegalAuthenticator.name | NI 2015.1 / Saknar motsvarighet / I V-MIM / Deltagande(signerare)->Professionell aktör->Person.förnamn + Person.efternamn |
| SourceSystem.id | NI 2015.1 / Saknar motsvarighet / I V-MIM / Källsystem.id |
| Relation.code | Samband.typ |
| ReferredInformation.id | NI 2015:1 / Uppgift i patientjournal.id / I V-MIM / Referens till Uppgift i patientjournal.id |
| ReferredInformation.time | NI 2015:1 / Saknar motsvarighet / I V-MIM / Referens till Uppgift i patientjournal.tidpunkt |
| ReferredInformation.type | NI 2015:1 / Saknar motsvarighet / I V-MIM / Saknar motsvarighet |
| InformationOwner.id | NI 2015:1 / Saknar motsvarighet / I V-MIM / Källsystem.id |
| PerformerRole.id | NI 2015:1 / Saknar motsvarighet / I V-MIM / Deltagande->Roll->Professionell aktör.id eller patient.id/person.person-id |
| PerformerRole.code | NI 2015:1 / Saknar motsvarighet / I V-MIM / Deltagande->Roll.typ |
| Person.id | Person.person-id |
| Person.name | Person.förnamn / Person.mellannamn / Person.efternamn / Person.tilltalsnamnsmarkering |
| CareUnit.id | NI 2015:1 / Organisation.id / I V-MIM / Organisation(vårdenhet).id |
| CareUnit.name | NI 2015:1 / Organisation.namn / V-MIM / Organisation(vårdenhet).namn |
| CareGiver.id | NI 2015:1 / Organisation. id / V-MIM / Organisation(vårdgivare).id |
| CareGiver.name | NI 2015:1 / Organisation.namn / V-MIM / Organisation(vårdgivare).namn |
| AdditionalParticipant.id | NI 2015.1 / Saknar motsvarighet / V-MIM / Professionell aktör.id (om sådan deltagare) |
| AdditionalParticipant.type | Deltagande.typ |
| AdditionalParticipant.role | NI 2015.1 / Saknar motsvarighet / V-MIM / Roll.typ |
| AdditionalParticipant.time | Deltagande.tid |
| Device.id | NI 2015.1 / Saknar motsvarighet / V-MIM / Utrustning.id |
| Device.type | NI 2015.1 / Saknar motsvarighet / V-MIM / Utrustning.typ |
| Device.model | NI 2015.1 / Saknar motsvarighet / V-MIM / Utrustning t.modell |

### Formatregler
Inga utöver de som beskrivs i samband med fältregler.

## Tjänstekontrakt

### GetObservations
Detta tjänstekontrakt returnerar strukturerade observationer för en patient. Den praktiska tillämpningen av detta kontrakt beskrivs i särskilda tilläggsbeskrivningar i form av interaktionsöverenskommelser.
En typ av observation kan exempelvis vara ett kliniskt fynd eller en huvuddiagnos. Värdeattributet innehåller den faktiska observationen, t.ex. ”ankylos på tand” kodat med en Snomed CT-kod. Om observationen består av något som är uppmätt så beskrivs vad som uppmätts i attributet Observation.type/typ (exempelvis diastoliskt blodtryck) och resultatet av mätningen i Observation.value/värde (exempelvis 90 mmHg).
Meddelandemodell från stycke 5.1 V-MIM - Observationer motsvarar svarsmeddelandet för detta tjänstekontrakt. Kopplingen mellan V-MIM enligt NI 2015:1 och de tekniska engelska namnen visas i tabellen i samma avsnitt.

#### Version
1.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

##### Begäran

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientId | IIType | Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare. / Regel 1.1 | 1 |
| patientId.root | String | Sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. | 1 |
| patientId.extension | String | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1 |
| time | TimePeriodType | Begränsar sökningen till det angivna intervallet. Om tidsattributet Observation.Time i svaret är en tidpunkt innebär begränsningen att endast poster returneras där Observation.Time i svaret ligger inom sökintervallets start- och sluttidpunkt. / Om tidsattributet Observation.Time i svaret är ett intervall innebär begränsningen att endast poster returneras där tidsintervallet som anges i attributet Observation.Time i svaret, överlappar med det angivna sökintervallet, dvs. / det bildade intervallets starttidpunkt ligger inom sökintervallets start- och sluttidpunkt / det bildade intervallets sluttidpunkt ligger inom sökintervallets start- och sluttidpunkt / det bildade intervallets starttidpunkt ligger före sökintervallets starttidpunkt och sluttidpunkt ligger efter sökintervallets sluttidpunkt | 0..1 |
| time.start | TimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| time.end | TimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| observationType | CVType | Begränsning av sökning avseende observationen till en viss typ av värde som man vill titta närmare på, t.ex. kliniskt fynd eller diagnoser. | 0..* |
| observationType.code | String | Kod för observationstyp | 1 |
| observationType.codeSystem | String | Kodsystem för angiven kod för observationstyp. | 1 |
| observationType.codeSystemName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationType.codeSystemVersion | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationType.displayName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationId | IIType | Ett unikt värde för själva observationen som också refererar till vilket källsystem informationen kommer ifrån. Motsvarar observation/id i svaret. | 0..* |
| observationId.root | String | Källsystemets HSA-id. | 1 |
| observationId.extension | String | Det i källsystemet unika identiteten för observationen | 1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.  Motsvarar observationGroup/sourceSystem i svaret. | 0..1 |
| careGiverId | IIType | Används när man vill söka hos en specifik vårdgivare. | 0..1 |
| careGiverId.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| careGiverId.extension | String | Extension sätts till HSA-id för den vårdgivaren från vilken observationer skall returneras från. | 1 |
| careUnitId | IIType | Begränsning av sökning mha HSAid för (PDL) vårdenhet som har ansvar för dokumentationen av obdervationen/observationerna. | 0..1 |
| careUnitId.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| careUnitId.extension | String | Extension sätts till HSA-id för PDL-vårdenheten. | 1 |
| interactionAgreementId | UUIDType | Detta attribut används inte. Ange UUID / 2866a7c4-9c60-433f-9035-a4d779ffe7a1 | 1..1 |
| relation | RelationFilterType | Endast de poster med relationer som matchar villkoren i denna lista skall returneras. Om listan är tom filtreras inte observationer på deras relationer. | 0..* |
| relation.typeCode | CVType | Filtrera på sambandstyp | 0..1 |
| relation.typeCode.code | String | Kod för sambandstyp | 0..1 |
| relation.typeCode.codeSystem | String | Kodsystem för sambandstyp | 0..1 |
| relation.typeCode.codeSystemName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| relation.typeCode.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| relation.typeCode.displayname | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| relation.id | IIType | Filtrera poster på den identitet som anges i sambandet/relationen. Detta ger exempelvis möjlighet att söka ut alla observationer som har en relation till en viss aktivitet. | 0..1 |
| relation.id.root | String | Id-root från den Uppgift i patientjournal som sambandet pekar ut. Detta är den vårdgivares HSA-id som är ansvarig för informationen. | 0..1 |
| relation.id.extension | String | Id-extension från den uppgift i patientjournal som sambandet pekar ut. Detta ska vara ett id som är unikt inom vårdgivaren oavsett vilket källsystem informationen lagras inom. | 0..1 |
| relation. referredInformationType | String | Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. I denna version av tjänstekontraktet är följande typer möjliga: / chb-o  (observation) / caa-a (aktivitet) | 1..1 |

##### Svar: observationGroup

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| observationGroup | ObservationGroupType | Grupp av observationer som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera observationer gjorts med samma medverkande (exempelvis mätning av systoliskt och diastoliskt blodtryck). Denna klass är en teknisk optimering som inte speglas i NI 2015:1. | 0..* |
| patient | PatientType | Den patient som observationsgruppen avser. | 1..1 |
| performerRole | PerformerRoleType | Den som utfört observationerna inom gruppen. | 1..1 |
| legalAuthenticator | LegalAuthenticatorType | Den som signerat observationerna inom gruppen. | 0..1 |
| additionalParticipant | AdditionalParticipantType | Övriga deltagare relaterat till observationerna inom gruppen. | 0..* |
| sourceSystem | SourceSystemType | Källsystem som observationsgruppen lagras i. | 1..1 |
| observation | ObservationType | De observationer som ligger inom denna grupp av observationer. | 1..* |

##### Svarsdel: observationGroup/patient
Klassen PatientType är en kompakt och specifik representation av den patient som observationen gäller.

| observationGroup/ / patient | PatientType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för patienten. Skall anges med 12 tecken utan avskiljare. | 1 |
| id.root | String | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1) användas.
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) användas.
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1 |
| id.extension | String | Personnummer/samordningsnummer/reservnummer. | 1 |
| name | String | Personens namn | 0..1 |
| dateOfBirth | DateTime | Anger patientens födelseår, månad och dag. Ej personnummer! / Datum. Format ÅÅÅÅMMDD | 1 |
| gender | CVType | Anger patientens kön. | 0..1 |
| gender.code | String | Kod för könstyp. / 0 okänt / 1 man / 2 kvinna / 9 ej tillämpligt | 1 |
| gender.codeSystem | String | Kodsystem för angiven kod för könstyp. / KV kön (OID: 1.2.752.129.2.2.1.1) [R9] | 1 |
| gender.codeSystemName | String | Namn för kodsystem. | 0..1 |
| gender.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| gender.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
|  |  |  |  |

##### Svarsdel: observationGroup/performerRole

| observationGroup/ / performerRole | PerformerRoleType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Identitet för personen som utfört observationen. / Detta fält anges enbart om observationen utförts av hälso- och sjukvårdspersonal. Anges med HSA-id. / Regel 2.1 | 0..1 |
| id.root | String | Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1). | 1 |
| id.extension | String | HSA-id för den hälso- och sjukvårdspersonal som utfört observationen. | 1 |
| code | CVType | Beskriver den roll som utföraren agerar i under observationen. | 1 |
| code.code | String | Kod för utförarroll. | 1 |
| code.codeSystem | String | Kodsystem för angiven kod för utförartyp. | 1 |
| code.codeSystemName | String | Namn på kodsystem. | 0..1 |
| code.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| code.displayName | String | Klartext för det som koden anger. | 0..1 |
| person | PersonType | Beskriver den person som utfört observationen. Klassen används i två fall: / Då det finns behov av att beskriva egenskaper hos person som utfört observation som inte beskrivs i performerRole (t.ex. namn på hälso- och sjukvårdspersonal) / Då observationen utförts av en person som inte klassas som hälso- och sjukvårdspersonal. / Regel 2.1 | 0..1 |
| careUnit | CareUnitType | Den PDL-vårdenhet och PDL-vårdgivare som observationen utförs på uppdrag av (där utföraren har sitt medarbetaruppdrag). / Ska endast anges då den person som utfört observationen är hälso- och sjukvårdpersonal. / Regel 2.1 / Regel 2.5 | 0..1 |

##### Svarsdel:  observationGroup/legalAuthenticator
Klassen LegalAuthenticator är en kompakt och specifik version av AdditionalPartipication.
LegalAuthenticator är indirekt en ”Professionell aktör” med deltagandetyp signerare enligt V-MIM i de fall då informationen signerats.

| observationGroup/ / legalAuthenticator | LegalAuthenticatorType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | HSA-id för personen som signerat observationerna som ingår i observationsgruppen. / Regel 2.3 | 0..1 |
| id.root | String | Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) | 1 |
| id.extension | String | HSA-id | 1 |
| time | PartialTimeStampType | Tid för signeringen av observationerna i observationsgruppen. Uttrycks med formatet ÅÅÅÅMMDDttmmss där klockslaget är frivilligt. | 1 |
| name | String | För- och efternamn i klartext för signerande person. / Regel 2.3 | 0..1 |
|  |  |  |  |

##### Svarsdel:  observationGroup/additionalParticipant

| observationGroup/ / additionalParticipant | AdditionalParticipantType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för ytterligare deltagare. / Detta fält anges enbart om deltagaren klassas som hälso- och sjukvårdspersonal. Anges med HSA-id. / Regel 2.2 | 0..1 |
| id.root | String | Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1). | 1..1 |
| id.extension | String | HSA-id för den hälso- och sjukvårdspersonal som är ytterligare deltagare. | 1..1 |
| type | CVType | Typ av deltagande. Detta beskriver på vilket sätt en deltagare deltagit i observationen. Kan exempelvis vara sekundär utförare/assistent. Istället för person kan ”deltagandet” handla om utrustning (device) eller organisation eller plats. | 1..1 |
| type.code | String | Kod för typ av deltagande. | 1..1 |
| type.codeSystem | String | Kodsystem för typ av deltagande. | 1..1 |
| type.codeSystemName | String | Skall ej anges | 0..0 |
| type.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| type.displayName | String | Skall ej anges | 0..0 |
| role | CVType | Beskriver i vilken roll deltagaren agerar (exempelvis rollen som anhörig eller i sin yrkesroll som vårdpersonal). | 1..1 |
| role.code | String | Kod för deltagares roll | 1..1 |
| role.codeSystem | String | Kodsystem för deltagares roll | 1..1 |
| role.codeSystemName | String | Skall ej anges | 0..0 |
| role.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| role.displayName | String | Skall ej anges | 0..0 |
| time | TimePeriodType | Ifall deltagandetiden för denna deltagare inte överensstämmer med observationens tidsperiod kan time-attributet ange när den specifika deltagaren deltog i observationen. | 0..1 |
| Endast en av nedanstående | Endast en av nedanstående | Endast en av nedanstående | Endast en av nedanstående |
| person | PersonType | Deltagande övriga personer. | 0..1 |
| organisation | OrganisationType | Deltagande övrig organisation. | 0..1 |
| device | DeviceType | Deltagande utrustning. | 0..1 |
| location | LocationType | Deltagande plats. | 0..1 |
|  |  |  |  |

##### Svarsdel:  observationGroup/sourceSystem

| observationGroup/ / sourceSystem | SourceSystemType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | HSA-id för källsystemet som observationsgruppen hämtats ifrån. | 1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id för systemet | 1 |

##### Svarsdel:  observationGroup/additionalParticipant/device

| observationGroup/ / additionalParticipant/ / device | DeviceType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Angivelse av identitetsbeteckning på en viss verklig instans av utrustning, exempelvis MR-maskinen på avdelning R23, rum 3. | 0..1 |
| id.root | String | Typ av identitetsbeteckning. | 1 |
| id.extension | String | Specifikt id för utrustning. | 1 |
| type | CVType | Beskriver typ av deltagande utrustning. | 0..1 |
| type .code | String | Kod för typ av deltagande utrustning. | 1 |
| type.codeSystem | String | OID för kodsystem. | 1 |
| type.codeSystemName | String | Namn på kodsystem. | 0..1 |
| type.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| type.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| model | SCType | Modell för angiven utrustning. | 0..1 |
| model.code | CVType | Modellbeteckning | 0..1 |
| model.code.code | String | Kod för modellbeteckning | 1..1 |
| model.code.codeSystem | String | Kodsystem för modellbeteckning. | 1..1 |
| model.code.codeSystemVersion | String | Skall ej anges | 0..0 |
| model.code.displayName | String | Klartext för kod | 0..1 |
| model.value | String | Tillverkarens modellbeteckning i klartext. Kan användas som komplement eller i stället för den model.code (kod för modell). | 0..1 |

##### Svarsdel:  observationGroup/additionalParticipant/location
Klassen Location är en sammanslagning av typen roll och plats enligt V-MIM.

| observationGroup/ / additionalParticipant/ / location | LocationType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för platsen. Anges om platsen är en vårdenhet. | 0..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id. | 1 |
| name | String | Namn på den plats där observation har genomförts. | 1 |
| address | AddressType | Adress till plats | 0..* |
| electronicAddress | TelType | Elektronisk adress till plats | 0..* |
|  |  |  |  |

##### Svarsdel:  observationGroup/observation

| observationGroup/ / observation | ObservationType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | En unik identifierare för observationen som avses. Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| id.root | String | Vårdgivarens HSA-id. | 1 |
| id.extension | String | Den inom vårdgivaren eller källsystemet unika identifieraren för observationen. | 1 |
| type | CVType | NI 2015:1 / Kod som motsvarar den typ av observation som avses. Det som faktiskt är avsett, önskat eller observerat tillstånd dokumenteras i attributet värde [value]. Exempelvis kan typ [type] vara ”diagnos” vilket innebär att attributet värde [value] håller diagnosen. | 1 |
| type.code | String | Kod för observationstyp | 1 |
| type.codeSystem | String | Kodsystem för angiven kod för observationstyp. | 1 |
| type.codeSystemName | String | Namn på kodsystem. | 0..1 |
| type.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| type.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| status | CVType | NI 2015:1
Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller är ett potentiellt tillstånd. En instans av klassen observation kan inte byta status. Om man exempelvis vill dokumentera ett måltillstånd och som senare uppfylls så dokumenteras detta som två instanser av klassen observation, en med status måltillstånd och en med status observerat. / Om statuskoden utelämnas antas detta vara en faktisk observation som dokumenterats. | 0..0 / Denna version av specifikation tillåter endast faktiskt utförda observationer. |
| status.code | String | Kod för status | 1 |
| status.codeSystem | String | Kodsystem för angiven kod för status | 1 |
| status.codeSystemName | String | Namn på kodsystem | 0..1 |
| status.displayName | String | Textuell beskrivning av statuskod | 0..1 |
| targetSite | CVType | NI 2015:1 / Angivelse av lokalisation [targetSite], som används för att beskriva vad observationen avser gällande anatomi, funktion eller system. Lokalisation [targetSite] kan beskriva exempelvis lateralitet, organs position och orientering i relation till andra delar av kroppen. / Lokalisationsattributet [targetSite] används endast om inte attributet typ [type] innefattar tillräcklig information om detta. | 0..1 |
| targetSite.code | String | Kod för lokalisation. | 1 |
| targetSite.codeSystem | String | Kodsystem för angiven kod för lokalisation. | 1 |
| targetSite.codeSystemName | String | Namn på kodsystem. | 0..1 |
| targetSite.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| targetSite.displayName | String | Textuell beskrivning av kod för lokalisation. | 0..1 |
| time | PartialTimePeriodType | Tidsperiod för observationen. / Består av PartialTimeStampTypeintervallerna startTime respektive endTime. Vardera uttrycks på formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år. / Om observationen är en tidpunkt, inte ett intervall, sätts sluttid till samma tid som starttid. / Minst en av startTime och endTime måste vara angiven. / NI 2015:1 / Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma. Exempelvis så kan tidsattributet ange att patienten hade huvudvärk igår kväll mellan kl. 20.00 och 21.45 även om detta berättades på morgonen efter och det dokumenterades först då. Om observationen är ett måltillstånd anger tidsattributet när detta tillstånd önskas vara uppnått. / Observationens tid skiljer sig vanligtvis från dokumentationstidpunkt [observation.registrationTime]  i journalhandling som beskriver när tillståndet dokumenterades, vilket alltid sker i efterhand. | 1 |
| time.start | TimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| time.end | TimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| method | CVType | Kod för den typ av tillvägagångssätt för genomförandet av / obdervationen som avses | 0..1 |
| method.code | String | Kod för metodtyp. | 1 |
| method.codeSystem | String | Kodsystem för angiven kod för metodtyp. | 1 |
| method.codeSystemName | String | Namn för kodsystem. | 0..1 |
| method.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| method.displayName | String | Klartextbeskrivning av det begrepp som avses. | 0..1 |
| value | ValueANYType | Observations utfall/värde / NI 2015:1 / Angivelse av värde som innehåller resultatet av observationen. Exempelvis så skulle observationens typ (observation.type) kunna motsvara "längd mätt utan skor" och då innehåller värde-attributet resultatet av mätningen, exempelvis 168 cm. Om observationen avser ett måltillstånd motsvarar värde det resultat man önskar observera för att målet ska uppfyllas. | 1..1 |
| valueNegation | Boolean | Denna flagga negerar betydelsen av det som anges i value-fältet. Normalvärde är false, det vill säga att det som anges i value är en positiv utsaga. Detta ska tolkas som att man letat efter ett visst tillstånd och konstaterat att det inte föreligger. Om man i value exempelvis har diagnoskoden N19.9 (Njursvikt, icke specificerad som akut eller kronisk) och valueNegation är satt till true betyder detta att patienten inte har njursvikt. / NI 2015:1 / Flagga som negerar betydelsen av observationen. Det används för att dokumentera exempelvis att ett tillstånd inte har förekommit/observerats men att man explicit har letat efter det. Detta till skillnad från att inget dokumenterats om ett specifikt tillstånd vilket kan innebära att man inte utrett det överhuvudtaget. Det som negeras är förekomsten av det som beskrivs av värdet. Detta innebär att om exempelvis metod [method] och lokalisation [targetsite] anges ska negationen tolkas som att man med en viss metod har letat efter ett visst tillstånd som beskrivs av ett visst värde men att detta tillstånd inte har kunnat observeras. | 1..1 |
| description | String | Fritextbeskrivning av observationen där sådan kompletterar kodbeteckningen. | 0..1 |
| approvedForPatient | Boolean | Anger om information får delas till patient (menprövad). Värdet sätts i sådant fall till ”true”, i annat fall till ”false”. | 1 |
| registrationTime | TimeStampType | Dokumentationstidpunkt. När uppgiften registrerades i patientens journal. Kan skilja sig från signeringstidpunkt som återfinns i LegalAuthenticatior. | 0..1 |
| relation | RelationType | Beskriver typade samband till andra informationsmängder. Exempelvis kan en observation av en post-operativ infektion ha ett samband av typen ”har orsak” till en tidigare operation (aktivitet). | 0..* |

##### Svarsdel:  observationGroup/observation/value

| observationGroup/ / observation/ / value | ValueAnyType | Observations utfall/värde |  |
| :--- | :--- | :--- | :--- |
| En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper |
| Kodade värden | Kodade värden | Kodade värden | Kodade värden |
| cv | CVType | Här anges det som observerats som ett kodat värde. Kan exempelvis vara en diagnoskod enligt ICD-10 eller ett kliniskt fynd enligt Snomed CT. | 0..1 |
| cv.code | string | Kod för värdetyp. | 1..1 |
| cv.codeSystem | string | Kodsystem för angiven kod för värdestyp. | 1..1 |
| cv.codeSystemName | string | Namn för kodsystem. | 0..1 |
| cv.codeSystemVersion | string | Versionsnummer för använt kodsystem. | 0..1 |
| cv.displayName | string | Textuell beskrivning av det som koden anger. | 0..1 |
| Mätvärden | Mätvärden | Mätvärden | Mätvärden |
| pq | PQType | Här anges det mätvärde som uppmätts. Kan exempelvis vara 187 cm. | 0..1 |
| pq.value | decimal | Den numeriska delen av värdet (187). | 1..1 |
| pq.unit | string | Enhet enligt UCUM. / Om värdet av observationen är enhetslöst (exempelvis ett värde på en skala) ska unit sättas till 1. Exempel för värdet 2 för hudfärg på Apgarskalan: / pq.value=2 / pq.unit=1 | 1..1 |
| Mätvärdesintervall | Mätvärdesintervall | Mätvärdesintervall | Mätvärdesintervall |
| ivl_pq | PQIntervalType | Här anges det mätvärdesintervall som uppmätts. Kan exempelvis vara 5–10 st. | 0..1 |
| ivl_pq.low | decimal | Intervallets lägsta mätetal mätt i enheten som anges av ”unit”. Minst ett av fälten low och high måste anges. | 0..1 |
| ivl_pq.lowClosed | boolean | Angivelse av om värdet är en del av intervallet eller ej. Exempel:
lowClosed = true och low = 5 motsvarar intervallet ≥ 5
lowClosed = false och low = 5 motsvarar intervallet > 5 | 0..1 |
| ivl_pq.high | decimal | Intervallets högsta mätetal mätt i enheten som anges av ”unit”. Minst ett av fälten low och high måste anges. | 0..1 |
| ivl_pq.highClosed | boolean | Angivelse av om värdet är en del av intervallet eller ej. Exempel:
highClosed = true och high = 5 motsvarar intervallet ≤ 5
highClosed = false och high = 5 motsvarar intervallet <5 | 0..1 |
| ivl_pq.unit | string | Enhet enligt UCUM. / Om värdet av observationen är enhetslöst (exempelvis ett värde på en skala) ska unit sättas till 1. Exempel för värdet 2 för hudfärg på Apgarskalan: / pq.value=2 / pq.unit=1 | 1..1 |
| Tidpunkt | Tidpunkt | Tidpunkt | Tidpunkt |
| ts | PartialTimeStampType | Tidsstämpel på formatet YYYYMMDDhhmmss där precisionen kan minskas ner till endast årtal | 0..1 |
| Tidsintervall | Tidsintervall | Tidsintervall | Tidsintervall |
| ivl_ts | PartialTimePeriodType | Tidsintervall. Minst en av start och end tiderna skall anges på formatet  YYYYMMDDhhmmss  där precisionen kan minskas ner till endast årtal. | 0..1 |

##### Svarsdel:  observationGroup/additionalParticipant/location/address

| observationGroup/ / additionalParticipant/ / location/ / address/ | AddressType |  |  |
| :--- | :--- | :--- | :--- |
| use | PostalAddressUseEnum | Om flera adresser anges skiljs de åt via sin use-kod. Den primära/default adressen anges alltid utan use-kod / PHYS – Adress till fysisk plats/besöksadress / H – Hemadress / HV – Semesteradress / WP – Arbetsplats / TMP – Tillfällig adress / När det inte finns en adress med ”use” som matchar syftet med adressanvändningen, väljs den primära adressen. | 0..1 |
| part | AddressPartType |  | 1..* |

##### Svarsdel: observationGroup/additionalParticipant/location/address/part

| observationGroup/ / additionalParticipant/ / location/ / address/ / part | AddressPartType |  |  |
| :--- | :--- | :--- | :--- |
| value | String |  | 1..1 |
| type | AddressPartTypeEnum | Enumeration baserat på ISO 21090: / CAR = C/O (care of) adress / POB = Postbox / SAL = Gatuadressrad / ZIP = Postnummer / CTY = Postort / CNT = Land / PRE = Distriktsområde (LKF-kod) / CPA = Län (anges med länskod enligt SCB) / Koderna är listade i den sorteringsordning de ska förekomma i meddelandet. | 0..1 |

##### Svarsdel:  observationGroup/observation/relation

| observationGroup/ / observation/ / relation | RelationType |  |  |
| :--- | :--- | :--- | :--- |
| code | CVType | Anger vilken typ av relation den refererade informationen har till hämtad observation. | 1 |
| code.code | String | Kod för relationstyp. | 1 |
| code.codeSystem | String | Kodsystem för angiven kod för relationstyp. | 1 |
| code.codeSystemName | String | Namn för kodsystem. | 0..1 |
| code.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| referredInformation | ReferredInformationType |  | 1..1 |

##### Svarsdel:  observationGroup/observation/relation/referredInformation

| observationGroup/ / observation/ / relation/ / referredInformation | ReferredInformationType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Den refererade externa informationens identitet | 1..1 |
| id.root | String | HSA-id för källsystem där den refererade informationen är lagrad. | 1..1 |
| id.extension | String | Ett inom vårdgivaren unikt id för denna observation. | 1..1 |
| time | PartialTimeStampType | Starttid av refererad information. Uttrycks med formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år. / Regel 2.4 | 1 |
| type | String | Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från  Categorization i engagemangsindexposten. Exempelvis kan en aktivitet ha ett samband till en observation och då är  referredInformationType ”chb-o”.Se avsnitt om categorization i tjänstekontraktsbeskrivning för respektive tjänst, som passar för det relaterade objektet. | 1 |
| informationOwner | InformationOwnerType | Vårdgivare som är informationsägare av den refererade informationen, beroende på vilken adresseringsmodell tjänsten tillämpar. | 1..1 |

##### Svarsdel: observationGroup/observation/relation/referredInformation/informationOwner

| observationGroup/ / observation/ / relation/ / referredInformation/ informationOwner | InformationOwnerType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Informationsägare av refererad information | 1..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Vårdgivarens HSA-id. | 1..1 |
|  |  |  |  |

##### Svarsdel: observationGroup/performerRole/person

| observationGroup/ / performerRole / / person / (och i additionalParticipant) | PersonType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för person som utfört observationen. Detta fält anges endast om observationen utförts av person som INTE klassas som hälso- och sjukvårdspersonal. / Om observationen utförts av person som inte klassas som hälso- och sjukvårdspersonal och id inte anges måste person.name vara angiven. | 0..1 |
| id.root | String | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1) användas.
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) användas.
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1 |
| id.extension | String | Personnummer/ samordningsnummer/reservnummer. | 1 |
| name | String | För- och efternamn i klartext för person. / Regel 2.1 | 0..1 |

##### Svarsdel:  observationGroup/performerRole/careUnit

| observationGroup/ / performarRole/ / careUnit | CareUnitType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | HSAid för PDL vårdenhet som har medicinskt ansvar för observationen. | 1..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Extension sätts till HSA-id för vårdenheten | 1..1 |
| name | String | Vårdenhetens namn till vilken observationen är knuten. | 0..1 |
| careGiver | CareGiverType | Den vårdgivaren som enheten är anknuten till. | 1..1 |

##### Svarsdel:  observationGroup/performerRole/careUnit/caregiver

| observationGroup/ / performerRole / / careUnit / / careGiver | CareGiverType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | HSAid. Vårdgivarens identitet som enheten är anknuten till. | 1..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Extension sätts till HSA-id för vårdgivaren. | 1..1 |
| name | String | Vårdgivarens namn till vilken enheten är knuten. | 0..1 |

##### Svarsdel: observationGroup/additionalParticipant/location/ electronicAddress

| observationGroup/ / additionalParticipant/ / location/ | TelType |  |  |
| :--- | :--- | :--- | :--- |
| electronicAddress |  |  |  |
| use | TelTypeEnum | voice = nummer för röstsamtal / fax = faxnummer / data = e-post adress / sms =  nummer för mobila textmeddelanden | 1..1 |
| value | String | Elektronisk adress | 1..1 |

##### Svarsdel:  observationGroup/additionalParticipant/organization

| observationGroup/ / additionalParticipant/ / organisation | OrganisationType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för organisation. Vanligtvis HSA-id | 0..1 |
| id.root | String | Om HSA-id: / 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Id för organisation | 1..1 |
| name | String | Organisationens namn | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| 1.1 | Den enda sökparametern som explicit behöver anges är patientId. Det finns även möjlighet att kombinera patientId med ett eller flera andra parametrar: / timePeriod / För att begränsa till ett tidsintervall / observationCode / För att begränsa till en viss typ av observation / observationId / För att begränsa till en specifik observation / careGiverId / För att begränsa till en specifik vårdgivare / careUnitId / För att begränsa till en specifik vårdenhet / sourceSystemHSAId / För att begränsa till ett specifikt system / Relation / För att begränsa till observationer med relationer till annan instans / För att begränsa till observationer med relationer av viss typ / En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent, dvs inte vara genomförbart och ska i så fall resultera i ett tydligt felmeddelande. Detta skulle exempelvis inträffa om sökmängden blir för stor för att kunna returneras till konsumenten. | Den enda sökparametern som explicit behöver anges är patientId. Det finns även möjlighet att kombinera patientId med ett eller flera andra parametrar: / timePeriod / För att begränsa till ett tidsintervall / observationCode / För att begränsa till en viss typ av observation / observationId / För att begränsa till en specifik observation / careGiverId / För att begränsa till en specifik vårdgivare / careUnitId / För att begränsa till en specifik vårdenhet / sourceSystemHSAId / För att begränsa till ett specifikt system / Relation / För att begränsa till observationer med relationer till annan instans / För att begränsa till observationer med relationer av viss typ / En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent, dvs inte vara genomförbart och ska i så fall resultera i ett tydligt felmeddelande. Detta skulle exempelvis inträffa om sökmängden blir för stor för att kunna returneras till konsumenten. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| 2.1 | PerformerRole | Observation utförd av hälso- och sjukvårdpersonal / Då observation är utförd av hälso- och sjukvårdpersonal ska PerformerRole.id anges med HSAid. / Om producenten ska stödja sammanhållen journalföring och patientens direktåtkomst krävs även att klassen Person används och att Person.name anges. / Observation utförd av icke vårdpersonal / Då observationen är utförd av personer som inte innefattar vårdpersonal ska PerformerRole.id inte anges. / Klasserna CareUnit (vårdenhet) och CareGiver (vårdgivare) ska inte användas. / Klassen Person ska användas samt Person.name anges. |
| 2.2 | AdditionalParticipant | AdditionalParticipant är hälso- och sjukvårdspersonal / Då ytterligare medverkande är hälso- och sjukvårdpersonal ska AdditionalParticipant.id anges med HSAid. / Om producenten ska stödja sammanhållen journalföring och patientens direktåtkomst krävs även att klassen Person används och att Person.name anges. / AdditionalParticipant är INTE hälso- och sjukvårdspersonal / Då ytterligare medverkande personer inte är hälso- och sjukvårdspersonal ska additionalParticipant.id inte anges. Istället används klassen Person. / AdditionalParticipant är inte en person / Då additionalParticipant är en device, careUnit eller organization används inte additionalParticipant.id |
| 2.3 | LegalAuthenticator | Om informationen är signerad av hälso- och sjukvårdspersonal ska LegalAuthenticator anges med namn och/eller HSA-id i svars-delen. / Minst ett av attributen LegalAuthenticator.id eller LegalAuthenticator.name ska anges. |
| 2.4 | referredInformation.time | ReferredInformation.time ska innehålla en tidpunkt som ska kunna användas som inparameter i ett tidsintervallbaserat sökvillkor till den tjänst som returnerar den identifierade informationsmängd som relationen pekar ut. Denna tidpunkt skall vara den tidpunkt som tidssökparametern till den utpekade tjänsten filtrerar på. I det fall då en konsument har behov av att söka upp flera relaterade informationsmängder från samma tjänst kan konsumenten skapa ett sökintervall som omfattar de ReferredInformation.time från dessa relationer. Detta sökintervall används sedan som inparameter till den tjänst som relationerna pekar ut. På detta sätt kan en konsument göra endast ett anrop över en begränsad tid som returnerar samtlig relaterad information istället för att göra anrop ett och ett med respektive id som anges i relationen, eller ta ut en patients totala informationsmängd utan någon möjlighet att filtrera på tid. |
| 2.5 | observationGroup/ / performerRole/ / careUnit | Åtkomstkontroll inom sammanhållen journalföring / Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav

#### Annan information om kontraktet
Ingen övrig information om kontraktet
