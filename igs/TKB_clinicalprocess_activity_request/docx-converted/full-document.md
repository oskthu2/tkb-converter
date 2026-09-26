Remisshantering clinicalprocess:activity:request

![2026-04-22](images/img_007.png)

![2026-04-22](images/img_004.png)
2026-04-22
Innehållsförteckning
1	Inledning	8
1.1	Svenskt namn	8
2	Versionsinformation	9
2.1	Version 2.1	9
2.1.1	Oförändrade tjänstekontrakt	9
2.1.2	Nya tjänstekontrakt	9
2.1.3	Utgångna tjänstekontrakt	10
2.2	Version tidigare	10
3	Tjänstedomänens arkitektur	10
3.1	Flöden	10
3.1.1	Skicka och ta emot remiss	10
3.1.2	Hantera mottagen remiss	12
3.1.3	Hantera remisskomplettering	14
3.1.4	Hantera remissvar	16
3.1.5	Obligatoriska kontrakt	18
3.2	Adressering	18
3.3	Aggregering och engagemangsindex	19
3.4	Versionshantering parallella huvudversioner	19
4	Tjänstedomänens krav och regler	19
4.1	Informationssäkerhet och juridik	19
4.2	Icke funktionella krav	19
4.2.1	SLA krav	19
4.2.2	Övriga krav	20
4.3	Felhantering	20
4.3.1	Krav på en tjänsteproducent	20
4.3.2	Krav på en tjänstekonsument	22
5	Tjänstedomänens meddelandemodeller	23
5.1	V-MIM	24
5.1.1	ProcessRequest	24
5.1.2	ProcessRequestConfirmation	29
5.1.3	ProcessRequestOutcome	31
5.2	Formatregler – gemensamma informationskomponenter	33
5.2.1	CVType	33
5.2.2	DateType	35
5.2.3	HSAIdType	35
5.2.4	MultimediaType	35
5.2.5	TimeStampType	36
5.3	Verksamhetsregler	36
5.3.1	Regel 1 Remisskomplettering versionsnumrering	36
5.3.2	Regel 2 Remisskomplettering utan kompletteringsbegäran	36
5.3.3	Regel 3 Ändrat betalningsansvar	36
5.3.4	Regel 4 Funktionen vidareskickning frivillig	36
5.3.5	Regel 5 Besked om vidareskickning	37
5.3.6	Regel 6 Vidareskickning och samtycke	37
5.3.7	Regel 7 Ändrad remiss/remissvar med inbäddad bilaga	37
5.3.8	Regel 8 Bilageformat kan inte hanteras	37
5.3.9	Regel 9 Avbruten eller avvisad remiss	37
5.3.10	Regel 10 Slutbesvarad remiss	37
5.3.11	Regel 11 Hantering format för personidentifierare	37
6	Tjänstekontrakt	38
6.1	ProcessRequest	38
6.1.1	Version	38
6.1.2	Fältregler	38
6.1.3	Övriga regler	55
6.1.4	Annan information om kontraktet	58
6.2	ProcessRequestConfirmation	59
6.2.1	Version	59
6.2.2	Fältregler	59
6.2.3	Övriga regler	65
6.2.4	Annan information om kontraktet	66
6.3	ProcessRequestOutcome	66
6.3.1	Version	66
6.3.2	Fältregler	66
6.3.3	Övriga regler	76
6.3.4	Annan information om kontraktet	77
Revisionshistorik

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| 1.0 RC1 | 2014-10-13 | Torbjörn Dahlin, Inera / Thomas Siltberg, Inera | Flyttat till ny mall (1.3.6) |
| 1.0 RC2 | 2014-11-07 | Thomas Siltberg, Inera / Malin Lundgren, Inera | Ändrat namn i beskrivningen för requestOutcome.outcome.accomplishedActivity.id / Ändrat namn i beskrivningen för requestOutcome.outcome.condition.code / Ändrat namn i beskrivningen för requestOutcome.outcome.condition.text / Uppdaterat sekvensdiagram under Tjänstedomänens arkitektur |
| 1.0 RC3 | 2014-11-12 | Thomas Siltberg, Inera / Malin Lundgren, Inera | Uppdaterat arbetsflöde och sekvensdiagram för Hantera remisstatus. |
| 1.0 RC4 | 2016-02-17 | Thomas Siltberg, Inera | Ändringar i GetRequestStatus: / requestId (ändrat kardinalitet i schemafil). / timePeriod  (ändrad från TimePeriodType till DatePeriodType). / requestStatus.requestOrganisation (ändrat kardinalitet). / requestStatus.requestAuthor  (ändrat namn på typen från SimpleAuthorType till RequestStatusAuthorType). / requestStatus.statusSetter (ändrat namn på typen från SimpleAuthorType till RequestStatusAuthorType). / requestStatus.statusSetter.healthcareProfessionalCareGiverHSAId (tillägg av information om PDL enhet enligt healthCareProfessionalType). / requestStatus.statusSetter.healthcareProfessionalCareUnitHSAId (tillägg av information om PDL enhet enligt healthCareProfessionalType). / Ändrat diagnosisGroup i RequestInstruction så att ICD-10-SE koden med upp till 5 tecken stöds. |
| 1.0 RC5 | 2016-04-28 | Thomas Siltberg, Inera / Malin Lundgren, Inera | Borttag av mappning mot V-TIM 2.2 / Korrigerat beskrivning under requestOutcome.outcome.condition.code / Korrigerat beskrivning under requestOutcome.outcome.accomplishedActivity.text och requestOutcome.outcome.accomplishedActivity.code / Korrigerat beskrivning av result.resultCode och result.errorCode under 4.4 Felhantering / Uppdatering av kommentar för requestOutcome.outcome.condition.text / Har ändrat kardinalitet för healthcareProfessionalCareUnitHSAId och healthcareProfessionalCareGiverHSAId i typen RequestStatusAuthorType i clinicalprocess_activity_request_1.0.xsd / Tog bort kontraktet GetRequestInstruction / Ändrat requestStatus.requestMedium till ej obligatorisk i schema. / Tagit bort hantering av bilagor. / Uppdaterat MIM:ar. / Bytt namn på klassen Statusansvar till Statusansvarig. / Lagt till attributen VårdgivarHSAId och VårdenhetHSAId i klassen Statusansvarig. / Uppdaterat MIM för ProcessRequest: tagit bort kliniskt innehåll som ej skall finnas där. |
| 1.0 RC6 | 2016-05-20 | Thomas Siltberg, Inera | Borttag av kontraktet GetRequestStatus |
| 1.0.2 | 2019-05-14 | Anette Eriksson | Uppdaterad självdeklaration |
| 1.0.2 | 2020-02-10 | Jiri Uosukainen, Inera | Korrigeringar, justeringar och förtydliganden. Tagit bort nyttjande av EI och Remisstatus. Justering av kapitel 3.2 gällande Adressering. |
| 1.0.2 | 2021-01-11 | Jiri Uosukainen, Inera | Förtydliganden gällande komplettering av remiss som ej påkallats  kompletteringsbegäran, Kap 3.1.3 och tillägg av av regel 6. |
| 1.0.2 | 2021-03-25 | Jiri Uosukainen, Inera | Justering av kodverksreferenser hävisar istället till Informationsspecifikation [R5] (Kv e-remiss versionsorsak, Kv yrkeskod) / Tagit bort oanvända referenser (DocBook, Apache  Commons Lang StringEscpeUtils). |
| 1.0.3 | 2022-11-01 | Bente Sjöberg-Silfverling och Tom Lundholm, Inera | Mindre textuella ändringar och förtydliganden (ex. i 3.1.1 användning av Utbudstjänsten, ändring till ÅÅÅÅMMDD från SSÅÅMMDD, ändring landsting till region och tillägg beskrivning för rödmarkerade element i tabellerna Fältregler). / Tillägg av SVF-information i beskrivningen av elementet request.additionalInformation.administrativeInformation |
| 1.0.3 | 2023-09-07 | Bente Sjöberg-Silfverling, Inera | Överfört till ny dokumentmall |
| 2.0 RC1 | 2024-02-23 | Bente Sjöberg-Silfverling och Tom Lundholm, Inera | Ny huvudversion 2.0 för domänen och för tjänstekontrakten ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome / Funktionalitet som har lagts till: / Nya meddelandetyper såsom Avvisa remiss och Avbryta remiss har lagts till i ProcessRequestConfirmation, och Delsvar, Preliminärt svar och Slutsvar har lagts till i ProcessRequestOutcome / Möjlighet att skicka med inbäddade bilagor har lagts till i ProcessRequest och i ProcessRequestOutcome / Nytt fält i ProcessRequest för information om att vårdansvar kvarstår eller begäran om övertagande av vårdansvar / Felkoder för felmeddelanden har lagts till för alla tre kontrakten / Ändringar från tidigare version: / Tillåtna yrkeskoder har utökats / Antalet tecken i remissvaret i ProcessRequestOutcome har utökats / Ändringar kardinalitet för fälten Hälso- och sjukvårdspersonal (blir obligatoriskt) och Tilläggsinformation (blir frivilligt) / Borttag av fältet Kliniskt tillstånds id från ProcessRequest och i ProcessRequestOutcome / Förtydligande för funktionen vidareskickning har gjorts i TKB / Förtydligande för meddelandetyp AB har gjorts i TKB / Ändring datatyp till CVType för fälten Betalningsförbindelse avtal, Betalningsförbindelse kapitel, Ersättningstyp betalningsförbindelse, Betalningsansvarig region, Ägare av åberopat kontrakt och Kliniskt tillståndskod. / Textuella förtydliganden och ändringar och uppdateringar av modeller och diagram i TKB |
| 2.0 | 2024-03-12 | Bente Sjöberg-Silfverling, Inera | Version 2.0 fastställd, se ändringar ovan |
| RC1 2.1 | 2025-02-24 | Bente Sjöberg-Silfverling, / Inera | Ny version 2.1 för domänen och för tjänstekontrakten ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome / Funktionalitet som har lagts till: / Tillåtet att även skicka nationellt reservId och lokalt reservnummer utöver personnummer och samordningsnummer. Borttag av formatregler för personId i schemafil och schematronregel. Tillägg av felmeddelande och verksamhetsregel. |
| 2.1 | 2025-03-24 | Bente Sjöberg-Silfverling, Inera | Version 2.1 fastställd, se ändringar ovan |
| RC1 2.2 | 2026-03-12 | Bente Sjöberg-Silfverling, Inera | Ny version 2.2 för domänen och för tjänstekontrakten ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome / Uppdateringar som har gjorts: / Byte av urval för yrkeskoder för fältet typeOfHealthcareProfessional. / Borttag av schematronregel ’Verify typeOfHealthcareProfessional’ |
| 2.2 | 2026-04-22 | Bente Sjöberg-Silfverling, Inera | Version 2.2 fastställd, se ändringar ovan |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – AB_clinicalprocess_activity_request | Obligatoriskt | https://rivta.se/tkview/#/domain/clinicalprocess:activity:request |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | RIV Tekniska anvisningar - Bilaga 1 övergång till ny majorversion inom en tillämpning | Allmän information parallella huvudversioner | https://inera.atlassian.net/wiki/spaces/RTA/pages/2907603096/Bilaga+1+verg+ng+till+ny+majorversion+inom+en+till+mpning |
| R4 | Teknisk realisering | Tjänstespecifik information parallella huvudversioner | https://inera.atlassian.net/wiki/spaces/OIER/pages/2354384923/Teknisk+realisering |
| R5 | IS_clinicalprocess_activity_request | Informationsspecifikation | Distribueras med detta dokument i releaspaketet |
| R6 | RIV Tekniska Anvisningar Tjänsteschema | Regel 11 Felhantering och återrapportering | https://inera.atlassian.net/wiki/spaces/RTA/pages/3632903/RIV+Tekniska+Anvisningar+Tj+nsteschema |
| R7 | RIV Tekniska anvisningar Binära bilagor | Regler | https://inera.atlassian.net/wiki/spaces/RTA/pages/3632854/RIV+Tekniska+Anvisningar+Bin+ra+bilagor#RIVTekniskaAnvisningarBin%C3%A4rabilagor-4.Regler |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| HSA | Hälso- och Sjukvårdens Adressregister | Elektronisk nationell katalog som innehåller kvalitetssäkrade uppgifter om bland annat person och organisationsstruktur. |
| HSP | Hälso- och Sjukvårdspersonal | Person eller personer som i sitt yrke utför hälso- och sjukvård. |
| IS | Informationssystem | System som innehåller journalhandlingar för patienter. |
| TAK | Tjänsteadresseringskatalog | En stödtjänst som erbjuder administration och åtkomst av information som ligger till grund för adressering och kontroll av anropsbehörighet som utförs i en tjänsteplattform. |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
clinicalprocess: activity: request
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1]
Domänen innehåller tjänster för att hantera remissprocessen mellan och inom vårdgivare.
Syftet med domänen är att hantera remissprocessen nationellt och lokalt, mellan och inom vårdgivare, från remiss till svar. Domänen innehåller kontrakt för att ta emot remisser, bekräftelser och svar. I denna domänversion av tjänsten avser remiss en så kallad allmänremiss.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Vård- och omsorg kärnprocess:hantera aktiviteter:remisshantering
Remisshantering

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen clinicalprocess: activity: request. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.1

