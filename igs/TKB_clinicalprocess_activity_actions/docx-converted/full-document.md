
![Version 1.3.5 
2026-04-01](images/img_004.png)

![Version 1.3.5 
2026-04-01](images/img_008.png)
Version 1.3.5 
2026-04-01
Innehållsförteckning
1	Inledning	11
1.1	Svenskt namn	11
1.2	Beskrivning	11
2	Versionsinformation	12
2.1	Version 1.3.3	12
2.1.1	Oförändrade tjänstekontrakt	12
2.1.2	Nya tjänstekontrakt	12
2.1.3	Förändrade tjänstekontrakt	12
2.1.4	Utgångna tjänstekontrakt	12
2.2	Version tidigare	12
3	Tjänstedomänens arkitektur	12
3.1	Flöden	13
3.1.1	Hämta aktiviteter	13
3.1.2	Beskrivning av relationskonceptet	16
3.2	Adressering	19
3.2.1	Sammanfattning av adresseringsmodell	19
3.3	Aggregering och engagemangsindex	20
3.4	Interaktionsöverenskommelse	20
4	Tjänstedomänens krav och regler	21
4.1	Uppdatering av engagemangsindex	21
4.1.1	Regler för tilldelning av värde i fältet Categorization i engagemangsindexposten för tjänstekontrakt i denna domän	23
4.2	Informationssäkerhet och juridik	23
4.2.1	Medarbetarens direktåtkomst	23
4.2.2	Patientens direktåtkomst	24
4.2.3	Generellt	24
4.3	Icke funktionella krav	24
4.3.1	SLA krav	24
4.3.2	Övriga krav	26
4.4	Felhantering	26
4.4.1	Krav på en tjänsteproducent	26
4.4.2	Krav på en tjänstekonsument	26
5	Tjänstedomänens meddelandemodeller	27
5.1	V-MIM - Aktiviteter	27
5.2	Formatregler	32
5.3	Gemensamma datatyper	32
5.3.1	CVType	32
5.3.2	DateType	34
5.3.3	IIType	34
5.3.4	TimePeriodType	35
5.3.5	TimeStampType	35
6	Tjänstekontrakt	36
6.1	GetActivities	36
6.1.1	Version	36
6.1.2	Fältregler	36
6.1.3	Övriga regler	54
Revisionshistorik

