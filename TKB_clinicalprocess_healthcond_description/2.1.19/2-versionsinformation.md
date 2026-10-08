# 2 Versionsinformation - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* **2 Versionsinformation**

## 2 Versionsinformation

## Versionsinformation

Denna revision av tjänstekontraktsbeskrivningen handlar om domänen clinicalprocess: healthcond: description. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte ska brytas.

### Version 2.1.18

#### Oförändrade tjänstekontrakt

Följande tjänstekontrakt är oförändrade från föregående version:

GetCareDocumentation, version 2.1

GetDiagnosis, version 2.0

GetAlertInformation, version 2.0

GetFunctionalStatus, version 2.0

#### Nya tjänstekontrakt

Följande nya tjänstekontrakt finns från och med denna version:

Inga nya kontrakt har tillkommit i denna version

#### Förändrade tjänstekontrakt

Följande förändrade tjänstekontrakt finns från och med denna version:

Inga tjänstekontrakt har förändrats i denna vesion

Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt. Tabellen nedan avviker från anvisningarna. Se Arkitekturella Beslut [R1].

| | | | |
| :--- | :--- | :--- | :--- |
| GetCareDocumentation | 2.1 | 2.0 | OK |
| GetCareDocumentation | 2.0 | 2.1 | Ej kompatibel |

#### Utgångna tjänstekontrakt

Inga tjänstekontrakt har utgått.

### Version tidigare

2.1.17