#### Oförändrade tjänstekontrakt
Samtliga tjänstekontrakt inom domänen är förändrade.

#### Nya tjänstekontrakt
Inga nya tjänstekontrakt i denna version.

##### Förändrade tjänstekontrakt
Följande tjänstekontrakt är förändrade i denna version:
ProcessRequest, version 2.1
ProcessRequestConfirmation, version 2.1
ProcessRequestOutcome, version 2.1
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| ProcessRequest | 1.0.3 | 2.1 | EJ kompatibel |
|  | 2.1 | 1.0.3 | EJ kompatibel |
| ProcessRequestConfirmation | 1.0.3 | 2.1 | EJ kompatibel |
|  | 2.1 | 1.0.3 | EJ kompatibel |
| ProcessRequestOutcome | 1.0.3 | 2.1 | EJ kompatibel |
| ProcessRequestOutcome | 2.1 | 1.0.3 | EJ kompatibel |

#### Utgångna tjänstekontrakt
Samtliga tjänstekontrakt av version 2.0 har utgått.

### Version tidigare
Föregående huvudversion är 1.0.3. Version 2.1 ersätter version 2.0.

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen remisshantering. Det vill säga flöden som beskriver hur man skapar och skickar remisser, olika typer av remissbekräftelser och remissvar. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet, dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden

#### Skicka och ta emot remiss
Flödet ”Skicka och ta emot remiss” beskriver hur en hälso- och sjukvårdspersonal (HSP) skickar en remiss från ett informationssystem (IS) genom att välja och hitta mottagare, skapa, spara och skicka remissen till en mottagande enhet.
Hitta mottagare - HSP1 upplever ett behov av att remittera en patient. HSP1 går in i sitt informationssystem (IS1) och söker efter en ur verksamhetsperspektiv lämplig mottagare av remissen. IS1 hanterar information om mottagare och vilka huvudversioner av Elektronisk remiss mottagarens journalsystem kan hantera med hjälp av HSA-katalog och TAK.
Skapa remiss – HSP1 väljer lämplig mottagare ur lista i IS1. Beroende på vilken huvudversion av tjänsten som mottagaren använder så presenterar IS1 rätt remissmall för användaren. HSP1 fyller sedan i remissen och sparar den.
Bifoga bilaga – HSP1 väljer om en eller flera bilagor ska bifogas till remissen.
Skicka remiss - HSP1 skickar iväg remissen från IS1. Remissen adresseras till det HSA-id som den tänkta mottagaren har och skickas via tjänsteplattformen.
Ta emot remiss - IS2 tar emot remiss från IS1. IS2 presenterar den inkomna remissen för HSP2 i rollen som Remissbedömare.
Ändra remissinnehåll eller betalningsansvar - Remittenten Hsp1 kan välja att ändra innehållet i remissen i efterhand. Om Hsp2 ännu inte har bedömt remissen kan Hsp1 uppdatera remissen och skicka den igen. Om remissen redan är bekräftad så krävs en kompletteringsbegäran från Hsp2 – se flöde ”Hantera remisskomplettering”. Om ändringen rör betalningsansvar kan Hsp1 skicka denna även när remissen är bekräftad.

##### Arbetsflöde

![img_003.jpeg](images/img_003.jpeg)
*Figur 1 Arbetsflöde Skicka och ta emot remiss enligt BPMN 2.0*

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal 1 (HSP1) | Den hälso- och sjukvårdspersonal som skapar och skickar remiss. |
| Informationssystem 1 (IS1) | Det informationssystem som HSP1 använder för att skapa och skicka remiss. |
| Hälso- och sjukvårdspersonal 2 (HSP2) | Den hälso- och sjukvårdspersonal som läser mottagen remiss. |
| Informationssystem 2 (IS2) | Det informationssystem som HSP2 använder för att ta emot och visa remiss. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Tjänstekontrakt som används är: ProcessRequest för remisshantering.

![img_012.jpeg](images/img_012.jpeg)
*Figur 2 Sekvensdiagram Skicka och ta emot remiss enligt UML*

#### Hantera mottagen remiss
Flödet ”Hantera mottagen remiss” beskriver hur mottagaren av remissen (hälso- och sjukvårdspersonal 2) bedömer och bekräftar remissen (om innehåll godkänt), begär komplettering (om innehåll ej godkänt), skickar ev. vidare remissen (om annan mottagare är mer lämplig), avvisar remissen om frågeställning inte matchar utbud eller uppdrag, eller avbryter remissen om behovet av vårdkontakt inte längre finns.
Bedöma och bekräfta remiss – Hälso- och sjukvårdspersonal (HSP) 2 i rollen som Remissbedömare får remissen presenterad för sig av IS2 och gör en verksamhetsmässig bedömning om att tillräckligt med underlag finns för att gå vidare med hanteringen av patienten. HSP2 skickar en remissbekräftelse till HSP1 (remittenten) med anledning av att HSP2 bedömt och accepterat remissen.
Begära komplettering - HSP2 i rollen som Remissbedömare får remissen presenterad för sig av IS2 och gör en verksamhetsmässig bedömning om att tillräckligt med underlag saknas för att gå vidare med hanteringen av patienten. HSP2 bedömer att remissen behöver kompletteras och bestämmer sig för att begära en komplettering från avsändaren. En kompletteringsbegäran skrivs och skickas från IS2 till IS1.
Skicka vidare - HSP2 i rollen som Remissbedömare får remissen presenterad för sig av IS2 och gör en verksamhetsmässig bedömning om att remissen inte ska hanteras på enheten. Därefter letar HSP2 upp en bättre lämpad mottagare enligt flöde 3.1.1 och skickar iväg den enligt flöde 3.1.2. Alternativt avvisas remissen, se nedan.
Avvisa remiss - HSP2 i rollen som Remissbedömare får remissen presenterad för sig av IS2 och gör en verksamhetsmässig bedömning om att remissen inte kan hanteras på enheten om frågeställning inte matchar enhetens utbud eller uppdrag. HSP2 avvisar remissen med en motivering till varför och skickar till HSP1.
Avbryt remiss: HSP2 i rollen som Remissbedömare får remissen presenterad för sig av IS2 och gör bedömningen att remissen inte kan hanteras på enheten om behov av vårdkontakt inte längre finns, t.ex. om åtgärd inte längre är aktuell eller om patienten är avliden. HSP2 avbryter remissen med en motivering till varför och skickar till HSP1. Detta steg kan även ske efter att en remiss har bekräftats och kompletterats, fram till dess att ett remissvar skrivs.

##### Arbetsflöde

![img_009.jpeg](images/img_009.jpeg)
*Figur 3 Arbetsflöde Hantera mottagen remiss, enligt BPMN 2.0*

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal 1 (HSP1) | Den hälso- och sjukvårdspersonal som läser och hanterar bekräftelse på remiss, kompletteringsförfrågan på remiss, avvisad remiss eller avbruten remiss. |
| Informationssystem 1 (IS1) | Det informationssystem som HSP1 använder för att ta emot och visa bekräftelse på remiss, kompletteringsförfrågan på remiss, avvisad remiss eller avbruten remiss. |
| Hälso- och sjukvårdspersonal 2 (HSP2) | Den hälso- och sjukvårdspersonal som bedömer remiss och antingen bekräftar remiss, skickar förfrågan om komplettering, skickar vidare, avvisar eller avbryter mottagen remiss. |
| Informationssystem 2 (IS2) | Det informationssystem som HSP2 använder för att skicka bekräftelse på remiss, skicka förfrågan om komplettering, skicka vidare, avvisa eller avbryta mottagen remiss. |

##### Sekvensdiagram
Tjänstekontrakt som är involverade: ProcessRequestConfirmation. (ProcessRequest täcks av flödet ”Skicka och ta emot remiss”)

![img_008.jpeg](images/img_008.jpeg)
*Figur 4 Sekvensdiagram Hantera mottagen remiss, enligt UML*

#### Hantera remisskomplettering
Flödet ”Hantera remisskomplettering” beskriver hur en begärd komplettering hanteras. Mottagaren av kompletteringsbegäran (HSP1), skriver och skickar komplettering och sändaren av kompletteringsbegäran (HSP2) tar emot kompletteringen.
En remisskomplettering(ny version av remiss) kan vid behov också skickas utan att remissmottagare (HSP2) begärt komplettering så länge remissen inte är bedömd (då remissbekräftelse mottagits av IS1) . Detta sker då på initiativ av remittent (HSP1) när behov uppstår hos avsändaren att komplettera informationen i remissen. Detta flöde beskrivs ej i figur 5 men motsvaras av flödet i 3.1.1 ”Skicka och ta emot remiss”.
Skriva komplettering - En begäran av komplettering har inkommit till IS1 som uppmärksammar HSP1 på detta. HSP1 kompletterar remissen enligt önskan från HSP2 och sparar i IS1.
Skicka komplettering – HSP1/IS1 skickar den uppdaterade remissen till HSP2/IS2.
Ta emot komplettering – IS2 tar emot den kompletterade remissen och visar för HSP2.

##### Arbetsflöde

![img_005.jpeg](images/img_005.jpeg)
*Figur 5 Arbetsflöde Hantera remisskomplettering, enligt BPMN 2.0*

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal 1 (HSP1) | Den hälso- och sjukvårdspersonal som skriver och skickar komplettering på begärd remiss. |
| Informationssystem 1 (IS1) | Det informationssystem som HSP1 använder för att skapa och skicka komplettering på begärd remiss. |
| Hälso- och sjukvårdspersonal 2 (HSP2) | Den hälso- och sjukvårdspersonal som läser och bedömer kompletterad remiss. |
| Informationssystem 2 (IS2) | Det informationssystem som HSP2 använder för att ta emot och visa kompletterad remiss. |

##### Sekvensdiagram
Tjänstekontrakt som är involverade är ProcessRequest.

![img_002.jpeg](images/img_002.jpeg)
*Figur 6 Sekvensdiagram Hantera remisskomplettering, enligt UML*

#### Hantera remissvar
Flödet ”Hantera remissvar” beskriver hur remissmottagaren (HSP2) skriver och skickar svar på en remiss, samt hur HSP1 tar emot remissvaret.
Skriva remissvar - En remiss har inkommit och remissmottagande enhet har hanterat remissen. HSP2, i rollen som Remisbesvarare, har skaffat sig underlag för att besvara remissen och författar ett svar. Svaret kan vara av typen delsvar, preliminärt svar eller slutsvar.
Skicka remissvar – HSP2/Remissbesvarare skickar det författade svaret från IS2 till den remissvarsmottagande enheten.
Ta emot remissvar – IS1 tar emot remissvaret från IS2. IS1 presenterar det inkomna remissvaret för HSP1 i rollen som Remissvarsmottagare.

##### Arbetsflöde

![img_013.jpeg](images/img_013.jpeg)
*Figur 7 Arbetsflöde Hantera remissvar, enligt BPMN 2.0*

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal 1 (HSP1) | Den hälso- och sjukvårdspersonal som läser remissvar. |
| Informationssystem 1 (IS1) | Det informationssystem som HSP1 använder för att ta emot och visa remissvar. |
| Hälso- och sjukvårdspersonal 2 (HSP2) | Den hälso- och sjukvårdspersonal som skriver och skickar remissvar. |
| Informationssystem 2 (IS2) | Det informationssystem som HSP2 använder för att skapa och skicka remissvar. |

##### Sekvensdiagram
Tjänstekontrakt som är involverade i processen ”hantera remissvar” är ProcessRequestOutcome.