| Version | Revisions nr | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- | :--- |
| - | 1.0 RC1 | 2014-03-18 | Nadeem Hossain | RC1 |
| - | PA15 | 2014-10-03 | Sofia Sjölén | Uppdatering till ny mall 1.4, / Relationer ska inte ha 1..* till referredInformation utan bara 1..1 / PatientType.dateOfBirth–år,månad, dagsatt till obligatoriska. Webbeskrivning ActivityType.time.start kardinalitet 0..1. ReferredInformation.type |
| 1.0 RC3 | - | 2014-10-08 | Sofia Sjölén Mawell | Uppdatering efter granskning från AL / Uppdaterat sekvensdiagram, version, tagit bort referens till AB, uppdaterat författare, / Uppdaterat webbeskrivning |
| 1.0 RC4 | - | 2014-11-26 | Torbjörn Dahlin, / MedMod | Tagit bort Process och Delete interaktioner |
| 1.0 RC4 | - | 2015-02-26 | Torbjörn Dahlin, / MedMod | - |
| 1.0 RC5 | - | 2015-04-27 | Khaled Daham | Rättat kategori-koden till EngagemangsIndex ifrån Caa-ga till caa-ga, dvs endast gemener. |
| 1.0_RC6 | - | 2015-05-18 | Khaled Daham | Korrigerat HSA-id som skall användas vid addressering till Inera |
| 1.0_RC8 | - | 2015-12-15 | Torbjörn Dahlin | Uppdaterat interactionAgreementId parametern i begäran så att endast defaultöverenskommelsen är tillåten. |
| 1.0_RC9 | - | 2016-01-20 | Torbjörn Dahlin | Inga uppdateringar i detta dokument. AB-bilaga uppdaterad med lista på anslutningar godkända för version 1.0 av kontraktet |
| 1.0 | - | 2016-02-05 | Khaled Daham | Uppdatering av tekniska artefakter, lagt till xs:any i de komplexa typer som saknade dessa. |
| 1.0.2 RC1 | - | 2016-06-30 | Torbjörn Dahlin
Hanna Eliasson | Lagt till möjligheten att kommunicera icke ännu genomförda aktiviteter via detta kontrakt. Detta sker genom att sätta status-attributet i aktivitetsklassen. Rättat engagemangsindex kategori från caa-a till caa-ga där det stod felaktigt. / Korrigerat beskrivning av inparameter för relationsfilter. |
| 1.0.2 | - | 2016-10-25 | Torbjörn Dahlin / Björn Genfors | Testsvit tillagd / OrganisationType.name (Issue #289) / Kardinalitet på ParticipantType.Id ändrat till 0..1 i schema (Issue #294) / activityType.status.codeSystemVersion skall ej användas (Issue #290) / Förtydligat skrivning om activityType.code.code i förhållande till NI 2015:1 text (Issue #288). |
| 1.0.3 | - | 2016-11-14 | Khaled Daham | Uppdaterat SLA-tabell enligt ärende #296 |
| 1.0.4_RC1 | - | 2017-04-18 | Björn Pettersson, Nordic Medtest | Uppdatering av testsvit. |
| 1.0.5 | - | 2017-06-21 | Magnus Söderlind | Uppdatering av testsvit och självdeklaration. |
| 1.0.6 | - | 2018-04-03 | Khaled Daham | Lagt till beskrivning av Nationellt ReservID och hur tjänstekonsumenter samt tjänsteproducenter skall hantera alla accepterade former av personidentiferare / Uppdaterat enligt ärende #299 |
| 1.0.6 | - | 2018-10-12 | Emmy Damberg | Rättat V-MIM enligt ärende #302 |
| 1.0.6 | - | 2018-10-16 | Magnus Söderlind | Test: Uppdateringar i SJD och testförbättringar i testsviter, framförallt tidsfiltrering. 
Testsvit 7 & 8 tillkommer |
| 1.0.6 | - | 2019-03-25 | Jan Söderman | Lagt till SjD för konsument och uppdaterat mock. |
| 1.0.6 | - | 2020-11-25 / 2020-11-26 | Claudia Ehrentraut | Uppdaterat versionsnummer till 1.0.6. / Uppdaterat versionsinformation kapitel 2 så att det stämmer överens med ändringar i version 1.0.6. / Tagit bort gulmarkeringar av reservID-ändringarna |
| 1.1_RC1 | - | 2021-04-19 / 2021-04-21 / 2021-04.30 / 2021-05-07 / 2021-06-04 | Tobias Blomberg | Lagt till referens till ark_0040 / Uppdaterat kap 4.3 / Uppdaterat länkar till kodverk / Uppdaterat beskrivningen för attribut som används för tidsfiltrering / Uppdaterat beskrivningen för attributet MostRecentContent under kap 4.1 / Uppdaterat beskrivningen av domänen respektive GA / Bytt ut förkortningar PNR, resp. SNR till personnummer, resp. samordningsnummer / Ersätt SOSFS 2008:14 med HSLF-FS 2016:40, då förstnämnda är utgången. . Lagt till tillhörande referenser R7 och R8 / Uppdaterat länkar under Referenser / Tagit bort mappningar mot V-TIM från mappningstabellen för tjänstekontraktet samt övriga referenser till mappningen, efter A&R beslut om att mappningen ska tas bort. / Uppdaterat avsnittet Förkortningar / Justerat ”Övriga regler”: tagit bort regel 2b, lagt till regel 3, 6 och 7, justerat regel 4. / Förtydligat beskrivning i attributet activityGroup/activity/id / Uppdaterat kap 3.1.2 / Ändrat multiplicitet för attributet activityGroup/activity/time till frivilligt. / Lagt till regel för hur planerade aktiviteter utan bestämd utförandetid hanteras (Regel 2.3). |
| 1.1 | - | 2021-09-07 / 2021-10-20 | Tobias Blomberg | Lagt till kompatibilitetstabell i avsnitt 2.1 / Rättat en felskrivning i avsnitt 5. / Version fastställd |
| 1.1.1 | RC1 | 2022-01-11 / 2022-03-11 | Tobias Blomberg | Textuella uppdateringar av slarvfel, bytt ut observation till aktivitet på fåtal ställen enligt TJN-211 / Uppdaterat beskrivningen för integrationsöverenskommelse. / Uppdaterat beskrivningen för elementet sourceSystemId |
| 1.1.1 | - | 2022-03-21 | Tobias Blomberg | Domänversion fastställd |
| 1.1.2 | RC1 | 2022-10-11 | Tobias Blomberg | Tagit bort felaktig skrivning i fältet activityGroup/activity/relation/referredInformation/informationOwner enligt TJN-297 / Tagit bort Fält 8 under övriga regler för att ta bort möjligheten att indikera låsning för journalinformation. |
| 1.1.2 | - | 2022-11-28 | Tobias Blomberg | Domänversion fastställd |
| 1.2 | RC1 | 2023-02-23 | Tobias Blomberg | Ändringar i attributet activityGroup/activity/status enl. TJN-257. Hänvisar till SNOMED-refset istället för att ange två specifika koder som är tillåtna samt tagit bort texten ”En planerad aktivet utan utförandetid illustreras genom att ActivityGroup.Activity.Status är satt till 397943006 (planerad) och ingen tid anges.” under Övriga regler, Regel 2.3”. / Uppdaterat SLA-krav svarstid från 5 sek till 27 sek |
| 1.2 | - | 2023-03-09 | Tobias Blomberg | Domänversion fastställd |
| 1.3 | - | 2023-05-17 | Tobias Blomberg, Rebecca Ceder | Ny domänversion / Ny dokumentmall. / Uppdaterat activityGroup/activity med tillägg av additionalInformation.key och additionalInformation.value / Ändrat begreppet ”Medicinsteknisk utrustning” till ”Medicinskteknisk produkt” för tydliggörande av termens avsikt. / Uppdaterat ”Övriga regler” få formatet stämmer med övriga tjänstekontrakt. / Uppdaterat V-MIM / Lagt till Activity.additionalinfomration i mappning mellan XSD-schemat och V-MIM |
| 1.3.1 | - | 2023-09-26 | Tobias Blomberg | Uppdaterat beskrivningen av tidsfiltrering för att tydliggöra när poster som saknar aktivitetstid ska returneras enl TJN-357 / Ändrat från Datainspektionen till Integritetsskyddsmyndigheten då myndigheten bytt namn. / Ändrat datatypen för patientId.root från personIdType till String då detta var en felskrivning. / Lagt till information om vad respektive fält i begäran motsvarar i svaret. / Lagt in länkar från regler i fältregeltabellen till motsvarande regel i avsnittet övriga regler. / Lagt till referens R14 ”Lagen om sammanhållen vård- och omsorgsdokumentation (2022:913)” samt bytt den referens som fanns till PDL under avsnitt 4.2.1 till R14. / Ändrat typen för dateOfBirth under patient från DateTime till DateType då detta var en felskrivning. / Lagt till avsnitt 5.3 Gemensamma datatyper. |
| 1.3.2 | - | 2024-02-16 | Tobias Blomberg | Stegrad version. Inga ändringar i detta dokument |
| 1.3.3 | - | 2024-04-29 | Tobias Blomberg | Tydliggjort hur performerRole.id ska användas tjn-401 / Tydliggjort hur performerRole.person ska användas tjn-401 / Tydliggjort hur additionalParticipant.id ska användas tjn-401 / Tydliggjort hur additionalParticipant.person ska användas tjn-401 / Delat upp regel 2.1 under Övriga regler i två; 2.1 samt 2.2 för att dessa ska bli lättare att förstå. / Tagit bort en Övrig regel gällande additionalParticipant som nu täcks av texter i attributsbeskrivningarna. |
| 1.3.4 | - | 2024-03-11 | Tobias Blomberg | Tagit bort övrig del av regel 2.4 som kräver att LegalAuthenticator.name anges för sammanhållen journalföring. |
| 1.3.5 | - | 2026-04-01 | Tobias Blomberg | Bytt namn på svarsdel activityGroup/additionalParticipant/organisationType till activityGroup/additionalParticipant/organisation för att stämma med resterande svarsdelar. / Tagit bort en svarsdel activityGroup/additionalParticipant/organisation då den var dubbel. / Ändrat ordningen på svarsdelarna så att de är mer logiska. |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | RIVTA flera dokument | Finns på webben | Länk |
| R2 | AB_clinicalprocess_activity_actions.docx | Obligatoriskt | Bilaga |
| R3 | RIV Tekniska Anvisningar Översikt 2.0.1 | Finns på webben | Länk |
| R4 | The Unified Code for Units of Measure | Standardmåttenheter för att använda som enhet för mätvärden | Länk 
Version 1.9 (2013-10-22) eller senare. |
| R5 | Nationell Informationsstruktur (NI) |  | Länk |
| R6 | Ärendehantering | Ärendehantering för tjänstekontrakten i den här domänen | Länk |
| R7 | Senaste version av SOSFS 2016:40 (HSLF-FS 2016:40) Socialstyrelsens föreskrifter och allmänna råd om journalföring och behandling av personuppgifter i hälso- och sjukvården | - | Länk |
| R8 | Journalföring och behandling av personuppgifter i hälso- och sjukvården - Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården | - | Länk |
| R9 | Lista med förekommande kodverk och identifierare i Nationella tjänstekontrakt | - | Länk / Länk |
| R10 | RIV Tekniska Anvisningar – Parallella huvudversioner av ett tjänstekontrakt | - | Länk |
| R11 | Flera dokument | Information om Personuppgiftstjänsten | Länk |
| R12 | De facto-konventioner för datatyper | Finns på webben | Länk |
| R13 | Läkemedelsverket | Finns på webben | Länk |
| R14 | Lagen om sammanhållen vård- och omsorgsdokumentation (2022:913) | Finns på webben | Länk |
| R15 | Förtydliganden Vårdgivare Vårdenhet | Från HSA Katalogtjänst. | Länk |
Begrepp och termer

| Begrepp | BESKRIVNING |
| :--- | :--- |
| Personidentifierare | En identitetsbeteckning för att identifiera person, här i IT-system. Exempel: personnummer, samordningsnummer eller reservidentitet. |
| Personnummer | För varje folkbokförd person i Sverige fastställer Skatteverket ett personnummer som identitetsbeteckning. |
| Reservidentitet (även kallat reservnummer) | Tillfällig identitetsbeteckning för individ då säkerställt person- eller samordningsnummer saknas, t.ex. då individens identitet inte kan fastställas, vid vård i katastrofsituationer mm. |
| Lokal reservidentitet | Reservidentiteter som ges ut och hanteras lokalt i en organisation, t.ex. i ett landsting eller en kommun. |
| Individs huvudidentitet | Den nu gällande (aktuella) personidentifieraren för en individ. / Exempel 1: En person har haft ett samordningsnummer, men får vid senare tillfälle ett personnummer. Personnumret blir personens nya huvudidentitet. / Exempel 2: En patient i vården som inte är folkbokförd i Sverige får ett nationellt ReservID tilldelat hos en vårdgivare, eftersom patienten saknar personnummer/samordningsnummer. Senare konstateras hos vårdgivaren att patienten också haft en lokal reservidentitet där man dokumenterat en tidigare vårdkontakt. Vårdgivaren knyter den lokala lokal reservidentiteten till patientens nationella ReservID, vilket är patientens huvudidentitet. |
| Kopplade personidentifierare, kopplingsinformation | Flera personidentifierare för samma individ har kopplats samman i en IT-tjänst. Exempel: en patient har tidigare registrerats på ett nationellt ReservID, men identifieras senare med hens personnummer. ReservID kopplas till patientens personnummer i en stödtjänst för personuppgifter. |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
clinicalprocess: activity: actions

Tjänstekontrakten är baserade på RIVTA 2.1 [R1] och reglerade genom arkitekturella beslut [R2].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer). 
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Vård och omsorg, kärnprocess:hantera aktiviteter:aktiviteter
aktivitetshantering

### Beskrivning
Denna domän hanterar information gällande vårdaktiviteter kopplade till en patient, till exempel operationer och undersökningar. Syftet med domänen är att tillgängliggöra journalförd strukturerad information om aktiviteter i kärnprocessen på ett strukturerat sätt. Informationen i familjen av kontrakt som detta kontrakt tillhör möjliggör ett sätt att representera komplexa kliniska sammanhang i atomära delar. De atomära delarna sammanfogas med hjälp av sambandsklasser som kan skapa relationer mellan respektive del. Ett exempel på detta kan vara informationen om att en patient har genomgått en operation på grund av en tidigare ställd diagnos. Då har en koppling gjorts mellan den utförda operationen och diagnosen.
Tjänstedomänen ställer krav på att informationen är strukturerad och kodad. Denna domän ska tillgodose behov av återanvändning av strukturerad aktivitetsinformation som finns hos exempelvis kvalitetsregister, uppföljningssystem, system för den enskildes direktåtkomst, system för utlämnande, system för professionens åtkomst till sammanhållen journalföring och centrala system för rapportering till olika former av myndighetsregister.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen clinicalprocess: activity: actions. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.3.5

#### Oförändrade tjänstekontrakt
Inga oförändrade tjänstekontrakt.

#### Nya tjänstekontrakt
Inga nya tjänstekontrakt.

#### Förändrade tjänstekontrakt
GetActivities, version 1.3

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetActivities | 1.3 | 1.2 | OK |
|  | 1.2 | 1.3 | Ej kompatibel |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Domänversion 1.3.3

## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Tjänsterna för beskrivning av aktiviteter erbjuder sökning av information i vård- och omsorgsgivarnas system för patientadministration och hälso- och sjukvårdsdokumentation. Utgångspunkten för tjänsterna i denna tjänstedomän är att historisk information sammanställs från det eller de källsystem där det finns historik via s.k. aggregerande tjänster, snarare än att begära information från ett specifikt system eller en specifik verksamhet. Som en följd av detta kravställer tjänstedomänen uppdatering av engagemangsindex.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det specifika systemet, istället för den aggregerande tjänsten, i syfte att söka fram information om just den händelse som orsakade notifieringen.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna.

### Flöden
Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras.

#### Hämta aktiviteter
Nedanstående diagram visar hur flödet ser ut när information om aktiviteter hämtas.

##### Arbetsflöde

![img_007.png](images/img_007.png)
*Figur 1 Exempel: Adressering vid anrop till aggregerande tjänst från patienttjänst (t.ex. från Mina Vårdkontakters tjänst för journalåtkomst).*

![img_005.png](images/img_005.png)
*Figur 2 Exempel: Adressering vid anrop till aggregerande vårdgivartjänst (t.ex. från NPÖ-tillämpningen).*

##### Sekvensdiagram för enkel begäran
Siffrorna i diagrammet nedan kopplar ihop begäran-svar för respektive meddelande.

![img_009.png](images/img_009.png)
*Figur 3 Sekvensdiagram över sökning efter information*

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Aggregerande tjänst | En aggregerande tjänst är en integrationstjänst som för en tjänstekonsument sammanställer en nationell vy av informationen av den typ som är aktuell för tjänsten i fråga. Är beroende av engagemangsindex för att begränsa sökningen till relevanta informationsägare. |
| Engagemangsindex | En tjänst där det finns uppdaterade nationella index över vilka informationsägare som har information kring en viss invånare/patient. |
| Vårdinformationssystem 1 och 2 | Det system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

#### Beskrivning av relationskonceptet
Kontrakt i tjänstedomänen har stöd för att peka ut relaterade informationsmängder. Konceptet är till för att en tjänsteproducent skall kunna förmedla till en tjänstekonsument att det finns relaterad information att hämta. En aktivitet (blindtarmsoperation) kan exempelvis ha en relation till en tidigare observation (blindtarmsinflammation). Relationen har en viss typ vilket i ovanstående exempel skulle kunna vara ”har orsak”.
En relaterad informationsmängd pekas ut med hjälp av typen ReferredInformationType där fältet type beskriver vilken informationstyp som är refererad och följer tabellen för engagemangsindex-kategori, enligt fältet ”categorization”, t.ex. caa-ga för att referera till en annan aktivitet. För att filtrera ut den källa som lagrar den relaterade informationsmängden används det HSA-id som återfinns i ActivityGroup/activity/relation/referredInformation/id/root som värde i sökparametern SourceSystemHSAId och som logisk adress.

##### Exempel på relaterad information/samband
I detta exempel har en patient en tidigare satt diagnos (observation) K35.2 Akut appendicit med generaliserad peritonit. På grund av denna diagnos utförs en appendektomi (aktivitet). Vid ett senare tillfälle upptäcks att en MRSA-infektion har uppkommit i operationssåret (observation).

![img_002.png](images/img_002.png)
För detaljerade beskrivningar av klasser och attribut ovan se [R5].
Ifall dessa data lagras i olika system, så är förutsättningen, för anrops-flödet i nästa avsnitt att identiteter för orsakande diagnos respektive operation har förmedlats vidare till nästa system i behandlingskedjan.
Ovanstående modell skulle kunna tänkas återspegla att en patient på en närakut får diagnosen Akut Appendicit och sänds med en akutremiss till det lokala sjukhuset. Via remissen förmedlas identiteten på den satta diagnosen i primärvårdssystemets journalsystem. När sedan operationen dokumenteras skapas ett explicit orsakssamband till den tidigare diagnosen. Tre veckor efter operationen kommer patienten tillbaka till primärvården för att operationssåret inte vill läka. Efter ett labbprov konstateras en MRSA-infektion. Läkaren använder möjligheten att söka i sammanhållen journal efter patientens samtycke och hittar då den dokumenterade aktiviteten Appendektomi som utfördes på sjukhuset. Genom att skapa ett orsakssamband mellan MRSA-infektionen och ingreppet får den opererande verksamheten möjlighet att följa upp sina operationskomplikationer även om patienten inte kom direkt till dem med det uppkomna problemet.

##### Sekvensdiagram
I detta exempel hämtas de operationstyper (aktiviteter) ut som man planerar följa upp. För att se vad orsaken var till operationer samt eventuella komplikationer hämtas sedan relaterade observationer före och efter operationen. Respektive händelse har dokumenterats i olika vårdsystem, men eftersom det finns engagemangsindexposter för observationstjänsten i både system 2 och 3 kommer båda dessa system tillfrågas två gånger i nedanstående sekvens (se 3.1.1.1 Sekvensdiagram för enkel begäran för enkel begäran för detaljerad beskrivning av hur anrop sker i aggregerad tjänst). En konsument som kräver följsamhet till en viss uppsättning interaktionsöverenskommelser skulle i exemplet nedan ange dessa som inparametrar vid anropen till GetActivities respektive GetObservations.
Nedan så har t ex system 2 kännedom om diagnosen, vilket redan har förmedlats till system 1 där operationen finns registrerad, inklusive dess orsak (med identitet enligt system 2). Slutligen så finns t ex i system 3 komplikationer noterade, vilka är relaterade till operationens identitet (enligt system 1).

![img_006.png](images/img_006.png)
*Figur 4 Sekvensdiagram för komplext flöde.*

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument (för uppföljning) | Det system som används för att konsumera information. D.v.s. det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform
(GetActivity & GetObservation) | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Vårdinformationssystem
1, 2, & 3 | De system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

### Adressering
Tjänstedomänen tillämpar källsystemsadressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem direkt. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA-id. Det sker genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSA-id finns då i svarsmeddelandet) eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direktadressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten.
Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt, Rev PD2, avsnitt 8.3, där mer information kan hittas.

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| Nationellt | Ineras HSA-id
QA: 5565594230
Prod: 5565594230 |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

### Aggregering och engagemangsindex
Det behövs en aggregerande tjänst för varje tjänstekontrakt som läser data i denna domän. Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystemets HSA-id anges som logisk adress, kommer tjänsteplattformen att dirigera frågemeddelandet vidare direkt till källsystemet utan att passera en aggregerande tjänst. 
Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex – vidarebefordrar frågan till de källsystem som har information om patienten.

### Interaktionsöverenskommelse

![img_010.png](images/img_010.png)
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
| Registered ResidentIdent Identification | Invånarens person-nummer | Personnummer eller samordningsnummer enligt skatteverkets definition (12 tecken). / Lokalt reservidentitet får ej användas. | 1..1 |  | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän1>:<underdomän2> | 1..1 | ”riv:clinicalprocess:activity:actions” | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Informationsmängd som finns i källsystemet för angiven patient och som indexposten avser. Anges med kortform enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Samma värde som fältet Source System. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – d.v.s. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | UUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Tidpunkt för senaste uppdatering av den informationstyp och patient i den källa som denna indexpost avser. | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttag. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. post uppdateras med tidpunkt för borttagshändelsen. |  |
| Creation Time | Tidpunkten då indexposten registrerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Upp-datering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Källsystemet som genererade engagemangs-posten via Update-tjänsten | Systemets HSA-id.  För system-adresserade tjänstedomäner motsvarar detta LogicalAddress vid anrop till tjänster i tjänstedomänen i fråga. Detta är inte anslutningspunktens HSA-id utan systemet som operativt hanterar informationen i verksamheten. | 1..1 | Systemadressering tillämpas. Detta värde används som LogicalAddress vid tjänsteanrop. | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Vårdgivarens organisationsnummer eller HSA-id / eller inom källsystemet unik identifierare för vårdgivaren. | 1..1 | ”SE”<organisationsnummer>. Exempel: ”SE5565594230” eller HSA-id, eller / systemspecifik identitet. | Del av instansens unikhet |

#### Regler för tilldelning av värde i fältet Categorization i engagemangsindexposten för tjänstekontrakt i denna domän
Kortnamnet skapas enligt konventionen första bokstaven i domännamnets komponenter ”-” första bokstaven i tjänstekontraktets namnkomponenter:

| Informationsmängd enligt Tjänstekontrakt | Värde på Categorization |
| :--- | :--- |
| GetActivities | caa-ga |

### Informationssäkerhet och juridik