### Revisionshistorik

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | PA1 | 2012-12-03 | Arbetsdokument: Vårddokumentation tillagd | FS, MA |
| - | PA2 | 2012-12-11 | Uppdaterade tabeller efter diskussioner med Johan Eltes | Maria Andersson |
| - | PA3 | 2012-12-18 | Lagt till kap 5. GetReferralAnswer | Maria Andersson |
| - | PA4 | 2012-12-20 | Uppdaterat tabeller | Maria Andersson |
| - | PA5 | 2012-12-21 | Uppdaterat tabeller efter ny struktur | Maria Andersson |
| - | PA6 | 2012-12-21 | Uppdaterat namnen i tabellen | Maria Andersson |
| - | PA7 | 2012-12-21 | Lagt till avsnittet Tjänstedomänens arkitektur samt redigerat avsnittet Generella regler | Johan Eltes |
| - | PA8 | 2013-01-07 | Förbättrad kvalitén på texterna från PA7 | Johan Eltes |
| - | PA9 | 2013-01-08 | Uppdaterat tabellerna under kap 4, 5 och 6 | Maria Andersson |
| - | PA10 | 2013-01-09 | Lagt till avsnitt om engagemangsindex. Kompletterat/förtydligat avsnitten nationell användning, nationell användning och adresseringsmodell. | Johan Eltes |
| - | PA11 | 2013-01-14 | Uppdaterat kap 5 och 6 med ny struktur. | Maria Andersson |
| - | PA12 | 2013-01-14 | Lagt till kap 7. | Maria Andersson |
| - | PA13 | 2013-01-20 | Uppdaterat efter beslut att hålla indexpostern på PDLenhetsnivå och använda SourceSystem för adressering. | Johan Eltes |
| - | PA14 | 2013-01-21 | Uppdaterat gemensamma informationskomponenter och tjänstebeskrivning | Fredrik Ström |
| - | PA15 | 2013-01-21 | Uppdaterat typerna med inledande versal. Ändrat från careRequest till Referral och från Answer till Outcome i kap 6. | Maria Andersson |
| - | PA16 | 2013-01-21 | Ändrat kardinaliteten på referral i kap 6. | Maria Andersson |
| - | PA17 | 2013-01-24 | Ändrat i tabellerna i kap 4, 5 och 6. | Maria Andersson |
| - | PA18 | 2013-01-25 | Ändrat i tabellerna i kap 4, 5 och 6. | Maria Andersson |
| - | PA19 | 2013-01-29 | Ändrat beskrivningar i kap 4, 5 och 6 samt ny struktur i kap 4. | Maria Andersson |
| - | PA20 | 2013-01-30 | Ändrat beskrivningar kap 4, 5.4 och 6.4. / Nya och uppdaterade typer kap 4, 5.4 och 6.4. | Fredrik Ström / Magnus Ekstrand |
| - | PA21 | 2013-01-31 | Ändringar i beskrivningar kap 4, 5, 6 och 7. | Maria Andersson |
| - | PA22 | 2013-01-31 | Ändringar i kap 7, GetCareContact | Maria Andersson |
| - | PA23 | 2013-02-07 | Justeringar av elementnamn och kardinalitet i kap 5, 6 och 7. / Tog bort ej använd gemensam komponent. | Magnus Ekstrand |
| - | PA24 | 2013-02-11 | Lagt till kap 8, GetDiagnosis | Maria Andersson de Vicente |
| - | PA25 | 2013-02-19 | Definierat krav på uppdatering av fältet mostRecentContent i EI-posten. | Johan Eltes |
| - | PA26 | 2013-03-01 | Lagt in beskrivning av personidentifierare under kap 3. | Maria Andersson de Vicente |
| - | PA27 | 2013-03-04 | Uppdaterat till careContactUnitid, careContactUnitName, careContactUnitAddress under 7.4. Uppdaterat beskrivningen av Author under 5.4, 6.4, 7.4 och 8.4. Ändrat Aderss till Postadress i hela dokumentet. | Maria Andersson de Vicente |
| - | PA28 | 2013-03-04 | Ändrat kardinalitet på CareContactUnit till 1..1 under 7.4. Lagt till authorOrgUnitHSAid och authorOrgUnitName. Ändrat kardinalitet på legalAuthenticatorHSAid till 0..1. Tagit bort information om signatur under 7.4. Lagt till sourceSystem. | Maria Andersson de Vicente |
| - | PA29 | 2013-03-05 | Lagt till nya sökparametrar för source system och care contact id. Lagt till authorOrgUnitAddress och tagit bort careUnitName. / Förtydligat skrivning om aggregerande tjänster samt lagt till scenariobeskrivning för sökning på careContactId / Överfört i ny tjänstedomän enligt anvisning från CeHis. | Johan Eltes |
| - | PA30 | 2013-03-11 | Specificerat kodverk för EI-postens Categorization-fält. / SLA-krav uppdaterade | Johan Eltes |
| - | PA31 | 2013-03-14 | Ändrat beskrivningen av DocumentTime | Maria Andersson de Vicente |
| - | PA32 | 2013-03-14 | - Preciserat lexikaliskt format för personnummer. / - Lagt till stöd för gamla dokumenttyper för att under en övergångsperiod underlätta för -bef. NPÖ-anslutningar. | Johan Eltes |
| - | PA33 | 2013-03-25 | - Uppdaterat beskrivning i GetCareDocumentation av tidsattribut. / - Ändrat format på MultiMediaEntry / - authorOtherRole tillagt. / - Tagit bort koppling mellan categorization-koden för EI och NPÖ:s kodverk. Koden ägs nu av denna tjänstedomän (ingen ändring av själva värdet). / - Ändrat elementnamnet sourceSystem till sourceSystemHSAid / - Förbättrat och utökat beskrivningen av adressering för att även täcka anrop utan aggregering. / - Uppdaterat semantik för ”Most Recent Content” (EI) | Fredrik Ström / Johan Eltes / Khaled Daham |
| - | PA34 | 2013-04-30 | Uppdaterat regelverk för EI-poster avseende fältet LogicalAddress (som nu är samma som för source system) / Lagt till regel enligt NPÖ RIV-spec för formattering av clinicalDocumentNoteText / Lagt till krav på uppdatering av EI-fältet DataController / Uppdaterat bilder och text i arkitekturavsnittet för att spegla ändring i EI-postens innehåll / Formatteringsproblem i dokumentet åtgärdade. | Johan Eltes |
| - | PA35 | 2013-09-21 | Uppdaterat sektionen om gemensamma typer. / Följduppdaterat tjänstekontraktsbeskrivningar / Lagt till information om avvikande åsikt till journalnotatet / Lagt till beskrivning av formattering av clinicalDocumentNoteText | Björn Genfors |
| - | PA36 | 2013-09-26 | Redaktionella ändringar (HSAId ska skrivas just så) | Björn Genfors |
| - | PA37 | 2013-09-30 | Åtgärdat ett par copy-paste-fel i skrivningen om docbook-formatet. / Förtydligat beskrivningen av opinionId | Johan Eltes |
| - | PB1 | 2013-10-09 | Tagit bort nullified från GetCareDocumentation / Satt kardinaliteten på healthcareProfessionalHSAId till 0..1. / Justerat läsbarheten i kontraktstabellen. | Björn Genfors |
| - | PB2 | 2013-10-15 | Förtydligat patientId i PatientSummaryHeader. | Björn Genfors |
| - | PB3 | 2013-10-17 | Korrigerat beskrivning av documentId i PatientSummaryHeader / Justerat beskrivning av adress i OrgUnitType. / Lagt till SourceSystem i Engagemangsindex. | Björn Genfors |
| - | PB4 | 2013-10-21 | Förtydligat kravet på filtrering av svar enligt logicalAddress (lagt till avsnitt 3.4). / Markerat i flödesmodeller att anslutningskatalog inte är del av dagens arkitektur. | Johan Eltes |
| - | PB5 | 2013-11-04 | Ersatt termen PDL-enhet med vårdenhet (i löpande text) / Uppdaterat avsnittet om informationssäkerhet efter CeHis-granskning | Johan Eltes |
| - | PB6 | 2013-11-25 | Lagt till text för tjänstekontrakten som deklarerar kompatibilitet med NPö RIV Spec och HL7 CDA. | Johan Eltes |
| - | PB7 | 2013-11-26 | Lagt till tjänstekontrakt för Diagnos / Lagt till tjänstekontrakt för Uppmärksamhetsinformation | Björn Genfors |
| - | PB8 | 2013-11-28 | Rättat namn på typer och djup på element för GetAlertInformation | Khaled Daham |
| - | PB9 | 2013-11-29 | Rättat versalisering på två element i diagnoskontraktet | Björn Genfors |
| - | PB10 | 2013-12-05 | Infört nytt element: chronicDiagnosis i GetDiagnosis / Ändrat elementnamn på relaterad diagnos-id i GetDiagnosis / Korrigerat format och kardinalitet på ingående element i validityTimePeriod i GetAlertInformation / Ändrat namn på ett fåtal element i GetAlertInformation (treatmentDescription, communicableDiseaseCode och restrictionOfCareComment är nya namnen) / Beskrivningar av ett fåtal fält har åtgärdats. | Björn Genfors |
| - | PB11 | 2013-12-10 | Bytt namn på elementet diagnosisType till typeOfDiagnosis | Björn Genfors |
| - | PB12 | 2013-12-11 | Förtydligat beskrivning av tidsparametern i begäran för GetAlertInformation | Björn Genfors |
| - | PB13 | 2013-12-11 | Lagt till kategorikoder för infomängder diagnos och uppmärksamhetsinformation / Ersatt beskrivningen av generella klasser med en referens till bilaga / Lagt till skrivning på orgunit-fält i alla typer och kontrakt om att lokalt id kan anges om HSA-id saknas i källsystemet. | Johan Eltes |
| - | PB14 | 2014-01-21 | Lagt till det nya kontraktet för reumatismdata. | Björn Genfors |
| - | PB15 | 2014-01-22 | Kontraktet för reumatismdata är flyttat till en egen domän: clinicalprocess.healthcond.rheuma | Björn Genfors |
| - | PB16 | 2014-01-23 | Ändrade serviceDomain ifrån logistics.logistics till healthcond.description | Khaled Daham |
| - | 2.1.RC2 | 2014-03-13 | Bytt dokumentationen till ny mall / Lagt till MIM-ar / Lagt till V-TIM-mappning / Uppdaterat arbetsflödesdiagram / Uppdaterat några av fältregelbeskrivningarna i GetDiagnosis och GetAlertInformation för att harmoniera med GetCareDocumentation / Förtydligat beskrivningen av vad diagnoskontraktet är tänkt att returnera (definitionen av ”diagnos”). / Ändrat ISO-referens för angivande av tid- och datumformat. | Björn Genfors |
| - | 2.1.RC3 | 2014-03-17 | Lagt till resultType för alla kontrakt i tabellen för fältregler / Lagt till en beskrivning för logiska fel i kap 4.4 / Förtydligat text kring adressering i kap 3.3 / Uppdaterat versionsnummer samt kompabilitetstabellen | Khaled Daham |
| 2.1 | RC4 | 2014-09-15 | Bytt dokumentationsmall / Korrigerat GCD att vara bakåtkompatibel med v 2.0 (elementnamnet sourceSystemHSAid behöver ett gement i). / Förtydligat dokumentation om begäran i GetDiagnosis och GetAlertInformation. / Lagt till kontraktet GetFunctionalStatus | Björn Genfors |
| 2.1 | RC4 | 2014-09-16 | Uppdaterat MIM för GetFunctionalStatus, samt referredInformation.type till string från URN | Khaled Daham |
| 2.1 | RC5 | 2014-09-18 | Rättat småfel i fältregellistan, bl.a kardinalitet för referredInformation från 0..* till 1..* | Khaled Daham |
| 2.1 | RC6 | 2014-10-02 | Åtgärdat kommentarer efter VIS-granskning. | Khaled Daham |
| 2.1 | RC7 | 2014-11-18 | Fixat stavfel / Lagt till Ineras HSAid för aggregerande tjänster. / sourceSystemHSAId krävs vid begäran på reservnummer | Khaled Daham |
| 2.1 | Rc7 | 2014-11-25 | Tagit bort alternativet att använda GetUpdates(index-pull) för EI då den inte är implementerad och det pågår diskussioner om att den skall tas bort ifrån TKB för EI. / Uppdaterat sekvensdiagram. / Ändrat skrivelse kring medarbetarens åtkomst till att peka på SOSFS 2008:14 istället för PDL-i-praktiken. / Förtydligat sambandet mellan categorization och assessmentCategory för GetFunctionalStatus | Khaled Daham |
| 2.1 | - | 2015-03-16 | Uppdaterat V-TIM-mappningskapitlet med korrigerade V-TIM-mappningar, och mappning mot NPÖ. / Korrigerat beskrivninge n av fältet padl/assessment i GFS. | Björn Genfors |
| 2.1.1 | - | 2015-03-31 | Tagit bort relation ifrån GetFunctionalStatus efter beslut av Inera | Khaled Daham |
| 2.1.2 | - | 2015-05-13 | Korrigerat HSA-id som skall användas vid addressering till Inera. | Khaled Daham |
| 2.1.3 | - | 2015-07-02 | Uppdaterat beskrivning av authorTime i headern. | Khaled Daham |
| 2.1.4 | - | 2015-09-16 | Korrigerat NPÖ-mappningar för två fält i GD och GAI | Björn Genfors |
| 2.1.4 | - | 2015-09-21 | Förtydligat att användning av clinicalDocumentTypeCode endast skall användas av 13606-adapters. | Khaled Daham |
| 2.1.4 | - | 2015-10-13 | Ändrad/rättat kardinalitet på pharmaceuticalTreatment från 0..1 till 0..* i fältregellistan samt i schemat. / Svarstider för SLA ändrat ifrån 15 sekunder till 30 sekunder | Khaled Daham |
| 2.1.4 | - | 2015-10-20 | Uppdaterat text kring KV Befattning för GetFunctionalStatus / Uppdaterat regelverk för inbäddade binära bilagor | Khaled Daham |
| 2.1.5 | - | 2015-11-27 | Uppdaterat fältet allvarlighetsgrad i GAI med information om att det föreslagna kodverket allvarlighetsgrad finns i två versioner. | Björn Genfors |
| 2.1.6 | - | 2016-02-23 | Uppdaterat beskrivningen för legalAuthenticator (när informationen har låsts utan signering) | Ranjdar Fallyih |
| 2.1.7 | - | 2017-04-18 | Förtydligat i kap 7.1.4 att nullified och nullifiedReason inte används https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/358/gcd-21-tkb-saknar-f-lten-om-makulering-i-f | Khaled Daham |
| 2.1.7 | - | 2017-04-19 | Testsviter uppdaterade | Björn Pettersson |
| 2.1.8 | - | 2017-06-21 | Testsviter och självdeklaration uppdaterade | Magnus Söderlind |
| 2.1.9 | - | 2017-08-07 | Uppdaterat beskrivning av fält clinicalDocumentNoteText samt multimediaEntry https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/374/getcaredocumentation-tvetydig-semi | Khaled Daham |
| 2.1.9 | - | 2017-08-11 | Förtydligat actSubstance och lagt till element som ej skall användas, https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/369/getalertinformation-20-felaktig-cvtype / Förtydligat att låsning skall signaleras på samma sätt som det görs i getCareDocumentation för getDiagnosis, getFunctionalStatus, getAlertInformation / https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/377 / Förtydligat användning av relatedDiagnosis https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/373/fr-gor-ang-ende-tolkning-av | Khaled Daham |
| 2.1.9 | - | 2017-08-11 | Testsviter/självdeklarationer utökade och uppdaterade. | Magnus Söderlind |
| 2.1.10 | - | 2018-01-19 | Rättat beskrivning av timePeriod i GetDiagnosis och datePeriod i GetFunctionalStatus https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/380/felaktig-beskrivning-av-dateperiod-i-tkb | Emmy Damberg |
| 2.1.10 | - | 2018-10-05 | Uppdateringar i SJD och testförbättringar i testsviter, framförallt tidsfiltrering. Testsvit 7,8 tillkommer. | Magnus Söderlind |
| 2.1.10 | - | 2019-03-25 | Lagt till SjD för konsument och uppdaterat mock | Jan Söderman |
| 2.1.10 | - | 2019-04-03 | Rättat kardinalitet för ../start och ../end i GetFunctionalStatus / https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/384/kardinalitet | Malin Lindberg |
| 2.1.11 | - | 2019-05-02 | Ny testsvit och självdeklaration | Jan Söderman |
| 2.1.12 | - | 2020-03-30 | Regelförtydligande av HSA-id för / vårdgivare och vårdenhet. / Rättning av kardinalitet till 0..1 för elementen healthcareProfessionalCareUnitHSAId samt healthcareProfessionalCareGiverHSAId i GCD som felaktigt var satt till 1..1 i TKB. / Flyttat ut regler i fältreglerna till Övriga regler. / Uppdaterar gamla länkar i referenslistan. / Tagit bort mappningar mot NPÖ och V-TIM från mappningstabellerna för respektive tjänstekontrakt samt övriga referenser till mappningen, efter A&R beslut om att mappningar ska tas bort. / Förtydligat regel i GFS för elemten ../../../disabilityAssessment och ../../../comment / Ändrat användning av vård- och omsorg (tex vård och omsorgspersonal) till hälso- och sjukvård (tex hälso- och sjukvårdspersonal). | Maja Hedengren |
| 2.1.13 | - | 2020-11-25 | Uppdaterat versionsnummer | Claudia Ehrentraut |
| 2.1.14 | - | 2020-11-25 / 2020-12-02 | Förtydligat information om DocBook-formatet under avsnitt 7.1.3 och i beskrivningstexten för attributet clinicalDocumentNoteText samt uppdaterat referenser för DocBookformatet. / Byt ut alla förekomster av skall till ska och förekomster av oid till OID. / Bytt ut SOAP-Exception till Soap Fault, enligt https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/381/byt-till-soap-fault / Förtydligat skrivning under avsnitt 4.3 Icke funktionella krav om hur dubbletter i olika verksamhetssystem ska hanteras samt lagt till referens till ARK_0040. / Bytt namn av kodverket KV Befattning till Befattning, resp. KV Sambandstyp till KV Samband för att stämma överens med benämningarna på https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655/Kodverk+i+nationella+tj+nstekontrakt OBS! Det är samma kodverk som avses i båda fall. / Uppdaterat länk för referens R13 till https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655/Kodverk+i+nationella+tj+nstekontrakt / Lagt till referens till kodverkslistan [R13] för Snomed, ICD10, och ATC, KV Samband / Tagit bort referens R14 Internationell klassifikation av funktionstillstånd, funktionshinder och hälsa (ICF) eftersom ICF listas på kodverkslistan som refereras till i R13. / Lagt till ny R14 som är en referens till Listan över identifierare. / Lagt till referens till Listan över identifierare [R14] för personnummer, samordningsnummer och SLL-reservnummer. / Uppdaterat beskrivning av documentId i PatientSummaryHeader / Ändrat multiplicitet för orgUnitHSAId och orgUnitName från 0..1 till 1..1 för att stämma överens med schemat/testsviter i GetDiagnosis, GetAlertInformation och GetFunctionalStatus (GetCareDocumentation var redan korrekt satt till 1..1), utifrån https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/387/uppt-ckt-fel-i-wsdl-och-soapui-testsvit-f / Rättat rubriknivåer under 3.1 Flöden | Claudia Ehrentraut |
| 2.1.15 | - | 2021-02-01 | Förtydligat regel 2 för GetFunctionalStatus. / Uppdaterat attributbeskrivningen för headerId (dvs documentId i PatientSummaryHeaderType) i samtliga tjänstekontrakt för domänen. / Uppdaterat versionsinformation | Tobias Blomberg / Claudia Ehrentraut |
| 2.1.16 | - | 2021-05-24 | Uppdaterat beskrivningarna för domänen respektive varje tjänstekontrakt. / Uppdaterat beskrivningen för attributet MostRecentContent unde avsnitt 4.1 / Uppdaterat beskrivningen av tidsfiltrering i samtliga tjänstekontrakt. | Tobias Blomberg |
| 2.1.17 | RC1 | 2022-01-11 / 2022-03-18 | Ändrat multiplicitet för careDocumentation/careDocumentationHeader/documentTime i GCD till valfritt för att stämma överens med schemat. / Uppdaterat beskrivningen för elementet sourceSystemHSAId i begäran för samtliga kontrakt i domänen. | Tobias Blomberg |
| 2.1.17 | - | 2022-03-22 | Version godkänd | Tobias Blomberg |
| 2.1.18 | RC1 | 2022-11-29 / 2023-01-10 | Uppdaterat beskrivningen för attributet alertInformationType i getAlertInformation enligt TJN-291 / Lagt till regel 2 under övriga regler i getAlertInformation / Tagit bort denna text från attributet legalAuthenticator ur samtliga tjänstekontrakt: / ”I de fall där informationen har låsts utan signering, representeras detta genom att signatureTime sätts till tidpunkten för låsning, och resterande fält i LegalAuthenticatorType lämnas tomma.”. / Detta då det enligt SOSFS 2016:40 ska det ej längre finnas möjlighet att låsa osignerade journalanteckningar / Uppdaterat samtliga beskrivningar av CVType för att tydliggöra regler gällande hur de olika elementen i typen relaterar till varandra. Reglerna finns redan beskrivna i schematron. | Tobias Blomberg |
| 2.1.18 | - | 2023-02-03 | Version godkänd | Tobias Blomberg |