![img_010.jpeg](images/img_010.jpeg)
*Figur 8 Sekvensdiagram Hantera remissvar, enligt UML*

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 3.1.1 
Skicka och ta emot remiss | Flöde 3.1.2
Hantera mottagen remiss | Flöde 3.1.3
Hantera remiss-komplettering | Flöde 3.1.4
Hantera remissvar |
| :--- | :--- | :--- | :--- | :--- |
| ProcessRequest | X |  | X |  |
| ProcessRequest-Confirmation |  | X |  |  |
| ProcessRequest-Outcome |  |  |  | X |

### Adressering
Remisser adresseras med hjälp av att Remissmottagares organisatoriska identitet används som logisk adress. Remissvarsmottagarens organisatoriska identitet finns också med i remissen i sig (se fältbeskrivning för remiss). Dessa tjänster är verksamhetsadresserade.

### Aggregering och engagemangsindex
Aggregering och Engagemangsindex används inte inom denna tjänstedomän.

### Versionshantering parallella huvudversioner
Konsumenter och producenter som stödjer en ny huvudversion av domänen behöver fortsatt stödja den tidigare huvudversionen, så länge det finns konsumenter och producenter som ännu inte stödjer den nya huvudversionen. Exempelvis så behöver man fortsatt stödja v.1 av tjänsten när man ansluter till v.2. Eftersom huvudversionerna inte är kompatibla behöver konsument av ProcessRequest veta enligt vilken version remissen ska skapas redan när mottagare väljs. För att veta vilken huvudversion som mottagaren har kan informationssystemet anropa TAK (Tjänsteadresseringskatalog). För ytterligare beskrivning, se allmän beskrivning i RIV TA för övergång till ny huvudversion [R3] och specifika regler för tjänsten i ”Teknisk realisering” [R4].

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Se Informationsspecifikation för denna domän [R5].

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | 2 sekunder |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | Anpassat efter respektive verksamhets remissflöde |  |
| Aktualitet | N/A |  |

#### Övriga krav

### Felhantering
I ett response (svaret på ett anrop) anges om anropet lyckades eller inte. Ett lyckat anrop anges med koden OK eller INFO i fältet result.resultCode.
För ett anrop som misslyckas på grund av ett logiskt fel sätts result.resultCode till ERROR. Om anropet misslyckas på grund av ett tekniskt fel returneras istället ett meddelande av typen SOAP Fault.
Mer information finns nedan och i regel #11 RIV Tekniska Anvisningar Tjänsteschema [R6].

#### Krav på en tjänsteproducent
Ett anslutet system skall vara förberett på att något system kan interagera med fel aktör vid fel tidpunkt.
Ett anslutet system skall vara förberett på att en interaktion sker vid fel tillfälle och försöka hantera det som mottagits om möjligt (exempelvis bekräftelsemeddelanden som kommer in vid fel tidpunkt i processen).

##### Logiska fel
För logiska fel returneras koden ERROR i result.resultCode tillsammans med en förklarande text i fältet result.message. I fältet result.errorCode anges vilken typ av logiskt fel som inträffat. Det finns två olika typer av logiska fel som används i tjänstekontrakten - VALIDATION_ERROR och APPLICATION_ERROR. För vissa specifika logiska fel (av typen APPLICATION ERROR) finns felkoder framtagna för att beskriva felet på ett standardiserat sätt - då sätts fältet result.subcode med aktuell kod och result.message kan sättas till kodens klartext eller beskrivning (se tabell nedan).
VALIDATION_ERROR
Meddelandet som skickats är ej korrekt utifrån de regler som gäller för tjänstekontraktet. En förklarande result.message kan närmare peka på vilken regel som ej efterföljts. Detta fel kan generas när ett meddelande tekniskt inte validerar mot det underliggande XML-schemat eller då det inkommande meddelandet bryter mot en schematronregel.
APPLICATION_ERROR 
Denna typ av fel används då meddelandet som skickats är tekniskt korrekt i alla aspekter men den önskade tjänsten inte kan utföras på grund av att processen befinner sig i ett läge då den önskade tjänsten inte kan genomföras eller om den på grund av lokala verksamhetsregler inte kan genomföras. Mer information om felet skall skickas i fältet result.message eller i fältet result.subcode beroende på typ av fel. Exempelvis kan inte en remiss spontant kompletteras efter att den är bedömd av remissmottagande enhet, eller efter att den har vidareskickats till en annan mottagare. Denna typ av fel kan också returneras på grund av lokala verksamhetsregler eller begränsningar som inte specificerats nationellt men som hindrar den önskade tjänsten från att utföras. Från den bifogade felmeddelandetexten bör en användare kunna förstå varför felet uppkom samt vad som är lämplig åtgärd att vidta härnäst.
Tabell felkoder
Tabellen nedan innehåller nationellt överenskomna felkoder för Elektronisk remiss. Felkoder ska skickas vid vissa logiska fel av typen APPLICATION_ERROR för att ytterligare beskriva felet på ett standardiserat sätt. Se kolumnen Beskrivning för när felkoden ska skickas. Felkoden skickas i fältet result.subcode. Kodens klartext eller beskrivning kan skickas i result.message.
Listan innehåller felkoder för alla tre kontrakten. Felkoder som börjar på PR skickas enbart i tjänstekontraktet ProcessRequest, de som börjar på PRC skickas enbart i tjänstekontraktet ProcessRequestConfirmation och de som börjar på PRO skickas enbart i tjänstekontraktet ProcessRequestOutcome.

| Felkod | Klartext | Beskrivning |
| :--- | :--- | :--- |
| PR001 | Remitterande organisations HSA-id okänt för mottagaren | Remissmottagande system kan inte slå upp HSA-id för remitterande organisation. Remissen kan inte tas emot. |
| PR002 | Remissmottagaren kan inte ta emot vidareskickade remisser | Remissen kan inte tas emot av remissmottagarens system eftersom remissen är av typen vidareskickad. |
| PR003 | Remissmottagare kan inte ta emot remissen med bifogad bilaga | Remiss med bilaga kan inte tas emot av mottagande system. Orsak kan vara att bilagans filformat inte stödjs. Remissen behöver skickas om utan bilaga, och bilagan behöver skickas om manuellt på annat sätt. |
| PR004 | Remissmottagaren hanterar inte angivet reservnummerformat. | Remiss kan inte tas emot av mottagande system eftersom formatet för patientens reservnummer inte kan hanteras av mottagaren. Remiss behöver skickas om manuellt på annat sätt. |
| PRC001 | Remissmottagande organisations HSA-id okänt | Remittentens system kan inte slå upp HSA-id för remissmottagande organisation som skickat meddelande. Meddelandet kan inte tas emot. |
| PRC002 | Remissen är okänd hos remittent, meddelandet kan inte tas emot | Meddelandet kan inte tas emot hos remittent eftersom meddelandet gäller en okänd remiss. Orsak kan t ex vara att meddelande skickats till fel mottagare. |
| PRC003 | Remissen är avbruten, makulerad eller avvisad hos remittent, meddelandet kan inte tas emot | Meddelandet kan inte tas emot hos remittent eftersom det gäller en avbruten, makulerad eller avvisad remiss. |
| PRC004 | Ursprunglig remittent kan inte ta emot besked om vidareskickad remiss. | Meddelandet kan inte tas emot av den ursprungliga remittentens system eftersom det gäller en vidareskickad remiss. |
| PRO001 | Remissbesvarande organisations HSA-id okänt för mottagaren | Remittentens system kan inte slå upp HSA-id för remissbesvarande organisation. Remissvaret kan inte tas emot. |
| PRO002 | Remissen är okänd hos remittent, remissvaret kan inte tas emot | Remissvaret kan inte tas emot hos remittent eftersom svaret gäller en okänd remiss. Orsak kan t ex vara att remissvaret skickats till fel mottagare. |
| PRO003 | Remissen är avbruten eller makulerad hos remittent, remissvaret kan inte tas emot. | Remissvaret kan inte tas emot hos remittent eftersom meddelandet gäller en avbruten eller makulerad remiss. |
| PRO004 | Remissvarsmottagare kan inte ta emot remissvaret med bifogad bilaga. | Remissvaret med bilaga kan inte tas emot av mottagande system. Orsak kan vara att bilagans filformat inte stödjs. Remissvaret behöver skickas om utan bilaga, och bilagan behöver skickas om manuellt på annat sätt. |

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP Fault).
Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel.
Tekniska fel får inte förmedla personuppgifter, istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning.

#### Krav på en tjänstekonsument
Alla deltagande system skall strikt uppfylla de krav som ställs på dem i respektive aktörsroll.
Alla deltagande system i remissprocessen skall vara förlåtande mot brister i övriga system.

##### Logiska fel
VALIDATION_ERROR - Konsumenten ska inte sända om meddelandet eftersom det kommer att ge samma fel. Felsökning bör göras för att veta vilken åtgärd som behövs för att rätta till felet.
APPLICATION_ERROR - Konsumenten ska försöka med ett begränsat antal automatiska omsändningar. En omsändning av information kan komma att ge samma fel eller lyckas. Om omsändning inte lyckas skall en felsignal ges användare och systemansvarig för att säkerställa att problem med remissmeddelandet uppmärksammas och felsökning genomförs.

##### Tekniska fel
Konsumenten bör försöka med ett begränsat antal automatiska omsändningar vid tekniska fel eftersom detta kan antas bero på temporära fel. Om omsändning inte lyckas skall en felsignal ges användare och systemansvarig för att säkerställa att problem med remissflödet uppmärksammas och felsökning genomförs.

## Tjänstedomänens meddelandemodeller
Här beskrivs de modeller som beskriver informationsinnehållet i tjänstekontrakten inom tjänstedomänen. Varje tjänstekontrakt har en egen meddelandemodell som uttömmande beskriver informationen som tjänstekontraktet bär. För varje meddelandemodell beskrivs hur mappning ser ut mot tjänstekontraktets schema (XSD).

### V-MIM

#### ProcessRequest

![img_006.jpeg](images/img_006.jpeg)
*Figur 9 V-MIM ProcessRequest, klassdiagram enligt UML*
Mappning mot tjänstekontraktets schema

| VMIM | XSD | XSD Typ |
| :--- | :--- | :--- |
| Remiss | request | RequestType |
| remiss-id | requestId | requestIdType |
| remisstyp | typeOfRequest | codeForRequestType |
| versionstidpunkt | versionTimeStamp | TimeStampType |
| versionsnummer | versionNumber | VersionNumberType |
| versionsorsak | reasonForVersion | ReasonForVersionType |
| vårdansvar kvarstår | careResponsibilityRemains | Boolean |
| vårdprocess-id | careProcessId | String |
| Patient | patient | PatientType |
| person-id | personId | personIdType |
| tillfällig adress | address | AddressType |
| telefonnummer | telecom | TelecomType |
| mobiltelefonnummer | telecom | TelecomType |
| namn | name | String |
| födelsetidpunkt | dateOfBirth | dateType |
| kön | gender | codeForGenderType |
| Organisatorisk enhet | requestOrganisation | FullOrganisationType |
| enhet-id | careUnitId | HSAIdType |
| enhet-namn | careUnitName | String |
| enhet-telefon | careUnitTelephone | String |
| enhet-epost | careUnitEmail | String |
| enhet-adress | careUnitAddress | String |
| enhet-plats | careUnitLocation | String |
| Remittent | requestAuthor | RequestAuthorType |
| remissdatum | date | DateType |
| typ av hälso- och sjukvårdspersonal | typeOfHealthcareProfessional | CVType |
| Hälso och sjukvårdspersonal | healthcareProfessional | HealthcareProfessionalType |
| personal-id | id | HSAIdType |
| personalnamn | name | String |
| Mottagare | recipient | RecipientType |
| Vidareskickare | intermediaryParticipant | IntermediaryType |
| versionstidpunkt | time | TimpStampType |
| Tilläggsinformation | additionalInformation | AdditionalInformationType |
| önskemål om remissmottagare | desiredRequestRecipient | String |
| kompletterande administrativ information | administrativeInformation | String |
| kommentar tolkbehov | interpreterRequirement | String |
| Uppmärksamhetsinformation | awarenessInformation | AwarenessInformationType |
| uppmärksamhetstext | Text | String |
| Frågeställning | questionFormulation | QuestionFormulationType |
| frågeställning-text | text | String |
| Anamnes | clinicalInformation | ClinicalInformationType |
| beskrivning | text | String |
| Kliniskt tillstånd | condition | ConditionType |
| kliniskt tillstånd beskrivning | text | String |
| kliniskt tillståndskod | code | CVType |
| Åtgärd | desiredActivity | ActivityType |
| åtgärd-id | id | ActivityIdType |
| åtgärd beskrivning | text | String |
| åtgärdtyp | code | ActivityCodeType |
| Betalningsförbindelse | paymentCommitment | PaymentCommitmentType |
| betalningsförbindelse-id | paymentCommitmentId | PaymentCommitmentIdType |
| förbindelsetyp avtal | commitmentType | CVType |
| förbindelsetyp kapitel | commitmentTypeChapter | CVType |
| giltighetstid | validity | TimeIntervalType |
| klinisk ansvarsbeskrivning | clinicalResponsibilityDescription | ResponsibilityDescriptionType |
| administrativ ansvarsbeskrivning | administrativeResponsibilityDescription | ResponsibilityDescriptionType |
| gäller endast öppenvård | validOnlyForOutpatientCare | boolean |
| betalningsansvarig region | liableCountyCouncil | CVType |
| datum för godkännande | dateOfApproval | TimeStampType |
| utfärdad i samråd med | issuedInConsultationWith | String |
| kostnadsställe | costcenter | String |
| Ersättningsinformation | reimbursementInformation | ReimbursementInformationType |
| ersättningstyp | reimbursementType | codeForReimbursementType |
| ägare av åberopat kontrakt | ownerOfInvokedContract | codeForCountyCouncil |
| Bilaga | attachment | MultimediaType |
| bilaga id | id | String |
| multimediaTyp | mediaType | CVType |
| binärdata | value | Base64Binary |
| referens | reference | AnyURI |
| beskrivning | description | String |