#### Medarbetarens direktåtkomst
Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till sammanhållen journal för att Lagen om sammanhållen vård- och omsorgsdokumentation (2022:913) [R14] efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke, vårdrelation och åtkomstloggning måste följas. Dessutom finns krav från Integritetsskyddsmyndigheten om ytterligare teknisk åtkomstkontroll.
HSLF-FS 2016:40 [R7] ställer också krav (via handboken "Journalföring och behandling av personuppgifter i hälso- och sjukvården" [R8]) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet).
Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande sammanhållen journalföring och eller krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vårdgivare (sammanhållen journalföring) eller andra vårdenheter inom egna vårdgivaren (spärrkrav).

#### Patientens direktåtkomst
Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten (informationsägaren) godkänt att informationen får visas för patient. Det kan t.ex. ha skett genom menprövning eller rådrum. För vissa av tjänstekontrakten, såsom Hälso- och sjukvårdskontakter, kanske informationsägaren policymässigt har menprövat all information. Det är varje vårdgivares ansvar att tjänsteproducenten sätter ”kan visas för patient”-flaggan i enlighet med vårdgivarens verksamhetsregler.

#### Generellt
Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument - varit exkluderade i frågan.

### Icke funktionella krav
Det är den informationsproducerande vårdgivarens ansvar att endast ett källsystem tillhandahåller informationen via lästjänst och engagemangsindex där patientdata lagras i flera källsystem. Konsumenter som är anslutna till flera majorversioner av samma kontrakt måste hantera dubblettborttagning mellan dessa. Detta sker genom att jämföra identiteter på postnivå och endast behålla en av de poster som returnerats [R10].

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | Svarstiden får inte överstiga 27 sekunder |  |
| Tillgänglighet | 24x7, 99,5% | Vid katastrof, bortfall av hel hall är maximal otillgänglighet 1 dygn. |
| Last | 10 transaktioner per sekund |  |
| Aktualitet | Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. Fördröjningen avser både journaldata och uppdatering av engagemangsindex. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. |  |
| Robusthet | Om komplett tidsintervall inte angivits i frågan kan tjänsteproducenten välja att lämna ett delsvar i syfte att uppfylla svarstidskravet. Delsvaret måste då vara avgränsat i tiden genom att det finns äldre men inte nyare data än det äldsta som returnerats. | Robusthet |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. | Samtidighet |

#### Övriga krav

##### Gemensamma konsumentregler
R1: Visa ej information för patient då flagga ”approvedForPatient” är falsk
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
N/A

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett Soap Fault. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot NI 2015:1 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM - Aktiviteter

![img_003.jpeg](images/img_003.jpeg)
Mörkblå klasser och cyanfärgade markeringar visar skillnader från NI release 2015:1. I vissa fall är det endast en avvikande kardinalitet.

| XSD Schema | Mappning mot NI 2015 release 1
(eller V-MIM enligt ovan) |
| :--- | :--- |
| ActivityGroup. sourceSystem | NI 2015:1
Saknar motsvarighet / I V-MIM
Källsystem.id |
| Activity.id | Uppgift i patientjournal.id |
| Activity.type | Aktivitet.kod |
| Activity.status | Aktivitet.status |
| Activity.time | Aktivitet.tid |
| Activity.method | Aktivitet.metod |
| Activity.targetSite | Aktivitet.lokalisation |
| Activity.description | Aktivitet.beskrivning |
| Activity.additionalInformation.key | NI 2015:1
Saknar motsvarighet / I V-MIM
YtterligareInfomration.typ |
| Activity.additionalInformation.value | NI 2015:1
Saknar motsvarighet / I V-MIM 
YtterligareInfomration.värde |
| Activity.RegistrationTime | Uppgift i patientjournal.dokumentationstidpunkt |
| Activity.approvedForPatient | NI 2015:1
Saknar motsvarighet / I V-MIM / Uppgift i patientjournal.godkändFörUtlämnandeTillPatient |
| Location.id | NI 2015:1
Saknar motsvarighet / I V-MIM
Plats.id |
| Location.name | NI 2015:1
Saknar motsvarighet / I V-MIM
Plats.namn |
| Location.address | NI 2015:1
Saknar motsvarighet / I V-MIM
Plats.adress |
| Location.electronicAddress | NI 2015:1
Saknar motsvarighet / I V-MIM
Plats.elektroniskAdress |
| Patient.id | Person.person-id/Patient.id |
| Patient.name | Person.förnamn
Person.efternamn
Person.mellannamn
Person.tilltalsnamnsmarkering |
| Patient.dateOfBirth | Person.födelsetidpunkt |
| Patient.gender | Person.kön |
| LegalAuthenticator.id | NI 2015:1
Saknar motsvarighet / I V-MIM
Deltagande(signerare)->Professionell aktör.id |
| LegalAuthenticator.time | NI 2015:1
Saknar motsvarighet / I V-MIM
Deltagande(signerare).tid |
| LegalAuthenticator.name | NI 2015:1
Saknar motsvarighet / I V-MIM
Deltagande(signerare)->Professionell aktör->Person.förnamn + Person.efternamn |
| SourceSystem.id | NI 2015:1
Saknar motsvarighet / I V-MIM
Källsystem.id |
| Relation.code | Samband.typ |
| ReferredInformation.id | NI 2015:1
Uppgift i patientjournal.id / I V-MIM
Referens till Uppgift i patientjournal.id |
| ReferredInformation.time | NI 2015:1
Saknar motsvarighet / I V-MIM
Referens till Uppgift i patientjournal.tidpunkt |
| ReferredInformation.type | NI 2015:1
Saknar motsvarighet / I V-MIM
Saknar motsvarighet |
| InformationOwner.id | NI 2015:1
Saknar motsvarighet / I V-MIM
Källsystem.id |
| PerformerRole.id | NI 2015:1
Saknar motsvarighet / I V-MIM
Deltagande->Roll->Professionell aktör.id eller patient.id/person.person-id |
| PerformerRole.code | NI 2015:1
Saknar motsvarighet / I V-MIM
Deltagande->Roll.typ |
| Person.id | Person.person-id |
| Person.name | Person.förnamn 
Person.mellannamn 
Person.efternamn
Person.tilltalsnamnsmarkering |
| CareUnit.id | NI 2015:1
Organisation.id / I V-MIM
Organisation(vårdenhet).id |
| CareUnit.name | NI 2015:1
Organisation.namn / V-MIM
Organisation(vårdenhet).namn |
| CareGiver.id | NI 2015:1
Organisation. id / V-MIM
Organisation(vårdgivare).id |
| CareGiver.name | NI 2015:1
Organisation.namn / V-MIM
Organisation(vårdgivare).namn |
| AdditionalParticipant.id | NI 2015:1
Saknar motsvarighet / V-MIM
Professionell aktör.id (om sådan deltagare) |
| AdditionalParticipant.type | Deltagande.typ |
| AdditionalParticipant.role | NI 2015:1
Saknar motsvarighet / V-MIM
Roll.typ |
| AdditionalParticipant.time | Deltagande.tid |
| Device.id | NI 2015:1
Saknar motsvarighet / V-MIM
Artefakt.id |
| Device.type | NI 2015:1
Saknar motsvarighet / V-MIM
Artefakt.typ |
| Device.model | NI 2015:1
Saknar motsvarighet / V-MIM
Artefakt.modell |

### Formatregler
Inga utöver de som beskrivs i samband med fältregler.

### Gemensamma datatyper
Gemensamma datatyper är typer gemensamma för användning i flera tjänstekontrakt. Nedan listas de gemensamma typer som används i denna tjänstedomän. Dessa är hämtade från version 21 av de gemensamma datatyperna [R12].

#### CVType
En CVType är en referens till ett begrepp som definieras i ett externt kodverk (kodsystem, terminologi eller ontologi). Se vanligt förekommande kodverk [R9]. En CVType kan innehålla en enkel kod, det vill säga en hänvisning till ett begrepp som definieras direkt av det refererade kodverket, eller den kan innehålla ett uttryck i någon syntax definierad av det refererade kodverket som kan utvärderas, exempelvis begreppet "vänster fot" som är ett postkoordinerat uttryck byggt från den primära koden "FOT" och bestämningen "VÄNSTER".

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string | Kod eller uttryck definierad enligt kodverket. | 0..1 |
| codeSystem | string | Kodverket som definierar koden. | 0..1 |
| codeSystemName | string | Kodverkets namn i klartext. | 0..1 |
| codeSystemVersion | string | Versionsangivelse som har definierats specifikt för det givna kodverket. | 0..1 |
| displayName | string | Den läsbara representationen (klartext) av koden eller uttrycket som definieras av kodverket. | 0..1 |
| originalText | string | Texten så som sedd och/eller vald av användaren som har matat in den, och som representerar användarens avsedda betydelse. | 0..1 |

