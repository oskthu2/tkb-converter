# 2 Versionsinformation - clinicalprocess: healthcond: description v3.0.6

* [**Table of Contents**](toc.md)
* **2 Versionsinformation**

## 2 Versionsinformation

## Versionsinformation

Denna revision av tjänstekontraktsbeskrivningen handlar om domänen clinicalprocess: healthcond: description. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 3.0.6

#### Oförändrade tjänstekontrakt

GetDiagnosis, version 2.0 GetAlertInformation, version 2.0 GetFunctionalStatus, version 2.0 GetCareDocumentation, version 3.0

#### Nya tjänstekontrakt

Följande nya tjänstekontrakt finns från och med denna version: Inga nya kontrakt har tillkommit i denna version

#### Förändrade tjänstekontrakt

Inga förändrade tjänstekontrakt i denna version Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| | | | |
| :--- | :--- | :--- | :--- |
| GetCareDocumentation | 2.1 | 2.0 | OK |
|   | 2.0 | 2.1 | Ej kompatibel |
|   | 2.x | 3.0 | EJ kompatibel |
|   | 3.0 | 2.x | EJ kompatibel |

#### Utgångna tjänstekontrakt

Inga tjänstekontrakt har utgått.

### Version tidigare

3.0.5

### Revisionshistorik