| Klass.attribut | Mappning mot Nationell Informationsstruktur 2023:2 |
| :--- | :--- |
| Åtgärd.åtgärdstyp | Aktivitet.kod |
| Åtgärd.Åtgärd beskrivning | Aktivitet.beskrivning |
| Remiss.versionstidpunkt | Vårdbegäran.tidpunkt samt Remiss.tidpunkt |
| Patient.personId | Patient.id |
| Patient.namn | Person.förnamn, Person.mellannamn, Person.Efternamn |
| Patient.födelsetidpunkt | Person.födelsedatum |
| Patient.kön | Person.kön |
| Patient.telefonnummer | Person.elektroniskAdress |
| Patient.mobilnummer | Person.elektroniskAdress |
| Patient.tillfällig adress | Person.adress |
| Organisatorisk enhet.enhetId | Organisation.id |
| Organisatorisk enhet.enhetNamn | Organisation.namn |
| Organisatorisk enhet.enhetTelefon | Organisation.elektroniskAdress |
| Organisatorisk enhet.enhetEpost | Organisation.elektroniskAdress |
| Organisatorisk enhet.enhetAdress | Organisation.adress |
| Hälso- och sjukvårdspersonal.personalId | Hälso- och sjukvårdspersonal.id |

#### ProcessRequestConfirmation

![img_014.jpeg](images/img_014.jpeg)
*Figur 10 V-MIM ProcessRequestConfirmation, klassdiagram enligt UML*
Mappning mot tjänstekontraktets schema

| VMIM | XSD | XSD Typ |
| :--- | :--- | :--- |
| Remissbekräftelse | requestConfirmation | RequestConfirmationType |
| remiss-id | requestId | RequestIdType |
| remissbekräftelse-id | requestConfirmationId | RequestIdType |
| typ av remissbekräftelse | typeOfRequestConfirmation | codes:codeRequestConfirmationType |
| remissversionsnummer | requestVersionNumber | VersionNumberType |
| remissbekräftelsettidpunkt | requestConfirmationtime | TimeStampType |
| Patient | patient | SimplePatientType |
| person-id | personId | PersonIdType |
| namn | name | String |
| Organisatorisk enhet | confirmingOrganisation | FullOrganisationType |
| enhet-id | careUnitId | HSAIdType |
| enhet-namn | careUnitName | String |
| enhet-telefon | careUnitTelephone | String |
| enhet-epost | careUnitEmail | String |
| enhet-adress | careUnitAddress | String |
| enhet-plats | careUnitLocation | String |
| Remissbesvarare | author | AuthorType |
| typ av hälso- och sjukvårdspersonal | typeOfHealthcareProfessional | CVType |
| Mottagare | recipient | RecipientType |
| Hälso- och sjukvårdspersonal | healthcareProfessional | HealthCareProfessionalType |
| personal-id | id | HsaIdType |
| personalnamn | name | String |
| Bekräftelsemeddelande | outcome | RequestReceivedConfirmationOutcomeType |
| svarstext | outcometext | String |

| Klass.attribut | Mappning mot Nationell Informationsstruktur 2023:2 |
| :--- | :--- |
| Patient.personId | Patient.id |
| Patient.namn | Person.förnamn, Person.mellannamn, Person.Efternamn |
| Organisatorisk enhet.enhetId | Organisation.id |
| Organisatorisk enhet.enhetNamn | Organisation.namn |
| Organisatorisk enhet.enhetTelefon | Organisation.elektroniskAdress |
| Organisatorisk enhet.enhetEpost | Organisation.elektroniskAdress |
| Organisatorisk enhet.enhetAdress | Organisation.adress |
| Hälso- och sjukvårdspersonal.personalId | Hälso- och sjukvårdspersonal.id |

#### ProcessRequestOutcome

![img_011.jpeg](images/img_011.jpeg)
*Figur 11 V-MIM ProcessRequestOutcome, klassdiagram enligt UML*
Mappning mot tjänstekontraktets schema

| VMIM | XSD | XSD Typ |
| :--- | :--- | :--- |
| Svar | requestOutcome | RequestOutcomeType |
| remiss-id | requestId | RequestIdType |
| svars-id | requestOutcomeId | RequestIdType |
| svarstyp | typeOfRequestOutcome | codes:codeRequestOutcomeType |
| remissversionsnummer | requestVersionNumber | VersionNumberType |
| svarstidpunkt | requestOutcomeTime | TimeStampType |
| Patient | patient | SimplePatientType |
| person-id | personId | personIdType |
| namn | name | String |
| Organisatorisk enhet | respondingOrganisation | FullOrganisationType |
| enhet-id | careUnitId | HSAIdType |
| enhet-namn | careUnitName | String |
| enhet-telefon | careUnitTelephone | String |
| enhet-epost | careUnitEmail | String |
| enhet-adress | careUnitAddress | String |
| enhet-plats | careUnitLocation | String |
| Remissbesvarare | author | AuthorType |
| typ av hälso- och sjukvårdspersonal | typeOfHealthcareProfessional | CVType |
| Hälso- och sjukvårdspersonal | HealthCareProfessional | HealthCareProfessionalType |
| personal-id | id | HSAIdType |
| personalnamn | name | String |
| Mottagare | recipient | RecipientType |
| Kliniskt innehåll | outcome | OutcomeType |
| klinisk svarstext | outcomeText | String |
| Kliniskt tillstånd | condition | ConditionType |
| kliniskt tillståndsbeskrivning | text | String |
| kliniskt tillståndskod | code | CVType |
| Åtgärd | accomplishedActivity | ActivityType |
| åtgärd-id | id | ActivityIdType |
| åtgärd beskrivning | text | String |
| åtgärdtyp | code | ActivityCodeType |
| Bilaga | attachment | MultimediaType |
| bilaga id | id | String |
| multimediaTyp | mediaType | CVType |
| binärdata | value | Base64Binary |
| referens | reference | AnyURI |
| beskrivning | description | String |

| Klass.attribut | Mappning mot Nationell Informationsstruktur 2023:2 |
| :--- | :--- |
| Åtgärd.åtgärdstyp | Aktivitet.kod |
| Åtgärd.Åtgärd beskrivning | Aktivitet.beskrivning |
| Patient.personId | Patient.id |
| Patient.namn | Person.förnamn, Person.mellannamn, Person.Efternamn |
| Organisatorisk enhet.enhetId | Organisation.id |
| Organisatorisk enhet.enhetNamn | Organisation.namn |
| Organisatorisk enhet.enhetTelefon | Organisation.elektroniskAdress |
| Organisatorisk enhet.enhetEpost | Organisation.elektroniskAdress |
| Organisatorisk enhet.enhetAdress | Organisation.adress |
| Hälso- och sjukvårdspersonal.personalId | Hälso- och sjukvårdspersonal.id |

### Formatregler – gemensamma informationskomponenter
Gemensamma informationskomponenter är typer gemensamma för användning i tjänstekontrakt i flera domäner. Nedan listas de gemensamma typer som används i denna domäns tjänstekontrakt.
Användning av datatyperna sker i enlighet med hur de är definierade, dvs. regler som anges för respektive datatyp och kardinalitet för de olika attributen ska följas. I de fall det finns restriktioner på en eller flera datatyper anges det i fältregeltabellerna.

#### CVType
En CVType är en referens till ett begrepp som definieras i ett externt kodverk (kodsystem, terminologi eller ontologi). Se vanligt förekommande kodverk. En CVType kan innehålla en enkel kod, det vill säga en hänvisning till ett begrepp som definieras direkt av det refererade kodverket, eller den kan innehålla ett uttryck i någon syntax definierad av det refererade kodverket som kan utvärderas, exempelvis begreppet "vänster fot" som är ett postkoordinerat uttryck byggt från den primära koden "FOT" och bestämningen "VÄNSTER".

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string | Kod eller uttryck definierad enligt kodverket. | 1..1 |
| codeSystem | string | Kodverket som definierar koden. | 1..1 |
| codeSystemName | string | Kodverkets namn i klartext. | 0..1 |
| codeSystemVersion | string | Versionsangivelse som har definierats specifikt för det givna kodverket. | 0..1 |
| displayName | string | Den läsbara representationen (klartext) av koden eller uttrycket som definierat av kodverket. | 1..1 |
| originalText | string | Texten så som sedd och/eller vald av användaren som har matat in den, och som representerar användarens avsedda betydelse. | 0..1 |
Regler
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
För displayName ska klartexten vara den läsbara representationen av koden eller uttrycket som definierat av kodverket vid tiden av datainmatningen. Om kodverket inte definierar en klartext för koden eller uttrycket, ska samma värde som i code anges.
Huvudsyfte med klartexten är att stödja implementationsfelsökning, men kan även användas till andra tillämpningsspecifika ändamål som till exempel visning för användaren i gränssnittet. En CVType som har ett kodattribut ska ha en klartext som specificerar koden.
originalText
Det finns två godkända tillämpningar av elementet originalText:
OriginalText kan användas för att beskriva det en användare angav och som representeras av koden. I en situation där användaren dikterar eller skriver text är originalText den text som matats in eller yttrats av användaren.
OriginalText kan användas i de fall producenten avser ange ett värde som saknar kod. I dessa fall motsvarar originalText benämningen för värdet som saknar kod. Behov att tillföra nya koder till kodverket förmedlas till den som ansvarar för kodverkets innehåll.
OriginalText ska vara den exakta text så som den presenteras i originalkällan utan att på något sätt bearbetas eller omvandlas. Således ska originalText representeras i vanlig textform.

#### DateType
Datum anges som en sträng med formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”. Tidszon anges inte. Datum ska anges i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### HSAIdType
HSA-id anges som en sträng enligt definition från Inera AB.

#### MultimediaType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | string | Identitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion. Obligatoriskt för inbäddade bilagor | 0..1 |
| mediaType | CVType | Typ av multimedia. | 1..1 |
| value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. Obligatoriskt när referens inte används. | 0..1 |
| reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. Används inte i denna version av tjänstedomänen. | 0..0 |
| description | string | Beskrivning av bilaga, t ex av innehåll i bilaga. | 0..1 |

#### TimeStampType
Tidpunkt anges som en sträng med formatet ”ÅÅÅÅMMDDttmmss”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”. Tidszon anges inte. Tidpunkt ska anges i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Verksamhetsregler

#### Regel 1 Remisskomplettering versionsnumrering
Ett ProcessRequestConfirmation med typeOfRequestConfirmation satt till KOM (Komplettering begärd) från system 2 till system 1 skall följas upp med ett ProcessRequest med samma requestId men med ett nytt versionNumber samt med reasonForVersion satt till AR (Ändrad remiss) från system 1 till system 2.

#### Regel 2 Remisskomplettering utan kompletteringsbegäran
En remisskomplettering som inte är begärd av remissmottagare får bara skickas så länge remissen inte är bedömd av remissmottagaren.

#### Regel 3 Ändrat betalningsansvar
Vid ett ProcessRequest med reasonForVersion satt till AB (Ändrat betalningsansvar) räknas versionNumber (versionsnummer på remissen) upp med ett. Ett ändrat betalningsansvar kan skickas även när remissen är bekräftad av mottagaren.