##### Regler CVType
code
code ska vara en exakt match till en kod eller ett uttryck definierat av kodverket, som refereras till i codeSystem. Om kodverket definierar en kod eller ett uttryck som inkluderar mellanslag, ska koden inkludera mellanslaget. Ett uttryck kan endast användas där kodverket antingen definierar en uttryckssyntax, eller där det finns en allmänt accepterad syntax för kodverket.
Det åligger det mottagande systemet att bedöma om man kontrollerar huruvida det är ett uttryck som har skickats istället för en enkel kod, och utvärdera uttrycket istället för att behandla uttrycket som en kod. I vissa fall kan det vara oklart eller tvetydigt om koden representerar en enda symbol eller ett uttryck. Detta uppstår vanligtvis där kodverket definierar ett uttrycksspråk och sedan definierar prekoordinerade begrepp med symboler som matchar deras uttryck, t.ex. UCUM. I andra fall är det säkert att behandla uttrycket som en symbol. Det finns ingen garanti för att detta alltid är säkert: definitionerna i kodverket bör alltid konsulteras för att avgöra hur man ska hantera potentiella uttryck.
codeSystem
Kodverk ska refereras till genom en globalt unik identifierare, som möjliggör entydig hänvisning till standardkodverk eller andra lokala kodverk. Identifieraren ska vara en Universally Unique Identifier (UUID), Object Identifier (OID), eller Uniform Resource Identifier (URI). En CVType som har ett kodattribut ska ha ett kodverk som specificerar begreppsystemet som definierar koden.
codeSystemName
Syftet med ett kodverksnamn är att hjälpa en mänsklig tolkare av en kod att tolka codeSystem. Tjänstekonsumenter och tjänsteproducenter som använder codeSystemName ska INTE funktionellt förlita sig på kodverkets namn. Dessutom KAN de välja att inte implementera kodverkets namn men ska INTE avvisa instanser då namnet finns.
codeSystemVersion
Olika versioner av ett kodverk måste vara kompatibla. Per definition ska en kod ha samma betydelse i alla versioner av ett kodverk. Mellan versioner kan koder inaktiveras men inte tas bort eller återanvändas. Om klartexten av en kod ändras måste den fortfarande vara kompatibel (lika) mellan olika kodverksversioner.
displayName
Om ifylld, ska klartexten vara den läsbara representationen av koden eller uttrycket som definieras av kodverket vid tiden för datainmatningen. Om kodverket inte definierar en klartext för koden eller uttrycket, kan ingen tillhandahållas. Tjänstekonsumenter och tjänsteproducenter som hävdar direkt eller indirekt överensstämmelse KAN välja att inte implementera klartext men ska INTE avvisa instanser då klartext finns.
Huvudsyfte med klartexten är att stödja implementationsfelsökning, men kan även användas till andra tillämpningsspecifika ändamål som till exempel visning för användaren i gränssnittet.
originalText
Det finns två godkända tillämpningar av elementet originalText:
OriginalText kan användas för att beskriva det en användare angav och som representeras av koden. I en situation där användaren dikterar eller skriver text är originalText den text som matats in eller yttrats av användaren.
OriginalText kan användas i de fall producenten avser ange ett värde som saknar kod. I dessa fall motsvarar originalText benämningen för värdet som saknar kod. Behov att tillföra nya koder till kodverket förmedlas till den som ansvarar för kodverkets innehåll.
OriginalText ska vara den exakta text så som den presenteras i originalkällan utan att på något sätt bearbetas eller omvandlas. Således ska originalText representeras i vanlig textform.

#### DateType
Datum anges som en sträng med formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”. Tidszon anges inte. Datum ska anges i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### IIType
En IIType är en numerisk eller alfanumerisk sträng som kan härledas till ett enskilt objekt eller entitet i ett känt system. Exempel är ett personnummer eller ett vårdkontakts-id. Se identifierare i nationella tjänstekontrakt [R3].

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string | En identifierare som i sig själv eller tillsammans med värdet för extension är universellt unik. Om extension anges är root en unik identifierare av namnrymden för värdet som anges i extension. | 1..1 |
| extension | string | En identifierare som tillsammans med värdet för root är universellt unik. Används om värdet på root inte är universellt unikt. | 0..1 |

##### Regler för IIType
root
När root används som en identifierare av en namnrymd ska identifieraren vara en Universally Unique Identifier (UUID), Object Identifier (OID), eller Uniform Resource Identifier (URI).
extension
Vissa scheman för identifierare definierar formateringsmöjligheter för deras kodvärden. Till exempel så skrivs personnumret vanligtvis med bindestreck, 19121212-1212. Bindestrecket bär dock ingen betydelse och kan utelämnas, som i 191212121212.

#### TimePeriodType
Ett tidsintervall anges normalt sett med en start- och en sluttidpunkt, men öppna intervall är tillåtna. Huruvida ändpunkterna inkluderas i intervallet eller ej bör tydligt beskrivas vid varje enskild tillämpning.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | TimeStampType | Periodens starttid. Minst ett av start och end skall anges. | 0..1 |
| end | TimeStampType | Periodens sluttid. Minst ett av start och end skall anges. | 0..1 |

#### TimeStampType
Tidpunkt anges som en sträng med formatet ”ÅÅÅÅMMDDttmmss”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”. Tidszon anges inte. Tidpunkt ska anges i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid)

## Tjänstekontrakt

### GetActivities
Detta tjänstekontrakt returnerar strukturerade aktiviteter för en patient. Den praktiska tillämpningen av detta kontrakt beskrivs i särskilda tilläggsbeskrivningar i form av interaktionsöverenskommelser., t.ex. en interaktionsöverenskommelse för åtgärder kodade med KVÅ.
En aktivitet kan exempelvis vara en operation eller en genomförd undersökning.
Meddelandemodell från stycke 5.1 V-MIM - Aktiviteter motsvarar svarsmeddelandet för detta tjänstekontrakt. Kopplingen mellan V-MIM enligt NI 2015:1 och de tekniska engelska namnen visas i tabellen i samma avsnitt.

#### Version
1.3

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i kapitel 6.1.3 Övriga regler.

##### Begäran

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientId | IIType | Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare. / Regel 1.1 | 1 |
| patientId.root | String | Sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. | 1 |
| patientId.extension | String | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1 |
| time | TimePeriodType | Begränsar sökningen till det angivna intervallet. Om tidsattributet Activity.Time i svaret är en tidpunkt innebär begränsningen att endast poster returneras där Activity.Time i svaret ligger inom sökintervallets start- och sluttidpunkt. / Om tidsattributet Activity.Time i svaret är ett intervall innebär begränsningen att endast poster returneras där tidsintervallet som anges i attributet Activity.Time i svaret, överlappar med det angivna sökintervallet, dvs. / det bildade intervallets starttidpunkt ligger inom sökintervallets start- och sluttidpunkt / det bildade intervallets sluttidpunkt ligger inom sökintervallets start- och sluttidpunkt / det bildade intervallets starttidpunkt ligger före sökintervallets starttidpunkt och sluttidpunkt ligger efter sökintervallets sluttidpunkt / Om sökningen begränsas med detta attribut ska poster som saknar Activity.Time inte returneras. Om sökningen inte begränsas med detta attribut returneras även poster som saknar Activity.Time. | 0..1 |
| time.start | TimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| time.end | TimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| activityCode | CVType | Begränsar sökningen till en viss typ av aktivitet. Motsvarar activity.code i svaret. | 0..* |
| activityCode.code | String | Kod för aktivitet | 1 |
| activityCode.codeSystem | String | Kodsystem för angiven kod. | 1 |
| activityCode.codeSystemName | String | Del av standarddatatyp. Ska ignoreras i begäran. | 0..0 |
| activityCode.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| activityCode.displayName | String | Del av standarddatatyp. Ska ignoreras i begäran. | 0..0 |
| activityId | IIType | Ett unikt värde för själva aktiviteten som också refererar till vilket källsystem informationen kommer ifrån. Motsvarar activity/id i svaret. | 0..* |
| activityId.root | String | Källsystemet HSAID | 1 |
| activityId.extension | String | Det i källsystemet unika identiteten för aktiviteten | 1 |
| sourceSystemId | IIType | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. Motsvarar activityGroup/sourceSystem i svaret. | 0..1 |
| sourceSystemId.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| sourceSystemId.extension | String | Extension sätts till HSA-id för det källsystem inom vilket aktivitetsId är unikt. | 1 |
| careGiverId | IIType | Begränsar sökningen till aktivitet från en specifik vårdgivare. Motsvarar activityGroup/performerRole/careUnit/ careGiver i svaret. | 0..1 |
| careGiverId.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| careGiverId.extension | String | Extension sätts till HSA-id för den vårdgivaren från vilken aktiviteter skall returneras från. | 1 |
| careUnitId | IIType | Begränsar sökningen till en vårdenhet (se [R15] förytterligare information om begreppet vårdenhet) som har ansvar för dokumentationen av en aktivitet. Motsvarar activityGroup/performerRole/careUnit/ i svaret. | 0..1 |
| careUnitId.root | String | Root sätts till OID för HSA-id 1.2.752.129.2.1.4.1 | 1 |
| careUnitId.extension | String | Extension sätts till HSA-id för PDL vårdenheten. | 1 |
| interactionAgreementId | UUIDType | Detta attribut används inte. Ange alltid UUID / 2866a7c4-9c60-433f-9035-a4d779ffe7a1 | 1..1 |
| relation | RelationFilterType | Begränsar sökningen till aktiviteter med avseende på hur de är relaterade till andra uppgifter i journalsystem. Endast de poster med relationer som matchar villkoren i denna lista skall returneras. Om listan är tom filtreras inte aktiviteter på deras relationer. Motsvarar activityGroup/activity/relation i svaret. / Minst en av relation.typeCode och relation.id skall vara angiven. | 0..* |
| relation.typeCode | CVType | Filtrera på relations-/sambandstyp | 0..1 |
| relation.typeCode.code | String | Kod för relation/-sambandstyp | 0..1 |
| relation.typeCode.codeSystem | String | Kodsystem för relation-/sambandstyp | 0..1 |
| relation.typeCode.codeSystemName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| relation.typeCode.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| relation.typeCode.displayname | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| relation.id | IIType | Begränsar sökningen till aktiviteter med den identitet som anges i sambandet/relationen. Detta ger exempelvis möjlighet att söka ut alla aktiviteter som har en relation till en viss observation. | 0..1 |
| relation.id.root | String | Id-root från den Uppgift i patientjournal som sambandet pekar ut. Detta är ett källsystems-HSA-id. | 0..1 |
| relation.id.extension | String | Id-extension från den uppgift i patientjournal som sambandet pekar ut. Detta ska vara ett id som är unikt inom källsystemet för informationen. | 0..1 |
| relation. referredInformationType | String | Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. I denna version av tjänstekontraktet är följande typer möjliga: / chb-o  (observation) / caa-ga (aktivitet) | 1..1 |