| | | | |
| :--- | :--- | :--- | :--- |
| PA1 | 2012-12-03 | FS, MA | Arbetsdokument: Vårddokumentation tillagd |
| PA2 | 2012-12-11 | Maria Andersson | Uppdaterade tabeller efter diskussioner med Johan Eltes |
| PA3 | 2012-12-18 | Maria Andersson | Lagt till kap 5. GetReferralAnswer |
| PA4 | 2012-12-20 | Maria Andersson | Uppdaterat tabeller |
| PA5 | 2012-12-21 | Maria Andersson | Uppdaterat tabeller efter ny struktur |
| PA6 | 2012-12-21 | Maria Andersson | Uppdaterat namnen i tabellen |
| PA7 | 2012-12-21 | Johan Eltes | Lagt till avsnittet Tjänstedomänens arkitektur samt redigerat avsnittet Generella regler |
| PA8 | 2013-01-07 | Johan Eltes | Förbättrad kvalitén på texterna från PA7 |
| PA9 | 2013-01-08 | Maria Andersson | Uppdaterat tabellerna under kap 4, 5 och 6 |
| PA10 | 2013-01-09 | Johan Eltes | Lagt till avsnitt om engagemangsindex. Kompletterat/förtydligat avsnitten nationell användning, nationell användning och adresseringsmodell. |
| PA11 | 2013-01-14 | Maria Andersson | Uppdaterat kap 5 och 6 med ny struktur. |
| PA12 | 2013-01-14 | Maria Andersson | Lagt till kap 7. |
| PA13 | 2013-01-20 | Johan Eltes | Uppdaterat efter beslut att hålla indexpostern på PDLenhetsnivå och använda SourceSystem för adressering. |
| PA14 | 2013-01-21 | Fredrik Ström | Uppdaterat gemensamma informationskomponenter och tjänstebeskrivning |
| PA15 | 2013-01-21 | Maria Andersson | Uppdaterat typerna med inledande versal. Ändrat från careRequest till Referral och från Answer till Outcome i kap 6. |
| PA16 | 2013-01-21 | Maria Andersson | Ändrat kardinaliteten på referral i kap 6. |
| PA17 | 2013-01-24 | Maria Andersson | Ändrat i tabellerna i kap 4, 5 och 6. |
| PA18 | 2013-01-25 | Maria Andersson | Ändrat i tabellerna i kap 4, 5 och 6. |
| PA19 | 2013-01-29 | Maria Andersson | Ändrat beskrivningar i kap 4, 5 och 6 samt ny struktur i kap 4. |
| PA20 | 2013-01-30 | Fredrik Ström / Magnus Ekstrand | Ändrat beskrivningar kap 4, 5.4 och 6.4. / Nya och uppdaterade typer kap 4, 5.4 och 6.4. |
| PA21 | 2013-01-31 | Maria Andersson | Ändringar i beskrivningar kap 4, 5, 6 och 7. |
| PA22 | 2013-01-31 | Maria Andersson | Ändringar i kap 7, GetCareContact |
| PA23 | 2013-02-07 | Magnus Ekstrand | Justeringar av elementnamn och kardinalitet i kap 5, 6 och 7. / Tog bort ej använd gemensam komponent. |
| PA24 | 2013-02-11 | Maria Andersson de Vicente | Lagt till kap 8, GetDiagnosis |
| PA25 | 2013-02-19 | Johan Eltes | Definierat krav på uppdatering av fältet mostRecentContent i EI-posten. |
| PA26 | 2013-03-01 | Maria Andersson de Vicente | Lagt in beskrivning av personidentifierare under kap 3. |
| PA27 | 2013-03-04 | Maria Andersson de Vicente | Uppdaterat till careContactUnitid, careContactUnitName, careContactUnitAddress under 7.4. Uppdaterat beskrivningen av Author under 5.4, 6.4, 7.4 och 8.4. Ändrat Adress till Postadress i hela dokumentet. |
| PA28 | 2013-03-04 | Maria Andersson de Vicente | Ändrat kardinalitet på CareContactUnit till 1..1 under 7.4. Lagt till authorOrgUnitHSAid och authorOrgUnitName. Ändrat kardinalitet på legalAuthenticatorHSAid till 0..1. Tagit bort information om signatur under 7.4. Lagt till sourceSystem. |
| PA29 | 2013-03-05 | Johan Eltes | Lagt till nya sökparametrar för source system och care contact id. Lagt till authorOrgUnitAddress och tagit bort careUnitName. / Förtydligat skrivning om aggregerande tjänster samt lagt till scenariobeskrivning för sökning på careContactId / Överfört i ny tjänstedomän enligt anvisning från CeHis. |
| PA30 | 2013-03-11 | Johan Eltes | Specificerat kodverk för EI-postens Categorization-fält. / SLA-krav uppdaterade |
| PA31 | 2013-03-14 | Maria Andersson de Vicente | Ändrat beskrivningen av DocumentTime |
| PA32 | 2013-03-14 | Johan Eltes | Preciserat lexikaliskt format för personnummer. / Lagt till stöd för gamla dokumenttyper för att under en övergångsperiod underlätta för bef. NPÖ-anslutningar. |
| PA33 | 2013-03-25 | Fredrik Ström / Johan Eltes / Khaled Daham | Uppdaterat beskrivning i GetCareDocumentation av tidsattribut. / Ändrat format på MultiMediaEntry / authorOtherRole tillagt. / Tagit bort koppling mellan categorization-koden för EI och NPÖ:s kodverk. Koden ägs nu av denna tjänstedomän (ingen ändring av själva värdet). / Ändrat elementnamnet sourceSystem till sourceSystemHSAid / Förbättrat och utökat beskrivningen av adressering för att även täcka anrop utan aggregering. / Uppdaterat semantik för ”Most Recent Content” (EI) |
| PA34 | 2013-04-30 | Johan Eltes | Uppdaterat regelverk för EI-poster avseende fältet LogicalAddress (som nu är samma som för source system) / Lagt till regel enligt NPÖ RIV-spec för formattering av clinicalDocumentNoteText / Lagt till krav på uppdatering av EI-fältet DataController / Uppdaterat bilder och text i arkitekturavsnittet för att spegla ändring i EI-postens innehåll / Formatteringsproblem i dokumentet åtgärdade. |
| PA35 | 2013-09-21 | Björn Genfors | Uppdaterat sektionen om gemensamma typer. / Följduppdaterat tjänstekontraktsbeskrivningar / Lagt till information om avvikande åsikt till journalnotatet / Lagt till beskrivning av formattering av clinicalDocumentNoteText |
| PA36 | 2013-09-26 | Björn Genfors | Redaktionella ändringar (HSAId ska skrivas just så) |
| PA37 | 2013-09-30 | Johan Eltes | Åtgärdat ett par copy-paste-fel i skrivningen om docbook-formatet. / Förtydligat beskrivningen av opinionId |
| PB1 | 2013-10-09 | Björn Genfors | Tagit bort nullified från GetCareDocumentation / Satt kardinaliteten på healthcareProfessionalHSAId till 0..1. / Justerat läsbarheten i kontraktstabellen. |
| PB2 | 2013-10-15 | Björn Genfors | Förtydligat patientId i PatientSummaryHeader. |
| PB3 | 2013-10-17 | Björn Genfors | Korrigerat beskrivning av documentId i PatientSummaryHeader / Justerat beskrivning av adress i OrgUnitType. / Lagt till SourceSystem i Engagemangsindex. |
| PB4 | 2013-10-21 | Johan Eltes | Förtydligat kravet på filtrering av svar enligt logicalAddress (lagt till avsnitt 3.4). / Markerat i flödesmodeller att anslutningskatalog inte är del av dagens arkitektur. |
| PB5 | 2013-11-04 | Johan Eltes | Ersatt termen PDL-enhet med vårdenhet (i löpande text) / Uppdaterat avsnittet om informationssäkerhet efter CeHis-granskning |
| PB6 | 2013-11-25 | Johan Eltes | Lagt till text för tjänstekontrakten som deklarerar kompatibilitet med NPÖ RIV Spec och HL7 CDA. |
| PB7 | 2013-11-26 | Björn Genfors | Lagt till tjänstekontrakt för Diagnos / Lagt till tjänstekontrakt för Uppmärksamhetsinformation |
| PB8 | 2013-11-28 | Khaled Daham | Rättat namn på typer och djup på element för GetAlertInformation |
| PB9 | 2013-11-29 | Björn Genfors | Rättat versalisering på två element i diagnoskontraktet |
| PB10 | 2013-12-05 | Björn Genfors | Infört nytt element: chronicDiagnosis i GetDiagnosis / Ändrat elementnamn på relaterad diagnos-id i GetDiagnosis / Korrigerat format och kardinalitet på ingående element i validityTimePeriod i GetAlertInformation / Ändrat namn på ett fåtal element i GetAlertInformation (treatmentDescription, communicableDiseaseCode och restrictionOfCareComment är nya namnen) / Beskrivningar av ett fåtal fält har åtgärdats. |
| PB11 | 2013-12-10 | Björn Genfors | Bytt namn på elementet diagnosisType till typeOfDiagnosis |
| PB12 | 2013-12-11 | Björn Genfors | Förtydligat beskrivning av tidsparametern i begäran för GetAlertInformation |
| PB13 | 2013-12-11 | Johan Eltes | Lagt till kategorikoder för infomängder diagnos och uppmärksamhetsinformation / Ersatt beskrivningen av generella klasser med en referens till bilaga / Lagt till skrivning på orgunit-fält i alla typer och kontrakt om att lokalt id kan anges om HSA-id saknas i källsystemet. |
| PB14 | 2014-01-21 | Björn Genfors | Lagt till det nya kontraktet för reumatismdata. |
| PB15 | 2014-01-22 | Björn Genfors | Kontraktet för reumatismdata är flyttat till en egen domän: clinicalprocess.healthcond.rheuma |
| PB16 | 2014-01-23 | Khaled Daham | Ändrade serviceDomain ifrån logistics.logistics till healthcond.description |
| 2.1.RC2 | 2014-03-13 | Björn Genfors | Bytt dokumentationen till ny mall / Lagt till MIM-ar / Lagt till V-TIM-mappning / Uppdaterat arbetsflödesdiagram / Uppdaterat några av fältregelbeskrivningarna i GetDiagnosis och GetAlertInformation för att harmoniera med GetCareDocumentation / Förtydligat beskrivningen av vad diagnoskontraktet är tänkt att returnera (definitionen av ”diagnos”). / Ändrat ISO-referens för angivande av tid- och datumformat. |
| 2.1.RC3 | 2014-03-17 | Khaled Daham | Lagt till resultType för alla kontrakt i tabellen för fältregler / Lagt till en beskrivning för logiska fel i kap 4.4 / Förtydligat text kring adressering i kap 3.3 / Uppdaterat versionsnummer samt kompabilitetstabellen |
| 2.1 RC4 | 2014-09-15 | Björn Genfors | Bytt dokumentationsmall / Korrigerat GCD att vara bakåtkompatibel med v 2.0 (elementnamnet sourceSystemHSAid behöver ett gement i). / Förtydligat dokumentation om begäran i GetDiagnosis och GetAlertInformation. / Lagt till kontraktet GetFunctionalStatus |
| 2.1 RC4 | 2014-09-16 | Khaled Daham | Uppdaterat MIM för GetFunctionalStatus, samt referredInformation.type till string från URN |
| 2.1 RC5 | 2014-09-18 | Khaled Daham | Rättat småfel i fältregellistan, bl.a kardinalitet för referredInformation från 0..* till 1..* |
| 2.1 RC6 | 2014-10-02 | Khaled Daham | Åtgärdat kommentarer efter VIS-granskning. |
| 2.1 RC7 | 2014-11-18 | Khaled Daham | Fixat stavfel / Lagt till Ineras HSAid för aggregerande tjänster. / sourceSystemHSAId krävs vid begäran på reservnummer |
| 2.1 RC7 | 2014-11-25 | Khaled Daham | Tagit bort alternativet att använda GetUpdates(index-pull) för EI då den inte är implementerad och det pågår diskussioner om att den skall tas bort ifrån TKB för EI. / Uppdaterat sekvensdiagram. / Ändrat skrivelse kring medarbetarens åtkomst till att peka på SOSFS 2008:14 istället för PDL-i-praktiken. / Förtydligat sambandet mellan categorization och assessmentCategory för GetFunctionalStatus |
| 2.1 | 2015-03-16 | Björn Genfors | Uppdaterat V-TIM-mappningskapitlet med korrigerade V-TIM-mappningar, och mappning mot NPÖ. / Korrigerat beskrivninge n av fältet padl/assessment i GFS. |
| 2.1.1 | 2015-03-31 | Khaled Daham | Tagit bort relation ifrån GetFunctionalStatus efter beslut av Inera |
| 2.1.2 | 2015-05-13 | Khaled Daham | Korrigerat HSA-id som skall användas vid addressering till Inera. |
| 2.1.3 | 2015-07-02 | Khaled Daham | Uppdaterat beskrivning av authorTime i headern. |
| 2.1.4 | 2015-09-16 | Björn Genfors | Korrigerat NPÖ-mappningar för två fält i GD och GAI |
| 2.1.4 | 2015-09-21 | Khaled Daham | Förtydligat att användning av clinicalDocumentTypeCode endast skall användas av 13606-adapters. |
| 2.1.4 | 2015-10-13 | Khaled Daham | Ändrad/rättat kardinalitet på pharmaceuticalTreatment från 0..1 till 0..* i fältregellistan samt i schemat. / Svarstider för SLA ändrat ifrån 15 sekunder till 30 sekunder. |
| 2.1.4 | 2015-10-20 | Khaled Daham | Uppdaterat text kring KV Befattning för GetFunctionalStatus / Uppdaterat regelverk för inbäddade binära bilagor |
| 2.1.5 | 2015-11-27 | Björn Genfors | Uppdaterat fältet allvarlighetsgrad i GAI med information om att det föreslagna kodverket allvarlighetsgrad finns i två versioner. |
| 2.1.6 | 2016-02-23 | Ranjdar Fallyih | Uppdaterat beskrivningen för legalAuthenticator (när informationen har låsts utan signering) |
| 2.1.7 | 2017-04-18 | Khaled Daham | Förtydligat i kap 7.1.4 att nullified och nullifiedReason inte används https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/358/gcd-21-tkb-saknar-f-lten-om-makulering-i-f |
| 2.1.7 | 2017-04-19 | Björn Pettersson | Testsviter uppdaterade |
| 2.1.8 | 2017-06-21 | Magnus Söderlind | Testsviter och självdeklaration uppdaterade |
| 2.1.9 | 2017-08-07 | Khaled Daham | Uppdaterat beskrivning av fält clinicalDocumentNoteText samt multimediaEntry https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/374/getcaredocumentation-tvetydig-semi |
| 2.1.9 | 2017-08-11 | Khaled Daham | Förtydligat actSubstance och lagt till element som ej skall användas, https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/369/getalertinformation-20-felaktig-cvtype / Förtydligat att låsning skall signaleras på samma sätt som det görs i getCareDocumentation för getDiagnosis, getFunctionalStatus, getAlertInformation / https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/377 / Förtydligat användning av relatedDiagnosis https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/373/fr-gor-ang-ende-tolkning-av |
| 2.1.9 | 2017-08-11 | Magnus Söderlind | Testsviter/självdeklarationer utökade och uppdaterade. |
| 2.1.10 | 2018-01-19 | Emmy Damberg | Rättat beskrivning av timePeriod i GetDiagnosis och datePeriod i GetFunctionalStatus https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/380/felaktig-beskrivning-av-dateperiod-i-tkb |
| 2.1.10 | 2018-10-05 | Magnus Söderlind | Uppdateringar i SJD och testförbättringar i testsviter, framförallt tidsfiltrering. Testsvit 7,8 tillkommer. |
| 2.1.10 | 2019-03-25 | Jan Söderman | Lagt till SjD för konsument och uppdaterat mock |
| 2.1.10 | 2019-04-03 | Malin Lindberg | Rättat kardinalitet för ../start och ../end i GetFunctionalStatus / https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/384/kardinalitet |
| 2.1.11 | 2019-05-02 | Jan Söderman | Ny testsvit och självdeklaration |
| 2.1.12 | 2020-03-30 | Maja Hedengren | Regelförtydligande av HSA-id för / vårdgivare och vårdenhet. / Rättning av kardinalitet till 0..1 för elementen healthcareProfessionalCareUnitHSAId samt healthcareProfessionalCareGiverHSAId i GCD som felaktigt var satt till 1..1 i TKB. / Flyttat ut regler i fältreglerna till Övriga regler. / Uppdaterar gamla länkar i referenslistan. / Tagit bort mappningar mot NPÖ och V-TIM från mappningstabellerna för respektive tjänstekontrakt samt övriga referenser till mappningen, efter A&R beslut om att mappningar ska tas bort. / Förtydligat regel i GFS för elemten ../../../disabilityAssessment och ../../../comment / Ändrat användning av vård- och omsorg (tex vård och omsorgspersonal) till hälso- och sjukvård (tex hälso- och sjukvårdspersonal). |
| 2.1.13 | 2020-11-25 | Claudia Ehrentraut | Uppdaterat versionsnummer |
| 2.1.14 | 2020-11-25 / 2020-12-02 | Claudia Ehrentraut | Förtydligat information om DocBook-formatet under avsnitt 7.1.3 och i beskrivningstexten för attributet clinicalDocumentNoteText samt uppdaterat referenser för DocBookformatet. / Byt ut alla förekomster av skall till ska och förekomster av oid till OID. / Bytt ut SOAP-Exception till Soap Fault, enligt https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/381/byt-till-soap-fault / Förtydligat skrivning under avsnitt 4.3 Icke funktionella krav om hur dubbletter i olika verksamhetssystem ska hanteras samt lagt till referens till ARK_0040. / Bytt namn av kodverket KV Befattning till Befattning, resp. KV Sambandstyp till KV Samband för att stämma överens med benämningarna på https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655/Kodverk+i+nationella+tj+nstekontrakt OBS! Det är samma kodverk som avses i båda fall. / Uppdaterat länk för referens R13 till https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655/Kodverk+i+nationella+tj+nstekontrakt / Lagt till referens till kodverkslistan [R13] för Snomed, ICD10, och ATC, KV Samband / Tagit bort referens R14 Internationell klassifikation av funktionstillstånd, funktionshinder och hälsa (ICF) eftersom ICF listas på kodverkslistan som refereras till i R13. / Lagt till ny R14 som är en referens till Listan över identifierare. / Lagt till referens till Listan över identifierare [R14] för personnummer, samordningsnummer och SLL-reservnummer. / Uppdaterat beskrivning av documentId i PatientSummaryHeader / Ändrat multiplicitet för orgUnitHSAId och orgUnitName från 0..1 till 1..1 för att stämma överens med schemat/testsviter i GetDiagnosis, GetAlertInformation och GetFunctionalStatus (GetCareDocumentation var redan korrekt satt till 1..1), utifrån https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/387/uppt-ckt-fel-i-wsdl-och-soapui-testsvit-f / Rättat rubriknivåer under 3.1 Flöden |
| 2.1.15 | 2021-02-01 | Tobias Blomberg / Claudia Ehrentraut | Förtydligat regel 2 för GetFunctionalStatus. / Uppdaterat attributbeskrivningen för headerId (dvs documentId i PatientSummaryHeaderType) i samtliga tjänstekontrakt för domänen. / Uppdaterat versionsinformation |
| 2.1.16 | 2021-05-24 | Tobias Blomberg | Uppdaterat beskrivningarna för domänen respektive varje tjänstekontrakt. / Uppdaterat beskrivningen för attributet MostRecentContent unde avsnitt 4.1 / Uppdaterat beskrivningen av tidsfiltrering i samtliga tjänstekontrakt. |
| 2.1.17 | 2022-01-11 / 2022-03-18 | Tobias Blomberg | Ändrat multiplicitet för careDocumentation/careDocumentationHeader/documentTime i GCD till valfritt för att stämma överens med schemat. / Uppdaterat beskrivningen för elementet sourceSystemHSAId i begäran för samtliga kontrakt i domänen. |
| 2.1.17 | 2022-03-22 | Tobias Blomberg | Version godkänd |
| 2.1.18 | 2022-11-29 / 2023-01-10 | Tobias Blomberg | Uppdaterat beskrivningen för attributet alertInformation i getAlertInformation enligt TJN-291 / Lagt till regel 2 under övriga regler i getAlertInformation / Tagit bort denna text från attributet legalAuthenticator ur samtliga tjänstekontrakt: / ”I de fall där informationen har låsts utan signering, representeras detta genom att signatureTime sätts till tidpunkten för låsning, och resterande fält i LegalAuthenticatorType lämnas tomma.”. / Detta då det enligt SOSFS 2016:40 ska det ej längre finnas möjlighet att låsa osignerade journalanteckningar / Uppdaterat samtliga beskrivningar av CVType för att tydliggöra regler gällande hur de olika elementen i typen relaterar till varandra. Reglerna finns redan beskrivna i schematron. |
| 3.0 | 2023-10-03 | Thomas Siltberg | 2021-07-09 / Kontraktet GetCareDocumentation uppdaterat till version 3.0. / Uppdaterat JoL-header till version 1.5 i GetCareDocumentation. / Uppdaterat gemensamma datatyper för GetCareDocumentation. / Lagt till pageneringshantering i GetCareDocumentation och med det lagt till avsnitt 4.3.2.5, 4.3.2.5 och 7.1.5 samt uppdaterat avsnitt 4.4.1.1 och 3.2. / Ändring av datatypen för personId i DissentingOpinionType. / Ändrat namn på sourceSystemHSAId till sourceSystemId i GetCareDocumentation. / Ändrat datatyp på sourceSystemId i GetCareDocumentation. / Flyttat regeln för sourceSystemId i GetCareDocumentation till avsnittet för övriga regler. / Justerat regel 1 för GetCareDocumentation då vårdgivaren nu är obligatorisk att ange i headern. / Lagt till hantering av logiska fel för GetCareDocumentation. / Lagt till regel 4 i övriga regler för GetCareDocumentation. / 2021-08-04 / Tagit bort clinicalDocumentTypeCode från GetCareDocumentation då den inte används längre. / Ändrat beskrivningen av clinicalDocumentNoteCode i GetCareDocumentation. / 2021-08-12 / Uppdatering av regler vid användning av Partiell datahämtning. / 2021-09-01 / Uppdaterat namn och beskrivning för tidsfiltrering i GetCareDocumentation. / 2021-10-12 / Ändrat benämningen på avvikande åsikt till avvikande mening. / Ändrat benämningen på hälso- och vårddokument till journalanteckning. / 2021-11-02 / Lagt till mappningstabell mellan MIM och informationsmodell för GetCareDocumentation. / 2022-01-25 / Lagt till regel för hur länge referensen ska vara giltig för HasMoreType i GetCareDociumentation under avsnitt 7.1.6. / Tagit bort attributet readyAt från HasMoreType för partiell datahämtning. / Förtydligat beskrivningen av record.id i GetCareDocumentation. / 2022-05-05 / Uppdaterat headern till version 2.0. / 2022-10-21 / Uppdaterat headern till version 2.1 (se TJN-304) / Tagit bort careContactId från begäran i GetCareDocumentation (se TJN-304) / Uppdaterat regel 3 för GetCareDocumentation vid borttag av careContactId / accountableHealthcareProvider i GetCareDocumentation är ändrad till ej obligatorisk (se TJN-304). / 2022-11-17 / Uppdaterat beskrivningen av patientId i begäran i GetCareDocumentation. / Förtydligat hantering av Partiell datahämtning under avsnitt 7.1.5. / Uppdaterat headern till version 2.2 och med det ändrat namnet på originalPatientId till patientId och kardinaliteten till 1..1 i schema och TKB. / Uppdaterat gemensamma typer till version 17. / Uppdaterat ClinicalDocumentNoteCode i GetCareDocumentation till att vara obligatorisk att ange i schema och TKB. / 2022-12-14 / Förtydligat användning av hasMore / 2022-12-16 / Justerat MIM samt mappningstabell för GetCareDocumentation. / Uppdatering av element för regel 1 för GetCareDocumentation. / Kompletterat fältregeltabellen med beskrivningarna av attributen i JoL-headern. / Lagt till skrivelse om att kodverket för clinicalDocumentNoteCode kan komma att ändras över tid och att konsumenter ska ta höjd för det. / 2022-12-30 / Ändrat clinicalDocumentNoteCode till CVType och uppdaterat beskrivningen. / Ändrat beskrivning av MultimediaEntry samt ändrat mediaType till string. / 2023-01-18 / Justerat beskrivningen av clinicalDocumentNoteCode samt MultimediaEntry / Har lyft in gemensamma typer i TKB i stället för att peka på en bilaga. Gäller GetCareDocumentation. / Har lyft in beskrivning om headern i TKB i stället för att peka på en bilaga. Gäller GetCareDocumentation. / Har lagt till regler för getCareDocumentation och kopplat dessa till schematron. / Uppdaterat beskrivningen av patientId i begäran för GetCareDocumentation. / 2023-02-09 / Tagit bort regel om begränsning på 100kb för binära bilagor. Storlegsbegränsning anges i interaktionsöverenskommelse i stället. / 2023-03-02 / Uppdaterat beskrivning av record.id i GetCareDocumentation. / 2023-09-21 / Ny dokumentmall / 2023-10-03 / Uppdaterat beskrivningen för sourceSystemHSAId i samtliga tjänstekontrakt för att tydliggöra vad fältet avser filtrera på. |
| 3.0.1 | 2024-03-05 | Thomas Siltberg | Stegrad domänversion. Inga ändringar i detta dokument. |
| 3.0.2 | 2024-04-23 | Thomas Siltberg | Uppdaterat beskrivningen om hantering av DocBook-standarden. / Justerat beskrivning om funktionen hasMore så att det framgår att den även är aktuell att använda baserat på gällande storleksbegränsningar på svarsmeddelandet. |
| 3.0.3 | 2024-05-06 | Tobias Blomberg | Stegrad domänversion. Inga ändringar i detta dokument. |
| 3.0.4 | 2024-05-28 | Tobias Blomberg | Stegrad domänversion. Inga ändringar i detta dokument. |
| 3.0.5 | 2024-11-22 | Thomas Siltberg | Förtydligande av beskrivning för atcSubstance, nonATCSubstance samt nonATCSubstanceComment i GetAlertInformation. |
| 3.0.6 | 2026-06-03 | Tobias Blomberg | Justerat texten under kap. 4.3.1 SLA krav från “Svarstiden för ett anrop får inte överstiga 30 sekunder” till “Svarstiden för ett anrop får inte överstiga 27 sekunder” |