#### Regel 4 Funktionen vidareskickning frivillig
Funktionen att kunna vidareskicka en remiss är frivillig. Systemet bör kunna ta emot en vidareskickad remiss (reasonForVersion satt till VR), eller besked om att en remiss har blivit vidareskickad (typeOfRequestConfirmation satt till VID). Om systemet inte kan ta emot en vidareskickad remiss eller besked om vidareskickning ska ett felmeddelande skickas tillbaka till sändaren. Se tabell felkoder i kapitel 4.3.1.1 Logiska fel.

#### Regel 5 Besked om vidareskickning
Ett ProcessRequest med reasonForVersion satt till VR (Vidareskickad remiss) från ursprunglig remissmottagare till ny remissmottagare skall följas upp med ett ProcessRequestConfirmation med typeOfRequestConfirmation satt till VID (Besked om vidareskickning) från ursprunglig remissmottagare till remittent.

#### Regel 6 Vidareskickning och samtycke
Vid vidareskickning av remiss till en annan vårdgivare behövs patientens samtycke.

#### Regel 7 Ändrad remiss/remissvar med inbäddad bilaga
När text i en remiss eller ett remissvar som innehåller inbäddad bilaga ändras och skickas igen gäller följande:
Vid ändrad remiss: Bilaga skickas med igen om den fortfarande är aktuell.
Vid nytt svar (delsvar, preliminärsvar, slutsvar): Bilaga skickas med igen om den fortfarande är aktuell. Nytt delsvar, preliminärsvar och slutsvar ersätter tidigare svar.

#### Regel 8 Bilageformat kan inte hanteras
Om remiss eller remissvar med bilaga inte kan tas emot på grund av bilagans filformat, skickas ett felmeddelande tillbaka till sändare att remiss eller remissvar behöver skickas om och bilagorna hanteras manuellt.

#### Regel 9 Avbruten eller avvisad remiss
Det ska inte gå att skicka ett svar för en avbruten eller avvisad remiss. Det ska heller inte gå att skicka en ändrad/kompletterad remiss för en remiss som avvisats eller avbrutits.

#### Regel 10 Slutbesvarad remiss
Det ska inte gå att skicka ett delsvar eller preliminärt svar på en remiss som slutbesvarats, däremot ska det gå att skicka ytterligare slutsvar.

#### Regel 11 Hantering format för personidentifierare
Om en mottagare inte kan hantera det reservnummerformat som patient har som personidentifierare i en remiss, skickas ett felmeddelande tillbaka till sändaren att remiss inte kan tas emot. Mottagare ska däremot kunna hantera personnummer och samordningsnummer.

## Tjänstekontrakt

### ProcessRequest
ProcessRequest används för att skicka remiss från remittent till remissmottagare. I denna version av tjänsten avser remiss en så kallad allmänremiss.
Tjänstekontraktets huvuddomän är "clinicalprocess", som hanterar alla underdomäner som handlar om tjänstekontrakt för att hjälpa till med hantering av den kliniska kärnprocessen.
Underdomänen är "activity:request", som grupperar alla tjänstekontrakt som handlar om att presentera och administrera information om remiss och tillhörande flöden.
Namnrymden för tjänstekontraktet är: urn:riv:clinicalprocess:activity:request

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges med en * i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardi-nalitet | Kodverk/värde-mängd /ev begränsningar |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| Request | RequestType | Remiss |  |  |
| request.requestId | RequestIdType | Remiss id
Remissens identitet. Format: Källsystem-Id(HSA-ID)#lokalt-id / Exempel: SE2321000012-0001#987 | 1..1 | (.*)#(.*) / Maxlängd 256 tecken |
| request.typeOfRequest | CodeForRequestType | Remisstyp
Anger typ av remiss.
I denna version är den giltiga koden ”4” – allmänremiss | 1..1 | codes:codeRequestOutcomeType |
| request.versionTimeStamp | TimeStampType | Versionstidpunkt / Tidpunkt då versionen skapades. / Denna tidpunkt kan skilja sig från tidpunkten då remissen skickas. | 1..1 | ÅÅÅÅMMDDttmmss |
| request.versionNumber | VersionNumberType | Versionsnummer
Remissens versionsnummer. / Version startar alltid på 1 och räknas sekventiellt upp för varje ny version. / Denna räknas upp vid: / Ändrad remiss / Vidareskickad remiss / Ändrat betalnings-ansvar | 1..1 | (0*[1-9]+\|[1-9])\d* |
| request.reasonForVersion | ReasonForVersionType | Versionsorsak | 1..1 |  |
| request.reasonForVersion.typeOfReason | CodeVersionReason |  | 1..1 |  |
| request.reasonForVersion.typeOfReason.code | CodeVersionReason_values | Anger varför en ny version skapats. / Värden enligt Kv e-remiss versionsorsak, se [R5]. Giltiga värden är: / NR = Ny remiss / AR = Ändrad remiss / VR = Vidareskickad remiss / AB = Ändrat betalningsansvar | 1..1 |  |
| request.careResponsibilityRemains | Boolean | Vårdansvar kvarstår
Anger om remittent vill att vårdansvar ska kvarstå hos remitterande enhet eller om man vill att vårdansvar överförs till remissmottagande enhet. / Två alternativ: / True = Vårdansvar kvarstår / False = Begäran om övertagande av vårdansvar | 1..1 |  |
| request.patient | PatientType | Patient | 1..1 |  |
| request.patient.personId | PersonIdType | Person id
Patientens identitet | 1..1 |  |
| request.patient.personId.extension | String | Personidentifierare för patienten. / Om identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken. | 1..1 |  |
| request.patient.personId.root | String | OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas. / För andra typer av personidentifierare sätts root till aktuell OID. | 1..1 |  |
| request.patient.address | AddressType | Tillfällig adress
Observera att adress används endast om tillfällig adress behöver anges, ej folkbokförd adress.

Adressen är avsedd att användas vid kallelse. Formatet är baserat på Skatteverkets distributionslösning Navet. | 0..1 |  |
| request.patient.address.careOf | String | ”Care of” | 0..1 | Maxlängd 35 tecken |
| request.patient.address.streetName1 | String | Utdelningsadress1 | 1..1 | Maxlängd 35 tecken |
| request.patient.address.streetName2 | String | Utdelningsadress2 | 0..1 | Maxlängd 35 tecken |
| request.patient.address.postalCode | String | Postnummer i formatet ”12345”, dvs fem siffror inga blanksteg. | 1..1 | Maxlängd 5 tecken |
| request.patient.address.postalCity | String | Postort | 1..1 | Maxlängd 27 tecken |
| request.patient.address.postBox | String | Postbox | 0..1 | Maxlängd 9 tecken |
| request.patient.telecom | TelecomType | Telefon | 0..2 |  |
| request.patient.telecom.typeOfTelecom | CodeForTelecomType | Telefon typ
För att särskilja olika typer av telekomadresser används 2 olika koder ’MC’=Mobil, ’H’=Hemtelefon | 1..1 | codes:codeForTelecomType |
| request.patient.telecom.number | String | Telefonnummer | 1..1 | Maxlängd 200 tecken |
| request.patient.name | String | Namn
Personnamn sammanslaget enligt formatet " Mellannamn Efternamn, Förnamn". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag. / Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet. | 0..1 | Maxlängd 216 tecken |
| request.patient.gender | CodeForGenderType | Kön / Anger administrativt kön, dvs. det kön patienten har registrerat hos Skatteverket. / OID för kodsystem: 1.2.752.129.2.2.1.1 / Giltiga värden är: / 0 = okänt / 1 = man / 2 = kvinna / 9 = ej tillämpligt | 0..1 | codes:codeForGenderType |
| request.patient.dateOfBirth | DateType | Födelsetidpunkt / Anges då patientens identitetstyp är av annan typ än personnummer. | 0..1 | ÅÅÅÅMMDD |
| request.requestOrganisation | FullOrganisationType | Organisatorisk enhet / Information om ursprunglig remitterande organisatorisk enhet. Kan skilja sig från PDL ansvarig enhet vid behov. Det är denna enhet som svaret adresseras till i logisk adress. | 1..1 |  |
| request.requestOrganisation.careUnitId | HsaIdType | Enhet id / HSA-id för remitterande enhet. Detta används av remissbesvarare som logisk adress för att adressera svarsmottagare. | 1..1 | Maxlängd 64 tecken |
| request.requestOrganisation.careUnitName | String | Enhet namn / Namn på enhet. | 0..1 | Maxlängd 64 tecken |
| request.requestOrganisation.careUnitTelephone | String | Enhet telefon / Telefon till enhet. | 0..1 |  |
| request.requestOrganisation.careUnitEmail | String | Enhet epost / E-post till enhet. | 0..1 |  |
| request.requestOrganisation.careUnitAddress | String | Adress till enhet. | 0..1 |  |
| request.requestOrganisation.careUnitLocation | String | Enhet plats / Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering. | 0..1 |  |
| request.author | RequestAuthorType | Remittent / Information avseende den remitterande personen samt den organisation som personen är uppdragstagare på. | 1..1 |  |
| request.author.date | DateType | Remissdatum / Remissdatum när remiss skapades måste anges. Format som ska användas är ÅÅÅÅMMDD | 1..1 | ÅÅÅÅMMDD |
| request.author.healthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdspersonal | 1..1 |  |
| request.author.healthcareProfessional.id | HsaIdType | Personal Id / HSA-id för remitterande hälso- och sjukvårdspersonal. | 0..1 | Maxlängd 64 tecken |
| request.author.healthcareProfessional.name | String | Personal namn / Namn på remitterande hälso- och sjukvårdspersonal. / Valfri formatering. | 1..1 | Maxlängd 64 tecken |
| request.author.typeOfHealthcareProfessional | CVType | Typ av hälso- och sjukvårdspersonal / Kod för yrkestitel från Snomed CT enligt urvalen nedan: / code: se urval_legitimerade_yrken / codeSystem: OID 1.2.752.129.5.1.70
eller / code: se yrken_i_halso-_och_sjukvarden_ej_legitimerade / codeSystem: 1.2.752.129.7.1.5 / Urvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| request.author.healthcareProfessionalOrganisation | OrganisationType | Organisatorisk enhet
remittent | 1..1 |  |
| request.author.healthcareProfessionalOrganisation.careUnitId | HsaIdType | Enhet id / HSA-id för vårdenhet (jmf. PDL) som ansvarar för remissen. | 1..1 | Maxlängd 64 tecken |
| request.recipient | RecipientType | Mottagare
Information avseende den remissmottagande organisationen | 1..1 |  |
| request.recipient.organisation | OrganisationType | Organisatorisk enhet
mottagare | 1..1 |  |
| request.recipient.organisation.careUnitId | HsaIdType | Enhet id / HSA-id för remissmottagande enhet, till vilken remissen adresseras. / Med remissmottagande enhet avses det som i SOSFS 2004:11 benämns som mottagande enhet. | 1..1 | Maxlängd 64 tecken |
| request.intermediaryParticipant | IntermediaryType | Vidareskickare / Beskriver Hälso-och sjukvårdspersonalen som vidareskickar remissen | 0..* |  |
| request.intermediaryParticipant. healthcareProfessionalOrganisation | OrganisationType | Organisatorisk enhet
vidareskickare | 1..1 |  |
| request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId | HsaIdType | Enhet id / HSA-id på den remissmottagande enhet som vidareskickat remissen. | 1..1 | Maxlängd 64 tecken |
| request.intermediaryParticipant.time | TimeStampType | Tidpunkt 
Tidpunkt då versionen skapades för vidareskickning. / Denna tidpunkt kan skilja sig från tidpunkten då remissen faktiskt skickas beroende på hur detta implementeras i en lokal remissmodul. | 1..1 | ÅÅÅÅMMDDttmmss |
| request.additionalInformation | AdditionalInformationType | Tilläggsinformation | 0..1 |  |
| request.additionalInformation.desiredRequestRecipient | String | Önskemål om remissmottagare Önskad remissmottagare: enhet, person, yrkesroll, fritext | 0..1 | Maxlängd 200 tecken |
| request.additionalInformation.administrativeInformation | String | Kompletterande administrativ information 
Här anges kompletterande administrativ information. Exempelvis kan denna innehålla information om detta är ett akutärende, om patienten är bortrest under en viss tid inom kallelsetiden eller annan information som kan påverka den administrativa processen kring remissen. Här läggs även information om SVF-patient (standardiserade vårdförlopp), datum för välgrundad misstanke samt aktuellt SVF-förlopp. | 0..1 | Maxlängd 8192 tecken |
| request.additionalInformation.interpreterRequirement | String | Kommentar tolkbehov Här beskrivs eventuellt tolkbehov. | 0..1 | Maxlängd 200 tecken |
| request.awarenessInformation | AwarenessInformationType | Uppmärksamhetsinformation
Uppmärksamhetsinformation om patient | 0..1 |  |
| request.awarenessInformation.text | String | Uppmärksamhetstext Uppmärksamhetsinformation av betydelse för denna remiss. Mottagande system bör inte med automatik föra in denna i den egna hanteringen för uppmärksamhetsinformation kring patienten utan endast lagra den i samband med remissen. | 1..1 | Maxlängd 8192 tecken |
| request.questionFormulation | QuestionFormulationType | Frågeställning | 1..1 |  |
| request.questionFormulation.text | String | Frågeställning text 
Här anges remissens frågeställning. | 1..1 | Maxlängd 8192 tecken |
| request.questionFormulation.clinicalInformation | ClinicalInformationType | Anamnes 
Här anges underbyggande klinisk information (anamnes) för remissfrågeställningen. Dessa underbyggande kliniska data är direkt kopplat till frågeställningen | 0..1 |  |
| request.questionFormulation.clinicalInformation.text | String | Beskrivning 
Här anges klinisk informationsbeskrivning | 1..1 | Maxlängd 8192 tecken |
| request.questionFormulation.condition | ConditionType | Kliniskt tillstånd 
Anger kliniska tillstånd som använts i uppslag mot stödtjänster. / Används som stöd för att remittent och remissmottagare ska kunna avgöra om remissuppgifterna är kompletta. | 0..* |  |
| request.questionFormulation.condition.text | String | Kliniskt tillstånd beskrivning 
Här kan diagnosbeskrivning skrivas in. / Observera att den får endast förekomma om questionFormulation.condition.code inte används. | 0..1 | Maxlängd 8192 tecken |
| request.questionFormulation.condition.code | CVType | Kliniskt tillståndskod Anger kliniska tillståndskoder. / code:  se ICD-10-SE