##### Svar: activityGroup

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| activityGroup | ActivityGroupType | Grupp av aktiviteter som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera aktiviteter gjorts med samma medverkande (exempelvis de aktiviteter som utförts under ett visst operationstillfälle). Denna klass är en teknisk optimering som inte speglas i NI 2015:1. | 0..* |
| patient | PatientType | Den patient som aktivitetsgruppen avser. | 1..1 |
| performerRole | PerformerRoleType | Den som utfört aktiviteter inom gruppen. | 1..1 |
| legalAuthenticator | LegalAuthenticatorType | Den som signerat aktiviteterna inom gruppen. | 0..1 |
| additionalParticipant | AdditionalParticipantType | Övriga deltagare relaterat till aktiviteterna inom gruppen. | 0..* |
| device | DeviceType | Deltagande artefakt / Använd dessa i additionalParticipant i stället. | 0..0 |
| location | LocationType | Plats för aktiviteten / Använd dessa i additionalParticipant i stället. | 0..0 |
| careProcessId | UUIDType | UUID för den individanpassade vårdprocess som denna aktivitet ingår i | 0..1 |
| sourceSystem | SourceSystemType | Källsystem som aktivitetsgruppen lagras i. | 1..1 |
| activity | ActivityType | De aktiviteter som ligger inom denna grupp av aktiviteter. | 1..* |

##### Svarsdel: activityGroup/patient
Klassen PatientType är en kompakt och specifik representation av den patient som aktiviteten gäller.

| activityGroup/patient | PatientType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för patienten. Skall anges med 12 tecken utan avskiljare. | 1 |
| id.root | String | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1 |
| id.extension | String | Personnummer/samordningsnummer/reservnummer. | 1 |
| dateOfBirth | DateType | Anger patientens födelseår, månad och dag. Ej personnummer!

Datum. Format ÅÅÅÅMMDD | 1 |
| gender | CVType | Anger patientens kön. | 0..1 |
| gender.code | String | Kod för kön. / 0 okänt
1 man
2 kvinna
9 ej tillämpligt | 1 |
| gender.codeSystem | String | Sätts till OID för KV kön: 1.2.752.129.2.2.1.1 | 1 |
| gender.codeSystemName | String | Namn för kodsystem. | 0..1 |
| gender.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| gender.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |

##### Svarsdel: activityGroup/performerRole

| activityGroup/performerRole | PerformerRoleType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Identitet för personen som utfört aktiviteten. / Detta fält anges enbart om aktiviteten utförts av hälso- och sjukvårdspersonal. Anges med HSA-id. / Regel 2.1 | 0..1 |
| id.root | String | Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1). | 1 |
| id.extension | String | HSA-id för den hälso- och sjukvårdspersonal som utfört aktiviteten. | 1 |
| code | CVType | Beskriver den roll som utföraren agerar i under aktiviteten. | 1 |
| code.code | String | Kod för utförarroll. | 1 |
| code.codeSystem | String | Kodsystem för angiven kod för utförartyp. | 1 |
| code.codeSystemName | String | Namn på kodsystem. | 0..1 |
| code.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| code.displayName | String | Klartext för det som koden anger. | 0..1 |
| person | PersonType | Beskriver den person som utfört aktiviteten. Klassen används i två fall: / Då det finns behov av att beskriva egenskaper hos person som utfört aktiviteten som inte beskrivs i performerRole (t.ex. namn på hälso- och sjukvårdspersonal) / Då aktiviteten utförts av en person som inte klassas som hälso- och sjukvårdspersonal. / Regel 2.1 | 0..1 |
| careUnit | CareUnitType | Den PDL-vårdenhet och PDL-vårdgivare som aktiviteten utförs på uppdrag av (där utföraren har sitt medarbetaruppdrag).  Ska endast anges då den person som utfört aktiviteten är hälso- och sjukvårdpersonal. / Regel 2.1 / Regel 2.6 | 0..1 |

##### Svarsdel:  activityGroup/legalAuthenticator
Klassen LegalAuthenticator är en kompakt och specifik version av AdditionalPartipication.
LegalAuthenticator är indirekt en ”Professionell aktör” med deltagandetyp signerare enligt V-MIM i de fall då informationen signerats.

| activityGroup/legalAuthenticator | LegalAuthenticatorType |  |  |
| :--- | :--- | :--- | :--- |
| Id | IIType | HSA-id för personen som signerat aktiviteterna som ingår i aktivitetsgruppen. / Regel 2.4 | 0..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id. | 1 |
| time | PartialTimeStampType | Tid för signeringen av aktiviteten. Uttrycks på formatet ÅÅÅÅMMDDttmmss där klockslaget är frivilligt. | 1 |
| name | String | För- och efternamn i klartext för signerande person. / Regel 2.4 | 0..1 |

##### Svarsdel:  activityGroup/additionalParticipant

| activityGroup/additionalParticipant | AdditionalParticipantType |  |  |
| :--- | :--- | :--- | :--- |
| Id | IIType | Identifierare för ytterligare deltagare. / Detta fält anges enbart om deltagaren klassas som hälso- och sjukvårdspersonal. Anges med HSA-id. / Regel 2.2 | 0..1 |
| id.root | String | Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1). | 1..1 |
| id.extension | String | HSA-id för den hälso- och sjukvårdspersonal som är ytterligare deltagare. | 1..1 |
| type | CVType | Typ av deltagande. Detta beskriver på vilket sätt en deltagare deltagit i aktiviteten. Kan exempelvis vara sekundär utförare/assistent. Istället för person kan ”deltagandet” handla om utrustning (device) eller organisation eller plats. | 1..1 |
| type.code | String | Kod för typ av deltagande. | 1..1 |
| type.codeSystem | String | Kodsystem för typ av deltagande. | 1..1 |
| type.codeSystemName | String | Skall ej anges | 0..0 |
| type.codeSystemVersion | String | Skall ej anges | 0..0 |
| type.displayName | String | Skall ej anges | 0..0 |
| role | CVType | Beskriver i vilken roll deltagaren agerar (exempelvis rollen som anhörig eller i sin yrkesroll som vårdpersonal). | 1..1 |
| role.code | String | Kod för deltagares roll | 1..1 |
| role.codeSystem | String | Kodsystem för deltagares roll | 1..1 |
| role.codeSystemName | String | Skall ej anges | 0..0 |
| role.codeSystemVersion | String | Skall ej anges | 0..0 |
| role.displayName | String | Skall ej anges | 0..0 |
| time | TimePeriodType | I de fall deltagandetiden för denna deltagare inte överensstämmer med aktivitetens tidsperiod kan time-attributet ange när den specifika deltagaren deltog i aktiviteten. | 0..1 |
| Endast en av nedanstående | Endast en av nedanstående | Endast en av nedanstående | Endast en av nedanstående |
| person | PersonType | Deltagande övrig person. | 0..1 |
| organisation | OrganisationType | Deltagande övrig organisation. | 0..1 |
| device | DeviceType | Deltagande medicinskteknisk produkt (Se [R14] för mer information om vad som klassas som medicinskteknisk produkt). | 0..1 |
| location | LocationType | Deltagande plats. | 0..1 |

##### Svarsdel: activityGroup/additionalParticipant/person

| activityGroup/additionalParticipant/person | PersonType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för deltagande övrig person | 0..1 |
| id.root | String | Sätts till OID för typ av identifierare. / För HSA-nummer 1.2.752.129.2.1.4.1
För Skatteverkets personnummer 1.2.752.129.2.1.3.1
För Skatteverkets samordningsnummer 1.2.752.129.2.1.3.3
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1 |
| id.extension | String | HSA-id/personnummer/ samordningsnummer/reservnummer. | 1 |
| name | String | För- och efternamn i klartext för person. | 0..1 |

##### Svarsdel:  activityGroup/additionalParticipant/organisation

| activityGroup/additionalParticipant/organisationType | OrganisationType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | HSA-id för den organisation som denna ytterligare deltagare har sitt uppdrag hos | 1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id för organisationen. | 1 |
| name | String | Organisationens namn i klartext så som det är lämpligt att publicera för en användare. | 0..1 |

##### Svarsdel:  activityGroup/additionalParticipant/device
Klassen Device är en sammanslagning av de generiska typerna artefakt och roll enligt V-MIM.

| activityGroup/additionalParticipant/device | DeviceType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för instans av medicinskteknisk produkt. Exempelvis identitet för en viss MR-kamera på röntgenavdelning 18. | 0..1 |
| id.root | String | Typ av identitetsbeteckning. | 1 |
| id.extension | String | Specifikt id för medicinskteknisk produkt. | 1 |
| type | CVType | Beskriver typ av medicinskteknisk produkt. | 0..1 |
| type .code | String | Kod för typ av medicinskteknisk produkt. | 1 |
| type.codeSystem | String | OID för kodsystem. | 1 |
| type.codeSystemName | String | Namn på kodsystem. | 0..1 |
| type.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| type.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| model | SCType | Modell för angiven medicinskteknisk produkt. | 0..1 |
| model.code | CVType | Modellbeteckning | 0..1 |
| model.code.code | String | Kod för modellbeteckning | 1..1 |
| model.code.codeSystem | String | Kodsystem för modellbeteckning. | 1..1 |
| model.code.codeSystemVersion | String | Skall ej anges | 0..0 |
| model.code.displayName | String | Klartext för kod | 0..1 |
| model.value | String | Tillverkarens modellbeteckning i klartext. Kan användas som komplement eller i stället för den model.code (kod för modell). | 0..1 |

##### Svarsdel:  activityGroup/additionalParticipant/location
Klassen Location är en sammanslagning av typen roll och plats enligt V-MIM.

| activityGroup/additionalParticipant/location/address/ | LocationType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifiering för platsen. Anges om platsen är en vårdenhet. | 0..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id. | 1 |
| name | String | Namn på den plats där en aktivitet har genomförts. | 1 |
| address | AddressType | Adress till plats | 0..* |
| address.use | PostalAddressUseEnum | Om flera adresser anges skiljs de åt via sin use-kod. Den primära/default adressen anges alltid utan use-kod. / PHYS – Adress till fysisk plats/besöksadress / H – Hemadress / HV – Semesteradress / WP – Arbetsplats / TMP – Tillfällig adress / När det inte finns en adress med ”use” som matchar syftet med adressanvändningen, väljs den primära adressen. | 0..1 |
| address.part | AddressPartType |  | 1..* |
| address.part.value | String | Del av adress till plats | 1..1 |
| address.part.type | AddressPartTypeEnum | Enumeration baserat på ISO 21090: / CAR = C/O (care of) adress / POB = Postbox / SAL = Gatuadressrad / ZIP = Postnummer / CTY = Postort / CNT = Land / PRE = Distriktsområde (LKF-kod) / CPA = Län (anges med länskod enligt SCB) / Koderna är listade i den sorteringsordning de ska förekomma i meddelandet. | 0..1 |
| electronicAddress | TelType | Elektronisk adress till plats | 0..* |
| electronicAddress.use | TelTypeEnum | voice = nummer för röstsamtal / fax = faxnummer / data = e-post adress / sms =  nummer för mobila textmeddelanden | 1..1 |
| electronicAddress.value | String | Elektronisk adress | 1..1 |

##### Svarsdel:  activityGroup/sourceSystem

| activityGroup/sourceSystem | SourceSystemType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | HSA-id för källsystemet som aktivitetsgruppen hämtats i från | 1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id för systemet | 1 |

##### Svarsdel:  activityGroup/activity

| activityGroup/activity | ActivityType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | En unik identifierare för aktiviteten som avses. Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| id.root | String | Källsystemets HSA-id. | 1 |
| id.extension | String | Den inom källsystemet unika identifieraren för aktiviteten. | 1 |
| code | CVType | NI 2015:1
Kod för den typ av aktivitet som avses, exempelvis genom användande av en kod från en klassifikation för åtgärder. / Notera att antingen attributet kod eller beskrivning måste finnas. / Denna tekniska implementationen av aktivitetskontraktet kräver till skillnad från NI 2015:1 att code/kod-attributet anges. Description/Beskrivningsfältet är frivilligt i denna implementation i likhet med NI 2015:1. | 1 |
| code.code | String | Kod för den typ av aktivitet som avses | 1 |
| code.codeSystem | String | Kodsystem för angiven kod för  typ av aktivitet. | 1 |
| code .codeSystemName | String | Namn på kodsystem. | 0..1 |
| code .codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| code .displayName | String | Textuell beskrivning av det som koden avser. | 0..1 |
| status | CVType | NI 2023:1
Kod för aktivitetens status som anger om en aktivitet exempelvis är planerad eller utförd. En instans av klassen aktivitet kan inte byta status. Om man exempelvis vill dokumentera en planerad utredning och som senare utförs så dokumenteras detta som två instanser av klassen aktivitet, en med status planerad och en med status utförd / Om statuskoden utelämnas antas detta vara en faktiskt utförd aktivitet som dokumenterats. | 0..1 |
| status.code | String | Kod för status. / Anges med en av koderna ur snomeds refset urval aktivitetsstatus (SCTID: 56421000052109). / Observera att detta refset kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1 |
| status.codeSystem | String | Kodsystem för angiven kod för status. Sätts till / 1.2.752.116.2.1.1 | 1 |
| status.codeSystemName | String | Sätts till snomed-ct-se | 0..1 |
| status.codeSystemVersion | String | Skall ej användas | 0..0 |
| status.displayName | String | Sätts till den klartext som motsvarar koden som angetts i status.code. | 0..1 |
| targetSite | CVType | NI 2015:1
Angivelse av lokalisation [targetSite], som används för att beskriva vad observationen avser gällande anatomi, funktion eller system. Lokalisation [targetSite] kan beskriva exempelvis lateralitet, organs position och orientering i relation till andra delar av kroppen. / Lokalisationsattributet [targetSite] används endast om inte attributet typ [type] innefattar tillräcklig information om detta. | 0..1 |
| targetSite.code | String | Kod för lokalisation. | 1 |
| targetSite.codeSystem | String | Kodsystem för angiven kod för lokalisation. | 1 |
| targetSite.codeSystemName | String | Namn på kodsystem. | 0..1 |
| targetSite.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| targetSite.displayName | String | Textuell beskrivning av kod för lokalisation. | 0..1 |
| time | PartialTimePeriodType | Tidsperiod för aktiviteten. / Består av PartialTimeStampTypeintervallerna startTime respektive endTime. Vardera uttrycks på formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år. / Om aktiviteten skedde vid en tidpunkt, inte under ett intervall, sätts sluttid till samma tid som starttid. / Minst en av startTime och endTime måste vara angiven. / NI 2015:1
Angivelse av vilken tid en aktivitet utförts, är planerad att utföras eller önskas utföras. Om aktiviteten är planerad att ske återkommande kan även frekvens och omfattning anges. / Regel 2.3 | 0..1 |
| time.start | PartialTimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år.. | 0..1 |
| time.end | PartialTimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss  där precisionen kan minskas ner till att bara ange år.. | 0..1 |
| method | CVType | Kod för den typ av tillvägagångssätt för genomförandet av / aktiviteten som avses | 0..1 |
| method.code | String | Kod för metodtyp. | 1 |
| method.codeSystem | String | Kodsystem för angiven kod för metodtyp. | 1 |
| method.codeSystemName | String | Namn för kodsystem. | 0..1 |
| method.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| method.displayName | String | Klartextbeskrivning av det begrepp som avses. | 0..1 |
| description | String | Fritextbeskrivning av aktiviteten som kompletterar kodbeteckningen. | 0..1 |
| approvedForPatient | Boolean | Anger om information får delas till patient (menprövad). Värdet sätts i sådant fall till ”true”, i annat fall till ”false”. | 1 |
| registrationTime | TimeStampType | Dokumentationstidpunkt. När uppgiften registrerades i patientens journal. Kan skilja sig från signeringstidpunkt som återfinns i LegalAuthenticatior. | 1 |
| relation | RelationType | Beskriver typade samband till andra informationsmängder. Exempelvis kan en observation av en post-operativ infektion ha ett samband av typen ”har orsak” till en tidigare operation (aktivitet). | 0..* |
| additionalInformation | AdditionalInformationType | Ytterligare information kopplad till aktiviteten. | 0..* |
| additionalInformation.key | String | Ange en av följande: / Planeringstid / Orsak / Planeringstid avser tiden då en aktivitet planerades. / Exempel: Den 1 januari planerar en läkare att en viss behandling ska påbörjas den 1 februari. Planeringstiden avser i detta fall 1 januari. / Orsak avser orsaken till varför en aktivitet har utförts. | 1..1 |
| additionalInformation.value | Any | Planeringstid anges med datatypen PatialTimeStampType enligt formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att ange år, månad och dag. / Orsak anges med kod enligt datatypen CVType [R12] | 1..1 |