codeSystem: 1.2.752.116.1.1.1 / Observera att kod får endast förekomma om questionFormulation.condition.text inte används. / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| request.questionFormulation.desiredActivity | ActivityType | Åtgärd
Här anges önskade åtgärder. Dessa åtgärder ska vara direkt kopplade till frågeställningen. | 0..* |  |
| request.questionFormulation. desiredActivity.id | ActivityIdType | Åtgärd id
Unikt id i form av löpnummer för den önskade åtgärden | 0..1 |  |
| request.questionFormulation.desiredActivity.text | String | Åtgärd beskrivning / Observera att text får endast förekomma om questionFormulation.desiredActivity.code inte används. | 0..1 | Maxlängd 8192 tecken |
| request.questionFormulation.desiredActivity.code | ActivityCodeType | Åtgärd typ
Åtgärd enligt kodsystem. / Observera att code får endast förekomma om questionFormulation.desiredActivity.text inte används. | 0..1 |  |
| request.questionFormulation.desiredActivity.code.code | String | Kod enligt det angivna kodsystemet i codeSystem – KVÅ eller Snomed CT | 1..1 |  |
| request.questionFormulation.desiredActivity.code.codeSystem | String | Kodsystem för tolkning av angiven kod. / Obligatoriskt att hantera 1.2.752.116.1.3.2.1.4 = KVÅ / Om remittent använder kodverk som remissmottagande system inte hanterar skall detta resultera i ett fel av typen APPLICATION_ERROR. | 1..1 |  |
| request.paymentCommitment | PaymentCommitmentType | Betalningsförbindelse Betalningsförbindelse beskriver hur remissmottagande vårdgivare ersätts för de begärda tjänsterna av remitterande vårdgivare. / Aktuellt vid ett regionsöverskridande remissflöde. För detaljer i användningen se även SKRs Riksavtal. | 0..1 |  |
| request.paymentCommitment.paymentCommitmentId | PaymentCommitmentIdType | Betalningsförbindelse id Unik identitet på betalningsförbindelsen, requestId#betfor#löpnummer / Exempel: SE2321000012-0001#987#betfor#1 | 0..1 |  |
| request.paymentCommitment.commitmentType | CVType | Betalningsförbindelse-typ avtal / Anger den avtalstyp som finns att välja för betalningsförbindelse / code: se kv_betalningsförbindelse- typ avtal / codeSystem: 1.2.752.129.2.2.2.44 / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |  |
| request.paymentCommitment.commitmentTypeChapter | CVType | Betalningsförbindelse-typ kapitel / Anger kod utifrån riksavtalets kapitel som reglerar betalning. / Obligatoriskt då paymentCommitment.commitmentType = 1 / code: kv_ betalningsförbindelsetyp kapitel / codeSystem: 1.2.752.129.5.1.37 / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| request.paymentCommitment.validity | TimeIntervalType | Giltighetstid
Anges enligt ÅÅÅÅMMDD. Antingen start (low) eller slut (high) måste finnas med | 1..1 |  |
| request.paymentCommitment.clinicalResponsibilityDescription | String | Klinisk ansvarsbeskrivning | 0..1 | Maxlängd 8192 tecken |
| request.paymentCommitment.administrativeResponsibilityDescription | String | Administrativ ansvarsbeskrivning | 0..1 | Maxlängd 8192 tecken |
| request.paymentCommitment.validOnlyForOutpatientCare | Boolean | Gäller endast öppenvård Sätts till ”true” om betalningsförbindelsen enbart gäller öppenvård. Annars sätts den till ”false” | 1..1 |  |
| request.paymentCommitment.liableCountyCouncil | CVType | Betalningsansvarig region 
Region som ansvarar för betalningen. / Kod enligt förteckning utgiven av Statistiska Centralbyrån (SCB). / code: se kv_län / codeSystem: 1.2.752.129.2.2.1.18 / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 | Inera kodverk kv_län |
| request.paymentCommitment.dateOfApproval | TimeStampType | Datum för godkännande
Tidpunkt för godkännande av denna betalningsförbindelse hos remittenten. / Anges enligt ÅÅÅÅMMDDttmmss med minst precision ÅÅÅÅMMDD | 0..1 |  |
| request.paymentCommitment.issuedInConsultationWith | String | Utfärdad i samråd med
Om betalningsförbindelsen utfärdas i samråd med ekonomisk beslutsfattare antecknas namnet här. Valfri formatering. | 0..1 | Maxlängd 64 tecken |
| request.paymentCommitment.costCenter | String | Kostnadsställe
Remittentens kostnadsställe | 0..1 | Maxlängd 64 tecken |
| request.paymentCommitment.reimbursementInformation | ReimbursementInformationType | Ersättningsinformation
Obligatorisk vid remiss till privat vårdgivare | 0..1 |  |
| request.paymentCommitment.reimbursementInformation.reimbursementType | CVType | Ersättningstyp / Anger källa till ersättning. / code: se kv_betalningsförbindelse ersättningstyp / codeSystem: 1.2.752.129.5.1.36 / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |  |
| request.paymentCommitment.reimbursementInformation.ownerOfInvokedContract | CVType | Ägare av åberopat kontrakt
Ägare (region) av åberopat kontrakt. / Kod enligt förteckning utgiven av Statistiska Centralbyrån (SCB). / code: se kv_län / codeSystem: 1.2.752.129.2.2.1.18 / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 | Inera kodverk kv_län |
| request.paymentCommitment.approvedBy | HealthcareProfessionalType | Godkänns av
Den person hos remittenten som har godkänt betalningsförbindelsen | 0..1 |  |
| request.paymentCommitment.approvedBy.id | HsaIdType | Personal id
HSA-id för person | 0..1 | Maxlängd 64 tecken |
| request.paymentCommitment.approvedBy.name | String | Personal namn | 1..1 | Maxlängd 64 tecken |
| request.attachment | MultimediaType | Bilaga / Möjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten | 0..* |  |
| request.attachment.id | String | Bilaga id / Identitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion. / Format bilaga remiss: requestId#löpnummer = Källsystem-Id(HSA-ID)#lokalt-id#löpnummer / Obligatoriskt för inbäddade bilagor | 0..1 | (.*)#(.*)#(.*) / Maxlängd 256 tecken |
| request.attachment.mediaType | CVType | Multimediatyp / Typ av multimedia, se urval med tillåtna format. / code: se urval_mediatyper_elektronisk_remiss / codeSystem: (1.2.752.129.5.1.59, se nedan) / Under codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör. / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |  |
| request.attachment.value | Base64Binary | Binärdata
Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format.
 
Obligatoriskt när referens inte används. | 0..1 | Ett meddelande med bilagor får inte vara större än 10MB |
| request.attachment.reference | AnyURI | Referens
Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas. / OBS! Används inte i denna version. | 0..0 |  |
| request.attachment.description | String | Beskrivning / Beskrivning av bilaga, t ex innehåll | 0..1 | Maxlängd 256 tecken |
| request.careProcessId | String | Vårdprocess id
Identifierare som unikt identifierar den individanpassade vårdprocess som denna remiss är en del av. Används för att kunna hålla samman information över aktörsgränser och koppling till patientens hälsoärende. Producentsystemet bör registrera all information som registreras kring patienten kopplat till detta id. | 0..1 |  |
| Svar |  |  |  |  |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |  |
| result.resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |  |
| result.errorCode | ErrorCodeEnum | Sätts endast om level är ERROR, se kapitel 4.3 för mer information. | 0..1 |  |
| result.subCode | String | Standardiserad felkod för ytterligare information om logiskt fel. Se rubrik “4.3.1.1 Logiska fel – tabell Felkoder” | 0..1 |  |
| result.logId | String | Ett unikt log-id som kan användas vid felanmälan för att användas vid felsökning av producent. | 0..1 |  |
| result.message | String | En beskrivande text som kan visas för användaren. | 0..1 |  |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Se även tabell nedan för schematronregler.

##### Krav för användning
Remittenter som skickar remisser genom att konsumera ProcessRequest förbinder sig att även hantera mottagande av bekräftelse genom att producera ProcessRequestConfirmation samt hantera mottagande av svar genom att producera ProcessRequestOutcome.
Remissmottagare som tar emot remisser genom att producera ProcessRequest förbinder sig att även skicka bekräftelse genom att konsumera ProcessRequestConfirmation samt skicka svar genom att konsumera ProcessRequestOutcome.

##### Regler bilagor
Inera skannar inte bilagor för skadlig kod, detta behöver mottagaren ombesörja själv. Tjänstekonsumenter av ProcessRequest ska följa de generella riktlinjerna för inbäddade binära bilagor, se RIV Tekniska anvisningar Binära bilagor [R7]. 
Se rubriker nedan för undantag från RIV Tekniska anvisningar Binära bilagor som gäller för tjänsten Elektronisk remiss.
Bilagestorlek
Om ett meddelande i ProcessRequest innehåller en inbäddad bilaga får den totala meddelandestorleken inte överstiga 10MB. 
Inbäddade bilagor kodas med base64 i meddelandet. Observera att kodning av filer med Base64 innebär att storleken på strängen som skickas i meddelandet är större än originalfilens storlek. Storleken ökar med ca 1/3 av den ursprungliga filens storlek.
Filformat
De filformat som är tillåtna för inbäddade bilagor är pdf, jpeg, png, html, txt, gif och bmp och finns i urval mediatyper_elektronisk_remiss.

##### Förändringar vid vidareskickning
När interaktionen används för att vidareskicka en remiss till en annan mottagare ska remissen som vidareskickas vara identiskt med originalremissen i grad av struktur och formatering av text med undantag för:
versions-id (request.versionNumber), som sätts till tidigare versionsnummer + 1
versionstidpunkt (request.versionTimeStamp)
versionsorsak (request.reasonForVersion.typeOfReason)
Utöver detta skall den vidareskickande enheten lägga till en instans av vidareskickande enhet (intermediaryParticipant), tidpunkt då versionen skapades för vidareskickning (intermediaryParticipant.time), samt ändra mottagare (recipient) till mottagaren av den vidareskickade remissen.