##### Svarsdel:  activityGroup/activity/relation

| activityGroup/activity/relation | RelationType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CVType | Anger vilken typ av relation den refererade informationen har till hämtad aktivitet. | 1 |
| code.code | String | Kod för relationstyp. | 1 |
| code.codeSystem | String | Kodsystem för angiven kod för relationstyp. | 1 |
| code.codeSystemName | String | Namn för kodsystem. | 0..1 |
| code.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| referredInformation | ReferredInformationType |  | 1..1 |

##### Svarsdel:  activityGroup/activity/relation/referredInformation

| activityGroup/activity/relation/referredInformation | ReferredInformationType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Den refererade externa informationens identitet | 1..1 |
| id.root | String | HSA-id för källsystem där den refererade informationen är lagrad. | 1..1 |
| id.extension | String | Ett inom källsystemet unikt id för denna aktivitet.  I denna version av tjänstekontraktet är endast relationer inom ett källsystem tillåtet. | 1..1 |
| time | PartialTimeStampType | Starttid av refererad information. Uttrycks med formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år. / Regel 2.5 | 1 |
| type | String | Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. Exempelvis kan en aktivitet ha ett samband till en observation och då är referredInformationType ”chb-o”.Se avsnitt om categorization i tjänstekontraktsbeskrivning för respektive tjänst, som passar för det relaterade objektet. | 1 |
| informationOwner | InformationOwnerType | Vårdgivare som är informationsägare av den refererade informationen. | 1..1 |

##### Svarsdel:  activityGroup/activity/relation/referredInformation/informationOwner

| activityGroup/activity/relation/referredInformation/informationOwner | InformationOwnerType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Informationsägare av refererad information | 1..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Vårdgivarens HSA-id. | 1..1 |

##### Svarsdel: activityGroup/performerRole/person

| activityGroup/performerRole/person | PersonType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för person som utfört aktiviteten. Detta fält anges endast om aktiviteten utförts av person som INTE klassas som hälso- och sjukvårdspersonal. / Om aktiviteten utförts av person som inte klassas som hälso- och sjukvårdspersonal och id inte anges måste person.name vara angiven. | 0..1 |
| id.root | String | Sätts till OID för typ av identifierare. 
För Skatteverkets personnummer 1.2.752.129.2.1.3.1
För Skatteverkets samordningsnummer 1.2.752.129.2.1.3.3
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1 |
| id.extension | String | Personnummer/ samordningsnummer/reservnummer. | 1 |
| name | String | För- och efternamn i klartext för person. / Regel 2.1 | 0..1 |

##### Svarsdel:  activityGroup/performerRole/careUnit

| activityGroup/performerRole/careUnit | CareUnitType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Id | IIType | HSA-id för PDL vårdenhet som har ansvar för aktiviteten. / Regel 2.6 | 1..1 |
| id.root | String | Root blir då / OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Extension sätts till HSA-id för vårdenheten | 1..1 |
| name | String | Vårdenhetens namn till vilken aktiviteten är knuten. | 0..1 |
| careGiver | CareGiverType | Den vårdgivaren som enheten hör till. | 1..1 |

##### Svarsdel:  activityGroup/performerRole/careUnit/careGiver

| activityGroup/performerRole /careUnit /careGiver | CareGiverType | Kommentar | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Id | IIType | HSAid. Vårdgivarens identitet som enheten är anknuten till. / Regel 2.6 | 1..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Extension sätts till HSA-id för vårdgivaren. | 1..1 |
| name | String | Vårdgivarens namn till vilken enheten är knuten. | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| 1.1 | Den enda sökparametern som explicit behöver anges är patientId. Det finns även möjlighet att kombinera patientId med en eller flera andra parametrar: / timePeriod / För att begränsa till ett tidsintervall / activityCode / För att begränsa till en viss typ av aktivitet / activityId / För att begränsa till en specifik identifierad aktivitet / careGiverId / För att begränsa till en specifik vårdgivare / careUnitId / För att begränsa till en specifik vårdenhet / sourceSystemId / För att begränsa till ett specifikt system / relation / För att begränsa till en relation / En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent, dvs inte vara genomförbart och ska i så fall resultera i ett tydligt felmeddelande. Detta skulle exempelvis inträffa om sökmängden blir för stor för att kunna returneras till konsumenten. | Den enda sökparametern som explicit behöver anges är patientId. Det finns även möjlighet att kombinera patientId med en eller flera andra parametrar: / timePeriod / För att begränsa till ett tidsintervall / activityCode / För att begränsa till en viss typ av aktivitet / activityId / För att begränsa till en specifik identifierad aktivitet / careGiverId / För att begränsa till en specifik vårdgivare / careUnitId / För att begränsa till en specifik vårdenhet / sourceSystemId / För att begränsa till ett specifikt system / relation / För att begränsa till en relation / En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent, dvs inte vara genomförbart och ska i så fall resultera i ett tydligt felmeddelande. Detta skulle exempelvis inträffa om sökmängden blir för stor för att kunna returneras till konsumenten. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| 2.1 | PerformerRole | Aktivitet utförd av vårdpersonal / Då aktivitet är utförd av vårdpersonal ska PerformerRole.id anges med HSAid. / Om producenten ska stödja sammanhållen journalföring och patientens direktåtkomst krävs även att klassen Person används och att Person.name anges. / Aktivitet utförd av icke vårdpersonal / Då aktivitet är utförd av personer som inte innefattar vårdpersonal ska PerformerRole.id inte anges. / Klasserna CareUnit (vårdenhet) och CareGiver (vårdgivare) ska inte involveras däremot ska klassen Person användas och Person.name anges. |
| 2.2 | AdditionalParticipant | AdditionalParticipant är hälso- och sjukvårdspersonal / Då ytterligare medverkande är hälso- och sjukvårdpersonal ska AdditionalParticipant.id anges med HSAid. / Om producenten ska stödja sammanhållen journalföring och patientens direktåtkomst krävs även att klassen Person används och att Person.name anges. / AdditionalParticipant är INTE hälso- och sjukvårdspersonal / Då ytterligare medverkande personer inte är hälso- och sjukvårdspersonal ska additionalParticipant.id inte anges. Istället används klassen Person. / AdditionalParticipant är inte en person / Då additionalParticipant är en device, careUnit eller organization används inte additionalParticipant.id |
| 2.3 | ActivityGroup.Activity.Time | Attributet ActivityGroup.Activity.Time har multiplicitet 0..1. Då man vill indikera att en aktivitet är utförd och ActivityGroup.Activity.Status är satt till 398166005 (utförd) eller saknas, är ActivityGroup.Activity.Time obligatoriskt. |
| 2.4 | LegalAuthenticator | Om informationen är signerad av hälso- och sjukvårdspersonal ska LegalAuthenticator anges med namn och/eller HSA-id i svars-delen. / Minst ett av attributen LegalAuthenticator.id eller LegalAuthenticator.name ska anges. |
| 2.5 | referredInformation.time | ReferredInformation.time ska innehålla en tidpunkt som ska kunna användas som inparameter i ett tidsintervallbaserat sökvillkor till den tjänst som returnerar den identifierade informationsmängd som relationen pekar ut. Denna tidpunkt skall vara den tidpunkt som tidssökparametern till den utpekade tjänsten filtrerar på. I det fall då en konsument har behov av att söka upp flera relaterade informationsmängder från samma tjänst kan konsumenten skapa ett sökintervall som omfattar de ReferredInformation.time från dessa relationer. Detta sökintervall används sedan som inparameter till den tjänst som relationerna pekar ut. På detta sätt kan en konsument göra endast ett anrop över en begränsad tid som returnerar samtlig relaterad information istället för att göra anrop ett och ett med respektive id som anges i relationen, eller ta ut en patients totala informationsmängd utan någon möjlighet att filtrera på tid. |
| 2.6 | activityGroup/ / performerRole/ / careUnit | Åtkomstkontroll inom sammanhållen journalföring / Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

##### SLA-krav
Inga avvikande SLA-krav