##### Förändringar vid komplettering
Interaktionen kan användas för att komplettera en tidigare skickad remiss. Detta kan endast utföras av originalremittenten. Alla fält utom nedanstående kan förändras vid en komplettering:
Remiss-id (request.requestId)
Remiss-typ (request.typeOfRequest)
Remiss-datum (request.author.date)
Remitterande enhet (request.requestOrganisation.careUnitId)
Remissmottagande enhet (request.recipient.organisation.careUnitId)
Person-id (personIdType.extension)
Person-id, typ (request.patient.personId.root)
Organisatorisk-enhet.enhet_id (request.author.healthcareProfessionalOrganisation)

##### Schematronregler
Regler markerade med [sch] återfinns i schematronfil (constraints).

| ID | Element | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Verify max length requestId [sch] | requestId | Maxlängd 256 tecken |
| Verify typeOfRequest [sch] | typeOfRequest | Giltigt värde: 4 |
| Verify typeOfReason [sch] | typeOfReason | Giltiga värden: NR, AR, VR, AB |
| Verify personId [sch] | personId | root är '1.2.752.129.2.1.3.1' eller '1.2.752.129.2.1.3.3' |
| Verify postalCode [sch] | postalCode | Exakt längd 5 tecken |
| Verify typeOfTelecom [sch] | typeOfTelecom | Giltiga värden: H, MC |
| Verify gender [sch] | gender | Giltiga värden: 0, 1, 2, 9 |
| Verify condition [sch] | condition | Enbart ange code eller text, inte båda |
| Verify desiredActivity [sch] | desiredActivity | Enbart ange code eller text, inte båda |
| Verify commitmentType [sch] | commitmentType | codeSystem: 1.2.752.129.2.2.2.44 |
| Verify paymentCommitment [sch] | paymentCommitment | Om commitmentType = 1 så måste commitmentTypeChapter anges |
| Verify commitmentTypeChapter [sch] | commitmentTypeChapter | codeSystem: 1.2.752.129.5.1.37 |
| Verify liableCountyCouncil [sch] | liableCountyCouncil | Giltig kod från 01 till 25 / codeSystem: 1.2.752.129.2.2.1.18 |
| Verify reimbursmentType code [sch] | reimbursementType | codeSystem: 1.2.752.129.5.1.36 |
| Verify ownerOfInvokedContract [sch] | ownerOfInvokedContract | Giltig kod från 01 till 25 / codeSystem: 1.2.752.129.2.2.1.18 |
| Verify attachment [sch] | attachment | Inbäddade bilagor ska ha id och value (refererade bilagor används inte i denna version) |
| Verify mediaType [sch] | mediaType | Endast tillåtna filformat |
| Verify intermediaryParticipant [sch] | request | Om reasonForVersion = VR så måste intermediaryParticipant anges |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Verify non-empty elements [sch] | Alla element i meddelandet. | Tomma värden får inte anges. |

##### Icke funktionella krav
Här skall de verksamhatskrav som gäller för aktuellt tjänstekontrakt beskrivas.

###### SLA-krav
Se tjänstedomänens SLA-krav.

#### Annan information om kontraktet

### ProcessRequestConfirmation
Tjänsten används av remissinvolverade parter för att kommunicera information kring en remiss. Exempel på detta är:
en remissmottagare har bedömt remissen och går vidare i handläggningen av ärendet
remissmottagaren begär komplettering av en redan skickad remiss
information om att en remiss har vidareskickats till en annan mottagning
information om att en remiss avvisats
information om att en remiss avbrutits
Tjänstekontraktets huvuddomän är "clinicalprocess", som hanterar alla underdomäner som handlar om tjänstekontrakt för att hjälpa till med hantering av den kliniska kärnprocessen.
Underdomänen är "activity:request", som grupperar alla tjänstekontrakt som handlar om att presentera och administrera information om remiss och tillhörande flöden.
Namnrymden för tjänstekontraktet är: urn:riv:clinicalprocess:activity:request

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges med en * i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardi-nalitet | Kodverk/värde-mängd /ev begränsningar |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| requestConfirmation | RequestConfirmationType | Remissbekräftelse | 1..1 |  |
| requestConfirmation.requestId | RequestIdType | Remiss id
Den ursprungliga remissens remiss-id | 1..1 | (.*)#(.*) / Maxlängd 256 tecken |
| requestConfirmation.requestConfirmationId | RequestIdType | Remissbekräftelse id
Unik identifierare för remissbekräftelsen. / Källsystem-Id(HSA-ID)#lokalt-id / Exempel: SE2321000012-0001#456 | 1..1 | (.*)#(.*) / Maxlängd 256 tecken |
| requestConfirmation.typeOfRequestConfirmation | CodeRequestConfirmationType | Typ av remissbekräftelse
Anger typ av svar.

Giltiga värden är:
BEK = Bekräftelse
VID = Besked om vidareskickning
KOM = Kompletterings-begäran
AVB = Avbruten remiss
AVV = Avvisad remiss | 1..1 |  |
| requestConfirmation.requestVersionNumber | VersionNumberType | Remissversionsnummer
Remissens versionsnummer. / Version startar alltid på 1 och räknas sekventiellt upp för varje ny version. / Denna räknas upp vid: / - Ändrad remiss
- Vidareskickad remiss
- Ändrat betalningsansvar | 1..1 | (0*[1-9]+\|[1-9])\d* |
| requestConfirmation.requestConfirmationTime | TimeStampType | Remissbekräftelse-tidpunkt
Tidpunkt då remissbekräftelsen skapades. | 1..1 | ÅÅÅÅMMDDttmmss |
| requestConfirmation.confirmingOrganisation | FullOrganisationType | Organisatorisk enhet
Den faktiska enhet som skickar bekräftelsemeddelandet. Detta kan skilja sig från den ansvariga vårdenheten enligt PDL. | 1..1 |  |
| requestConfirmation.confirmingOrganisation.careUnitId | HsaIdType | Enhet id
HSA-id för enhet. | 1..1 | Maxlängd 64 tecken |
| requestConfirmation.confirmingOrganisation.careUnitName | String | Enhet namn
Namn på enhet. | 0..1 | Maxlängd 64 tecken |
| requestConfirmation.confirmingOrganisation.careUnitTelephone | String | Enhet telefon
Telefon till enhet. | 0..1 |  |
| requestConfirmation.confirmingOrganisation.careUnitEmail | String | Enhet epost
E-post till enhet. | 0..1 |  |
| requestConfirmation.confirmingOrganisation.careUnitAddress | String | Enhet adress
Adress till enhet. | 0..1 |  |
| requestConfirmation.confirmingOrganisation.careUnitLocation | String | Enhet plats
Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering. | 0..1 |  |
| requestConfirmation.patient | SimplePatientType | Patient | 1..1 |  |
| requestConfirmation.patient.personId | PersonIdType | Person id
Patientens identitet | 1..1 |  |
| requestConfirmation.patient.personId.extension | String | Personidentifierare för patienten. / Om identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken. | 1..1 |  |
| requestConfirmation.patient.personId.root | String | OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas. / För andra typer av personidentifierare sätts root till aktuell OID. | 1..1 |  |
| requestConfirmation.patient.name | String | Namn
Alla personnamn skrivs sammanslaget enligt formatet " Mellannamn Efternamn, Förnamn". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag. / Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet. | 0..1 | Maxlängd 216 tecken |
| requestConfirmation.author | AuthorType | Remissbesvarare
Remissbekräftande person och organisation | 1..1 |  |
| requestConfirmation.author.healthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdspersonal | 1..1 |  |
| requestConfirmation.author.healthcareProfessional.id | HsaIdType | Personal id
HSA-id för remissbekräftande personal | 0..1 | Maxlängd 64 tecken |
| requestConfirmation.author.healthcareProfessional.name | String | Personalnamn | 1..1 | Maxlängd 64 tecken |
| requestConfirmation.author.typeOfHealthcareProfessional | CVType | Typ av hälso- och sjukvårdspersonal / Kod för yrkestitel från Snomed CT enligt urvalen nedan: / code: se urval_legitimerade_yrken / codeSystem: OID 1.2.752.129.5.1.70

eller / code: se yrken_i_halso-_och_sjukvarden_ej_legitimerade / codeSystem: 1.2.752.129.7.1.5 / Urvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| requestConfirmation.author.healthcareProfessionalOrganisation | OrganisationType | Organisatorisk enhet
remissbekräftande | 1..1 |  |
| requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId | HsaIdType | Enhet id
HSA-id för verksamhet som ansvarar för remissbekräftelsen. | 1..1 | Maxlängd 64 tecken |
| requestConfirmation.recipient | RecipientType | Mottagare | 1..1 |  |
| requestConfirmation.recipient.organisation | OrganisationType | Organisatorisk enhet
mottagare | 1..1 |  |
| requestConfirmation.recipient.organisation.careUnitId | HsaIdType | Enhet id
HSA-id för remitterande enhet, till vilken remissbekräftelsen adresseras. | 1..1 | Maxlängd 64 tecken |
| requestConfirmation.forwardingRecipient | RecipientType | Mottagare vidarebefordran
Obligatorisk att ange när typen på requestConfirmation.typeOfRequestConfirmation är VID (Besked om vidareskickning). / Ska inte anges om typen på requestConfirmation.typeOfRequestConfirmation är annan än VID (Besked om vidareskickning). | 0..1 |  |
| requestConfirmation.forwardingRecipient.organisation | OrganisationType | Organisatorisk enhet
ny mottagare | 1..1 |  |
| requestConfirmation.forwardingRecipient.organisation.careUnitId | HsaIdType | Enhet id
HSA-id för remissmottagande enhet av den vidareskickade remissen. | 1..1 | Maxlängd 64 tecken |
| requestConfirmation.outcome | RequestReceivedConfirmationOutcomeType | Bekräftelsemeddelande | 1..1 |  |
| requestConfirmation.outcome.outcomeText | String | Svarstext
Meddelande till remissens avsändare. | 1..1 | Maxlängd 8192 tecken |
| Svar |  |  |  |  |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |  |
| result.resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |  |
| result.errorCode | ErrorCodeEnum | Sätts endast om level är ERROR, se kapitel 4.3 för mer information. | 0..1 |  |
| result.subCode | String | Standardiserad felkod för ytterligare information om logiskt fel. Se rubrik “4.3.1.1 Logiska fel - tabell felkoder” | 0..1 |  |
| result.logId | String | Ett unikt log-id som kan användas vid felanmälan för att användas vid felsökning av producent. | 0..1 |  |
| result.message | String | En beskrivande text som kan visas för användaren. | 0..1 |  |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Fält requestVersionNumber – Version vid vidareskickning
Om en remissmottagare väljer att vidareskicka en remiss skall versionsnumret räknas upp med ett. Detta är det enda tillfället då någon annan än originalremittenten kan ändra versionsnummer. Den vidareskickande enheten skall i samband med vidareskickat skicka en bekräftelse (VID) tillbaka till remittenten med requestConfirmation.requestVersionNumber satt till det nya versionsnumret och en förklarande text till varför remissen skickats vidare.

##### Schematronregler
Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Verify typeOfRequestConfirmation [sch] | typeOfRequestConfirmation | Giltiga värden: BEK, VID, KOM, AVB, AVV |
| Verify personId [sch] | personId | root är '1.2.752.129.2.1.3.1' eller '1.2.752.129.2.1.3.3' |
| Verify max length requestId [sch] | requestId | Maxlängd 256 tecken |
| Verify forwardingRecipient [sch] | requestConfirmation | Om typeOfRequestConfirmation = VID så måste forwardingRecipient anges, annars ska den inte anges. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Verify non-empty elements [sch] | Alla element i meddelandet. | Tomma värden får inte anges. |

##### Icke funktionella krav
Här skall de verksamhatskrav som gäller för aktuellt tjänstekontrakt beskrivas.

###### SLA-krav
Se tjänstedomänens SLA-krav.

#### Annan information om kontraktet

### ProcessRequestOutcome
Tjänsten används för att kommunicera det kliniska resultatet av en undersökning gjord med anledning av en skickad remiss, dvs själva det kliniska remissvaret.
Tjänstekontraktets huvuddomän är "clinicalprocess", som hanterar alla underdomäner som handlar om tjänstekontrakt för att hjälpa till med hantering av den kliniska kärnprocessen.
Underdomänen är "activity:request", som grupperar alla tjänstekontrakt som handlar om att presentera och administrera information om remiss och tillhörande flöden.
Namnrymden för tjänstekontraktet är: urn:riv:clinicalprocess:activity:request

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges med en * i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardi-nalitet | Kodverk/värde-mängd /ev begränsningar |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| requestOutcome | RequestOutcomeType | Svar
Remissvar |  |  |
| requestOutcome.requestId | RequestIdType | Remiss id
Den ursprungliga remissens remiss-id | 1..1 | (.*)#(.*) / Maxlängd 256 tecken |
| requestOutcome.requestOutcomeId | RequestIdType | Svar id
Id för remissvar, enligt format:
Källsystem-Id(HSA-ID)#lokalt-id / Exempel: SE162321000451-0001#456 | 1..1 | (.*)#(.*) / Maxlängd 256 tecken |
| requestOutcome.typeOfRequestOutcome | CodeRequestOutcomeType | Svarstyp
Anger typen av remissvar.
 
Giltiga värden är:
DSV = Delsvar
PSV = Preliminärt svar
SSV= Slutsvar | 1..1 | codes:codeRequestOutcomeType |
| requestOutcome.requestVersionNumber | VersionNumberType | Remissversionsnummer
Remissens versionsnummer. / Version startar alltid på 1 och räknas sekventiellt upp för varje ny version. / Denna räknas upp vid: / Ändrad remiss
Vidareskickad remiss
Ändrat betalningsansvar | 1..1 | (0*[1-9]+\|[1-9])\d* |
| requestOutcome.patient | SimplePatientType | Patient | 1..1 |  |
| requestOutcome.patient.personId | PersonIdType | Person id / Patientens identitet | 1..1 |  |
| requestOutcome.patient.personId.extension | String | Personidentifierare för patienten. / Om identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken. | 1..1 |  |
| requestOutcome.patient.personId.root | String | OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas. / För andra typer av personidentifierare sätts root till aktuell OID. | 1..1 |  |
| requestOutcome.patient.name | String | Namn
Alla personnamn skrivs sammanslaget enligt formatet " Mellannamn Efternamn, Förnamn". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag. / Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet. | 0..1 | Maxlängd 216 tecken |
| requestOutcome.requestOutcomeTime | TimeStampType | Svarstidpunkt
Svarets skapelsetidpunkt. / Den tidpunkt då remissbesvararen skickar svaret. | 1..1 | ÅÅÅÅMMDDttmmss |
| requestOutcome.respondingOrganisation | FullOrganisationType | Organisatorisk enhet
Den enhet som har producerat svaret. Detta kan skilja sig från den enhet som remittenten angav som remissmottagande enhet på grund av tekniska eller organisatoriska anledningar. Exempelvis kan det ske en systemintern ”vidareskickning” till en specifik enhet från en central remissmottagning utan att detta notifieras till remittenten. | 1..1 |  |
| requestOutcome.respondingOrganisation.careUnitId | HsaIdType | Enhet id
HSA-id för remissbesvarande enhet. | 1..1 | Maxlängd 64 tecken |
| requestOutcome.respondingOrganisation.careUnitName | String | Enhet namn
Namn på enhet. | 0..1 | Maxlängd 64 tecken |
| requestOutcome.respondingOrganisation.careUnitTelephone | String | Enhet telfon
Telefon till enhet. | 0..1 |  |
| requestOutcome.respondingOrganisation.careUnitEmail | String | Enhet epost
E-post till enhet. | 0..1 |  |
| requestOutcome.respondingOrganisation.careUnitAddress | String | Enhet adress
Adress till enhet. | 0..1 |  |
| requestOutcome.respondingOrganisation.careUnitLocation | String | Enhet plats
Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering. | 0..1 |  |
| requestOutcome.author | AuthorType | Remissbesvarare
Remissbesvarande person och organisation | 1..1 |  |
| requestOutcome.author.healthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdspersonal | 1..1 |  |
| requestOutcome.author.healthcareProfessional.id | HsaIdType | Personal id
HSA-id för remissbesvarare | 0..1 | Maxlängd 64 tecken |
| requestOutcome.author.healthcareProfessional.name | String | Personal namn
Namn på remissbesvarare | 1..1 | Maxlängd 64 tecken |
| requestOutcome.author.typeOfHealthcareProfessional | CVType | Typ av hälso- och sjukvårdspersonal / Kod för yrkestitel från Snomed CT enligt urvalen nedan: / code: se urval_legitimerade_yrken / codeSystem: OID 1.2.752.129.5.1.70

eller / code: se yrken_i_halso-_och_sjukvarden_ej_legitimerade / codeSystem: 1.2.752.129.7.1.5 / Urvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| requestOutcome.author.healthcareProfessional.Organisation | OrganisationType | Organisatorisk enhet
Remissbesvarare | 1..1 |  |
| requestOutcome.author.healthcareProfessional.Organisation.careUnitId | HsaIdType | Enhet id
HSA-id för vårdenhet (jmf. PDL) som ansvarar för remissvaret. | 1..1 | Maxlängd 64 tecken |
| requestOutcome.recipient | RecipientType | Mottagare | 1..1 |  |
| requestOutcome.recipient.organisation | OrganisationType | Organisatorisk enhet
Mottagare | 1..1 |  |
| requestOutcome.recipient.organisation.careUnitId | HsaIdType | Enhet id
HSA-id för remissvarsmottagande enhet, till vilken remissvaret adresseras. | 1..1 | Maxlängd 64 tecken |
| requestOutcome.outcome | OutcomeType | Kliniskt innehåll
Remissvar | 1..1 |  |
| requestOutcome.outcome.outcomeText | String | Klinisk svarstext
Remissvarstexten | 1..1 | Maxlängd 65000 tecken |
| requestOutcome.outcome.condition | ConditionType | Kliniskt tillstånd
Dessa kliniska data är direkt kopplat till svaret, t.ex. funna diagnoser. | 0..* |  |
| requestOutcome.outcome.condition.code | CVType | Kliniskt tillståndskod Anger kliniska tillståndskoder. / code:  se ICD-10-SE

codeSystem: 1.2.752.116.1.1.1 / Observera att antingen måste denna eller outcome.condition.text finnas med / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| requestOutcome.outcome.condition.text | String | Klinisk tillståndsbeskrivning
Beskrivningen av det kliniska tillståndet i de fall en kod saknas. / Texten ska endast beskriva ett kliniskt tillstånd. Ska fler tillstånd beskrivas hanteras det i olika requestOutcome.outcome.condition. / Observera att antingen måste denna eller outcome.condition.code finnas. | 0..1 | Maxlängd 8192 tecken |
| requestOutcome.outcome.accomplishedActivity | ActivityType | Åtgärd
Svaret kan redovisa noll till många utförda åtgärder | 0..* |  |
| requestOutcome.outcome.accomplishedActivity.id | ActivityIdType | Åtgärd id
Unikt id som är sammansatt av requestId + accomplishedActivity + löpnummer med # som skiljer respektive del. / Exempel. / requestId = SE2321000012-0001#987 / id = SE2321000012-0001#987#accomplishedActivity#0 / och nästa id blir / accomplishedActivity.id = SE2321000012-0001#987# accomplishedActivity#1 | 0..1 |  |
| requestOutcome.outcome.accomplishedActivity.text | String | Åtgärd beskrivning
Här ska åtgärdsbeskrivningen in om systemet inte kan använda en kod. / Texten ska endast beskriva en utförd åtgärd. Ska fler åtgärder beskrivas hanteras det i olika requestOutcome.outcome.accomplishedActivity. / Observera att text får endast förekomma om accomplishedActivity.code inte används. | 0..1 | Maxlängd 8192 tecken |
| requestOutcome.outcome.accomplishedActivity.code | ActivityCodeType | Åtgärd typ
Åtgärd enligt kodsystem. / Observera att code får endast förekomma om accomplishedActivity.text inte används. | 0..1 |  |
| requestOutcome.outcome.accomplishedActivity.code.code | String | Kod enligt det angivet kodsystemet – KVÅ eller Snomed CT | 1..1 |  |
| requestOutcome.outcome.accomplishedActivity.code.codeSystem | String | Kodsystem för tolkning av angiven kod. / Obligatoriskt att hantera / 1.2.752.116.1.3.2.1.4 = KVÅ / Om remittent använder kodverk som remissmottagande system inte hanterar skall detta resultera i ett fel av typen APPLICATION_ERROR. | 1..1 |  |
| requestOutcome .originalRequest | RequestType | Originalremissen / Detta fält skall endast vara ifyllt i de fall då remissen skickas till annan mottagare än originalremittenten. Detta flöde finns idag inte beskrivet i de nationella specifikationerna. OriginalRequest får endast vara ifylld om den faktiska implementationen kan garantera att strukturen är identisk från det som mottogs från original remittenten. | 0..1 |  |
| requestOutcome.attachment | MultimediaType | Bilaga
Möjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten | 0..* |  |
| requestOutcome.attachment.id | String | Bilaga id / Identitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion. / Format remissvar: requestOutcomeId#löpnummer =Källsystem-Id(HSA-ID)#lokalt-id#löpnummer / Obligatoriskt för inbäddade bilagor | 0..1 | (.*)#(.*)#(.*) / Maxlängd 256 tecken |
| requestOutcome.attachment.mediaType | CVType | Multimediatyp 
Typ av multimedia, se urval med tillåtna format. / code: se urval_mediatyper_elektronisk_remiss / codeSystem: (1.2.752.129.5.1.59, se nedan) / Under codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör. / Urvalet kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 | urval_mediatyper_elektronisk_
remiss |
| requestOutcome.attachment.value | Base64Binary | Binärdata
Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format. Obligatoriskt när referens inte används. | 0..1 | Ett meddelande med bilagor får inte vara större än 10MB |
| requestOutcome.attachment.reference | AnyURI | Referens
Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas. OBS! Används inte i denna version. | 0..0 |  |
| requestOutcome.attachment.description | String | Beskrivning / Beskrivning av bilaga, t ex innehåll | 0..1 | Maxlängd 256 tecken |
| Svar |  |  |  |  |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |  |
| result.resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |  |
| result.errorCode | ErrorCodeEnum | Sätts endast om level är ERROR, se kapitel 4.3 för mer information. | 0..1 |  |
| result.subCode | String | Standardiserad felkod för ytterligare information om logiskt fel. Se rubrik “4.3.1.1 Logiska fel - tabell felkoder” | 0..1 |  |
| result.logId | String | Ett unikt log-id som kan användas vid felanmälan för att användas vid felsökning av producent. | 0..1 |  |
| result.message | String | En beskrivande text som kan visas för användaren. | 0..1 |  |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Regler bilagor
Inera skannar inte bilagor för skadlig kod, detta behöver mottagaren ombesörja själv. Tjänstekonsumenter av ProcessRequestOutcome ska följa de generella riktlinjerna för inbäddade binära bilagor, se RIV Tekniska anvisningar Binära bilagor [R7]. 
Se rubriker nedan för undantag från RIV Tekniska anvisningar Binära bilagor som gäller för tjänsten Elektronisk remiss.
Bilagestorlek
Om ett meddelande i ProcessRequestOutcome innehåller en inbäddad bilaga får den totala meddelandestorleken inte överstiga 10MB.
Inbäddade bilagor kodas med base64 i meddelandet. Observera att kodning av filer med Base64 innebär att storleken på strängen som skickas i meddelandet är större än originalfilens storlek. Storleken ökar med ca 1/3 av den ursprungliga filens storlek.
Filformat
De filformat som är tillåtna för inbäddade bilagor är pdf, jpeg, png, html, txt, gif och bmp och finns i urvalet urval_mediatyper_elektronisk_remiss.

##### Schematronregler
Regler markerade med [sch] återfinns i schematronfilen (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Verify max length requestId [sch] | requestId | Maxlängd 256 tecken |
| Verify typeOfRequestOutcome [sch] | typeOfRequestOutcome | Giltiga värden: DSV, PSV, SSV |
| Verify personId [sch] | personId | root är '1.2.752.129.2.1.3.1' eller '1.2.752.129.2.1.3.3' |
| Verify condition [sch] | condition | Enbart ange code eller text, inte båda |
| Verify accomplishedActivity [sch] | accomplishedActivity | Enbart ange code eller text, inte båda |
| Verify attachment [sch] | attachment | Inbäddade bilagor ska ha id och value (refererade bilagor används inte i denna version) |
| Verify mediaType [sch] | mediaType | Endast tillåtna filtyper |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Verify non-empty elements [sch] | Alla element i meddelandet. | Tomma värden får inte anges. |

##### Icke funktionella krav
Här skall de verksamhatskrav som gäller för aktuellt tjänstekontrakt beskrivas.

###### SLA-krav
Se tjänstedomänens SLA-krav.

#### Annan information om kontraktet
