
|  | clinicalprocess_healthcond_description / Version 2.1.18 / ARK_0015 / 2023-02-03 |
| :--- | :--- |
Innehåll
Innehåll	2
Revisionshistorik	5
Referenser	17
Förkortningar	18
1	Inledning	19
1.1	Svenskt namn	19
1.2	Beskrivning	19
2	Versionsinformation	20
2.1	Version 2.1.18	20
2.1.1	Oförändrade tjänstekontrakt	20
2.1.2	Nya tjänstekontrakt	20
2.1.3	Förändrade tjänstekontrakt	20
2.1.4	Utgångna tjänstekontrakt	20
2.2	Version tidigare	20
3	Tjänstedomänens arkitektur	21
3.1	Flöden	21
3.1.1	Arbetsflöde	22
3.1.2	Sekvensdiagram	24
3.1.3	Obligatoriska kontrakt	25
3.2	Adressering	25
3.2.1	Sammanfattning av adresseringsmodell	25
3.3	Aggregering och engagemangsindex	25
4	Tjänstedomänens krav och regler	27
4.1	Uppdatering av engagemangsindex	27
4.2	Informationssäkerhet och juridik	29
4.2.1	Medarbetarens direktåtkomst	29
4.2.2	Patientens direktåtkomst	30
4.2.3	Generellt	30
4.3	Icke funktionella krav	30
4.3.1	SLA krav	30
4.3.2	Övriga krav och regler	31
4.4	Felhantering	32
4.4.1	Krav på en tjänsteproducent	32
4.4.2	Krav på en tjänstekonsument	32
5	Gemensamma informationskomponenter	33
6	Tjänstedomänens meddelandemodeller	34
6.1	MIM Hälso- och sjukvårds dokument	34
6.2	MIM Diagnos	37
6.3	MIM Uppmärksamhetsinformation	40
6.4	MIM Funktionsstatus	44
7	Tjänstekontrakt	47
7.1	GetCareDocumentation	47
7.1.1	Version	47
7.1.2	Gemensamma informationskomponenter	47
7.1.3	DocBook-format för clinicalDocumentNoteText-fältet	47
7.1.4	Fältregler	49
7.1.5	Övriga regler	57
7.2	GetDiagnosis	58
7.2.1	Version	58
7.2.2	Gemensamma informationskomponenter	58
7.2.3	Fältregler	58
7.2.4	Övriga regler	64
7.3	GetAlertInformation	65
7.3.1	Version	65
7.3.2	Gemensamma informationskomponenter	65
7.3.3	Fältregler	65
7.3.4	Övriga regler	81
7.4	GetFunctionalStatus	83
7.4.1	Version	83
7.4.2	Gemensamma informationskomponenter	83
7.4.3	Fältregler	83
7.4.4	Övriga regler	91
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av |
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
| 2.1.12 | - | 2020-03-30 | Regelförtydligande av HSA-id för / vårdgivare och vårdenhet. / Rättning av kardinalitet  till 0..1 för elementen healthcareProfessionalCareUnitHSAId samt healthcareProfessionalCareGiverHSAId i GCD som felaktigt var satt till 1..1 i TKB. / Flyttat ut regler i fältreglerna till Övriga regler. / Uppdaterar gamla länkar i referenslistan. / Tagit bort mappningar mot NPÖ och V-TIM från mappningstabellerna för respektive tjänstekontrakt samt övriga referenser till mappningen, efter A&R beslut om att mappningar ska tas bort. / Förtydligat regel i GFS för elemten ../../../disabilityAssessment och ../../../comment / Ändrat användning av vård- och omsorg (tex vård och omsorgspersonal) till hälso- och sjukvård (tex hälso- och sjukvårdspersonal). | Maja Hedengren |
| 2.1.13 | - | 2020-11-25 | Uppdaterat versionsnummer | Claudia Ehrentraut |
| 2.1.14 | - | 2020-11-25 / 2020-12-02 | Förtydligat information om DocBook-formatet under avsnitt 7.1.3 och i beskrivningstexten för attributet clinicalDocumentNoteText samt uppdaterat referenser för DocBookformatet. / Byt ut alla förekomster av skall till ska och förekomster av oid till OID. / Bytt ut SOAP-Exception till Soap Fault, enligt https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/381/byt-till-soap-fault / Förtydligat skrivning under avsnitt 4.3 Icke funktionella krav om hur dubbletter i olika verksamhetssystem ska hanteras samt lagt till referens till ARK_0040. / Bytt namn av kodverket KV Befattning till Befattning, resp. KV Sambandstyp till KV Samband för att stämma överens med benämningarna på https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655/Kodverk+i+nationella+tj+nstekontrakt OBS! Det är samma kodverk som avses i båda fall. / Uppdaterat länk för referens R13 till https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655/Kodverk+i+nationella+tj+nstekontrakt / Lagt till referens till kodverkslistan [R13] för Snomed, ICD10, och ATC, KV Samband / Tagit bort referens R14 Internationell klassifikation av funktionstillstånd, funktionshinder och hälsa (ICF) eftersom ICF listas på kodverkslistan som refereras till i R13. / Lagt till ny R14 som är en referens till Listan över identifierare. / Lagt till referens till Listan över identifierare [R14] för personnummer, samordningsnummer och SLL-reservnummer. / Uppdaterat beskrivning av documentId i PatientSummaryHeader / Ändrat multiplicitet för orgUnitHSAId och orgUnitName från 0..1 till 1..1 för att stämma överens med schemat/testsviter i GetDiagnosis, GetAlertInformation och GetFunctionalStatus (GetCareDocumentation var redan korrekt satt till 1..1), utifrån https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues/387/uppt-ckt-fel-i-wsdl-och-soapui-testsvit-f / Rättat rubriknivåer under 3.1 Flöden | Claudia Ehrentraut |
| 2.1.15 | - | 2021-02-01 | Förtydligat regel 2 för GetFunctionalStatus. / Uppdaterat attributbeskrivningen  för headerId (dvs documentId i PatientSummaryHeaderType) i samtliga tjänstekontrakt för domänen. / Uppdaterat versionsinformation | Tobias Blomberg
Claudia Ehrentraut |
| 2.1.16 | - | 2021-05-24 | Uppdaterat beskrivningarna för domänen respektive varje tjänstekontrakt. / Uppdaterat beskrivningen för attributet MostRecentContent unde avsnitt 4.1 / Uppdaterat beskrivningen av tidsfiltrering i samtliga tjänstekontrakt. | Tobias Blomberg |
| 2.1.17 | RC1 | 2022-01-11 / 2022-03-18 | Ändrat multiplicitet för careDocumentation/careDocumentationHeader/documentTime i GCD till valfritt för att stämma överens med schemat. / Uppdaterat beskrivningen för elementet sourceSystemHSAId i begäran för samtliga kontrakt i domänen. | Tobias Blomberg |
| 2.1.17 | - | 2022-03-22 | Version godkänd | Tobias Blomberg |
| 2.1.18 | RC1 | 2022-11-29 / 2023-01-10 | Uppdaterat beskrivningen för attributet alertInformationType i getAlertInformation enligt TJN-291 / Lagt till regel 2 under övriga regler i getAlertInformation / Tagit bort denna text från attributet legalAuthenticator ur samtliga tjänstekontrakt: / ”I de fall där informationen har låsts utan signering, representeras detta genom att signatureTime sätts till tidpunkten för låsning, och resterande fält i LegalAuthenticatorType lämnas tomma.”. / Detta då det enligt SOSFS 2016:40 ska det ej längre finnas möjlighet att låsa osignerade journalanteckningar / Uppdaterat samtliga beskrivningar av CVType för att tydliggöra regler gällande hur de olika elementen i typen relaterar till varandra. Reglerna finns redan beskrivna i schematron. | Tobias Blomberg |
| 2.1.18 | - | 2023-02-03 | Version godkänd | Tobias Blomberg |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | AB_clinicalprocess_healthcond_description | Obligatoriskt | Bilaga |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Bilaga Mappningar_GetCareDocumentation.xslx | - | Bilaga |
| R4 | Bilaga Mappningar_GetDiagnosis.xslx | - | Bilaga |
| R5 | Bilaga Mappningar_GetAlertInformation.xslx | - | Bilaga |
| R6 | ISO8601-standarden för tidsformat | Finns på Webben | http://en.wikipedia.org/wiki/ISO_8601 |
| R7 | RIV Tekniska  Anvisningar / Översikt. Version 2.0.4 | Finns på Webben | http://rivta.se/documents/ARK_0001/ |
| R8 | Tabell över godkända tjänstedomäner | Finns på Webben | http://rivta.se/domains/ |
| R9 | Senaste version av SOSFS 2016:40 Socialstyrelsens föreskrifter och allmänna råd om journalföring och behandling av personuppgifter i hälso- och sjukvården | Finns på Webben | https://www.socialstyrelsen.se/kunskapsstod-och-regler/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso--och-sjukvarden/ |
| R10 | Journalföring och behandling av personuppgifter i hälso- och sjukvården - Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården. | Finns på Webben | https://www.socialstyrelsen.se/globalassets/sharepoint-dokument/artikelkatalog/foreskrifter-och-allmanna-rad/2016-4-44.pdf |
| R11 | DocBook | Finns på Webben | https://docbook.org/ / https://docbook.org/schemas/ / https://docbook.org/tools/ |
| R12 | Apache Commons Text StringEscapeUtils | Finns på Webben | https://commons.apache.org/proper/commons-text/apidocs/org/apache/commons/text/StringEscapeUtils.html |
| R13 | Kodverkslistan | Finns på Webben | https://inera.atlassian.net/wiki/spaces/KINT/pages/2648506471/Kodverk+och+urval+i+de+nationella+tj+nstekontrakten |
| R14 | Lista över identifierare | Finns på Webben | https://inera.atlassian.net/wiki/spaces/KINT/pages/468746902/Identifierare+i+nationella+tj+nstekontrakt |
| R15 | Bilaga Gemensamma_typer_7.pdf | - | Bilaga |
| R16 | RIV Tekniska Anvisningar - Binära bilagor | Finns på Webben | http://rivta.se/documents/ARK_0038/ |
| R17 | RIV Tekniska Anvisningar - Parallella huvudversioner av ett tjänstekontrakt | Finns på Webben | http://rivta.se/documents/ARK_0040/ |
| R18 | ADL-Taxonomin® – en bedömning av aktivitetsförmåga | - | https://www.arbetsterapeuterna.se/foerbundet/webbutik-och-gratismaterial/adl-taxonomin-en-bedoemning-av-aktivitetsfoermaaga/?gclid=CjwKCAiAi_D_BRApEiwASslbJydARYULhS7YIycf5gdsOw9jqCQRMO27Npd8ouxMFl5u_QrHhqbUahoC0gAQAvD_BwE |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| K | Tjänstekonsument | Se referens R7 |
| P | Tjänsteproducent | Se referens R7 |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
clinicalprocess: healthcond: description
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den ska fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Vård- och omsorg kärnprocess:hantera hälsorelaterade tillstånd:tillståndsbeskrivning
Tillståndsbeskrivning

### Beskrivning
Denna domän hantera information som beskriver patientens hälsotillstånd, till exempel vårdanteckningar, diagnoser, uppmärksamhetsinformation och funktionsstatus. Domänen syftar till att tillmötesgå vårdprofessionens behov av direktåtkomst till patientens vårdinformation (så kallad sammanhållen journalföring) såväl som patientens egen åtkomst till sin vårdinformation.
Tjänstekontrakten i denna domän hanterar specifikt patientens journalanteckningar, och klinisk information som beskriver patientens hälsotillstånd, exempelvis vårdanteckningar, diagnoser, uppmärksamhetsinformation (som innefattar bland annat allvarliga allergier och allvarliga sjukdomar) samt funktionsstatus. Domänens kontrakt stödjer tjänsteinteraktioner där konsumenten är i behov av att läsa informationen från ett eller flera källsystem.

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

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetCareDocumentation | 2.1 | 2.0 | OK |
| GetCareDocumentation | 2.0 | 2.1 | Ej kompatibel |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
2.1.17

## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Tjänsterna för beskrivning av hälsorelaterade tillstånd erbjuder sökning av information i hälso- och sjukvårdsgivarnas system för patientadministration och vårddokumentation. Utgångspunkten för tjänsterna i denna tjänstedomän är i första hand patientens och professionens behov av direktåtkomst till en patients hälso- och sjukvårdshistorik sett ur ett nationellt eller ett regionalt perspektiv. I båda fallen är syftet att historisk information sammanställs från det eller de källsystem där det finns historik via s.k. aggregerande tjänster, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det specifika systemet, istället för den aggregerande tjänsten.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna.

### Flöden
Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras.

#### Arbetsflöde

![img_006.png](images/img_006.png)
*Figur 1 Exempel: Adressering vid anrop till aggregerande tjänst från patienttjänst (t.ex. från Mina Vårdkontakters tjänst för journalåtkomst).*

![img_005.png](images/img_005.png)
*Figur 2 Exempel: Adressering vid anrop till aggregerande vårdgivartjänst (t.ex. från NPÖ-tillämpningen).*

##### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Patienten | Den patient som vill få tillgång till information som tjänsterna tillhandahåller. |
| Professionen | Den hälso- och sjukvårdsperson som vill få tillgång till patientens data. |

#### Sekvensdiagram

![img_003.png](images/img_003.png)
*Figur 3 Sekvensdiagram över sökning efter information där GetAlertInformation används som exempel men samma princip gäller för alla kontrakt i tjänstedomänen, diagrammet visar på två alternativa sekvenser där det första alternativet gäller när aggregerande tjänster adresseras och det andra alternativet gäller när källsystemet adresseras.*

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Aggregerande tjänst | En aggregerande tjänst är en integrationstjänst som för en tjänstekonsument sammanställer en nationell vy av informationen av den typ som är aktuell för tjänsten i fråga. Är beroende av engagemangsindex för att begränsa sökningen till relevanta informationsägare. |
| Engagemangsindex | En tjänst där det finns uppdaterade nationella index över vilka informationsägare som har information kring en viss invånare/patient. |
| Vårdinformationssystem | Det system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

#### Obligatoriska kontrakt
Domänen definierar inga flöden och har därmed inga obligatoriska kontrakt att uppfylla.

### Adressering
Tjänstedomänen tillämpar källsystem-adressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA-id. Det sker genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSA-id finns då i svarsmeddelandet) eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direktadressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten.
Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt, Rev E, avsnitt 8.3, där mer information kan hittas.

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| Nationellt | Ineras HSA-id: 5565594230 |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

### Aggregering och engagemangsindex
Det behövs en aggregerande tjänst för varje tjänstekontrakt som läser data i denna domän.
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystemets HSA-id anges som logisk adress, kommer frågemeddelandet att dirigeras vidare direkt till källsystemet utav tjänsteplattformen utan att passera en aggregerande tjänst.
Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex – vidarebefordrar frågan till de källsystem som har information om patienten.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Uppdatering av engagemangsindex
Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.
All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet
urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”).
Ladda hem engagemangsindex WSDL (se referens [R8]), scheman och tjänstekontraktsbeskrivning för detaljer.
Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| Attribut | Beskrivning | Format | Kardinalitet | Kodverk/värde-mängd 
/ev begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens person-nummer | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). | 1..1 |  | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän1>:<underdomän2> | 1..1 | ”riv:clinicalprocess:healthcond:description” | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Informationsmängd enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Samma värde som fältet Source System. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – d.v.s. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Tidpunkt för senaste uppdatering av den informationstyp och patient i den källa som denna indexpost avser. | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttag. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. post uppdateras med tidpunkt för borttagshändelsen. |  |
| Creation / Time | Tidpunkten då index-posten registrerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Upp-datering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Källsystemet som genererade engagemangs-posten via Update-tjänsten | Källsystemets HSA-id.  För system-adresserade tjänstedomäner motsvarar detta LogicalAddress vid anrop till tjänster i tjänstedomänen i fråga. Detta är inte anslutningspunktens HSA-id utan systemet som operativt hanterar originalinformationen i verksamheten. | 1..1 | Systemadressering tillämpas. Detta värde används som LogicalAddress vid tjänsteanrop. | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Vårdgivarens organisationsnummer eller HSA-id / eller inom källsystemet unik identifierare för vårdgivaren. | 1..1 | ”SE”<organisationsnummer>. Exempel: ”SE5565594230” eller HSA-id, eller / systemspecifik identitet. | Del av instansens unikhet |
Regler för tilldelning av värde i fältet Categorization i engagemangsposten för tjänstekontrakt i denna domän.
En tjänsteproducent av GetFunctionalStatus måste använda samma värde för categorization i en Update som för elementet assessmentCategory i svaret.

| Informationsmängd enligt Tjänstekontrakt | Värde på Categorization |
| :--- | :--- |
| GetCareDocumentation | voo |
| GetDiagnosis | dia |
| GetAlertInformation | upp |
| GetFunctionalStatus – funktionsnedsättning | fun-fun |
| GetFunctionalStatus – PADL | pad-pad |

### Informationssäkerhet och juridik

#### Medarbetarens direktåtkomst
Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till sammanhållen journal för att patientdatalagen efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke, vårdrelation och åtkomstloggning måste följas. Dessutom finns krav från datainspektionen om ytterligare teknisk åtkomstkontroll.
HSLF-FS 2016:40 [R9] ställer också krav (via handboken "Journalföring och behandling av personuppgifter i hälso- och sjukvården" [R10]) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet).
Det kompletta regelverket finns i handboken samt i anvisningar för tillgänglig patient.
Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande sammanhållen journalföring och eller krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vårdgivare (sammanhållen journalföring) eller andra vårdenheter inom egna vårdgivaren (spärrkrav).

#### Patientens direktåtkomst
Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten (informationsägaren) godkänt att informationen får visas för patient. Det kan t.ex. ha skett genom menprövning eller rådrum. För vissa tjänstekontrakt, såsom hälso- och sjukvårdskontakter, kanske informationsägaren policymässigt har menprövat all information. Det är varje vårdgivares ansvar att tjänsteproducenten sätter ”kan visas för patient”-flaggan i enlighet med vårdgivarens verksamhetsregler.

#### Generellt
Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens (tjänstens) identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument varit exkluderade i frågan.

### Icke funktionella krav
Det är den informationsproducerande vårdgivarens ansvar att endast ett källsystem tillhandahåller informationen via lästjänst och engagemangsindex där patientdata lagras i flera källsystem. Konsumenter som är anslutna till flera majorversioner av samma kontrakt måste hantera dubblettborttagning mellan dessa. Detta sker genom att jämföra identiteter på postnivå och endast behålla en av de poster som returnerats, se referens [R17].

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | Svarstiden för ett anrop får inte överstiga 30 sekunder. |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet journaluppdatering per dygn. |  |
| Aktualitet | Kraven på aktualitet varierar för olika tjänstekonsumenter. Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. Fördröjningen avser både journaldata och uppdatering av engagemangsindex. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. |  |
| Robusthet | Om tidsintervall inte angivits i frågan kan tjänsteproducenten välja att lämna ett delsvar i syfte att uppfylla svarstidskravet. Delsvaret måste då vara avgränsat i tiden genom att det finns äldre men inte nyare data än det äldsta som returnerats. |  |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. |  |

#### Övriga krav och regler

##### Gemensamma konsumentregler
R1: Filtrera enligt flagga ”approvedForPatient”
R2: Tillämpa regelverk enl. PDL

##### Gemensamma producentregler
R3: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.

##### Format för datum och tidpunkter
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar ISO 8601-kompatibla formatbeskrivningen ”YYYYMMDD”.
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

##### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Vid ett logiskt fel ska result.resultCode sättas till ERROR och result.errorCode enligt nedanstående tabell, om result.message innehåller ett meddelande så ska det vara sådant att det kan visas för en användare. Respektive kontrakt beskriver närmare vilka logiska fel som ska returneras.

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| Ogiltig begäran | INVALID_REQUEST | Informationsmängden som skickats är ej korrekt utifrån de regler som gäller för tjänstekontraktet. En förklarande result.message kan närmare peka på vilken regel som ej efterföljts. / En omsändning av information kommer att ge samma fel. |

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (Soap Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga krav på konsument.

##### Tekniska fel
Inga krav på konsument.

## Gemensamma informationskomponenter
I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa meddelanden i flera domäner eller inom denna domän. Observera att med anledning av att tjänstekontrakten även kan stödjas av producentsystem som saknar (fullständig) HSA-id-information så är HSA-id-attribut i beskrivningarna nedan valfria. Se även avsnittet ”Informationssäkerhet och juridik” ovan.
De gemensamma typerna beskrivs i bilaga/bilagor med namn ”Bilaga Gemensamma_typer_<version>.pdf”. Hänvisad <version> anges vid respektive tjänstekontrakt i kapitlet Tjänstekontrakt.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### MIM Hälso- och sjukvårds dokument

![img_008.png](images/img_008.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| CareDocumentationType |  |
| CareDocumentationHeaderType.documentId | careDocumentation/careDocumentationHeader/documentId |
| CareDocumentationHeaderType.sourceSystemHSAId | careDocumentation/careDocumentationHeader/sourceSystemHSAId |
| CareDocumentationHeaderType.patientId | careDocumentation/careDocumentationHeader/patientId |
| CareDocumentationHeaderType.accountableHealthcareProfessional | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional |
| AccountableHealthcareProfessionalType.authorTime | careDocumentation/careDocumentationHeader/ accountableHealthcareProfessional /authorTime |
| AccountableHealthcareProfessionalType.healthcareProfessionalHSAId | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| AccountableHealthcareProfessionalType.healthcareProfessionalName | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| AccountableHealthcareProfessionalType.healthcareProfessionalRoleCode | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalOrgUnitType.orgUnitHSAId | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalOrgUnitType.orgUnitname | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| HealthcareProfessionalOrgUnitType.orgUnitTelecom | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalOrgUnitType.orgUnitEmail | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalOrgUnitType.orgUnitAddress | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalOrgUnitType.orgUnitLocation | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| AccountableHealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| AccountableHealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | careDocumentation/careDocumentationHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.legalAuthenticatorTime | careDocumentation/careDocumentationHeader/legalAuthenticator/legalAuthenticatorTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | careDocumentation/careDocumentationHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | careDocumentation/careDocumentationHeader/legalAuthenticator/legalAuthenticatorName |
| CareDocumentationHeaderType.approvedForPatient | careDocumentation/careDocumentationHeader/approvedForPatient |
| CareDocumentationHeaderType.careContactId | careDocumentation/CareDocumentationHeader/careContactId |
| CareDocumentationBodyType |  |
| ClinicalDocumentNoteType.clinicalDocumentNoteCode | careDocumentation/careDocumentationBody/clinicalDocument/clinicalDocumentNoteCode |
| ClinicalDocumentNoteType.clinicalDocumentTypeCode | careDocumentation/careDocumentationBody/clinicalDocument/clinicalDocumentTypeCode |
| ClinicalDocumentNoteType.clinicalDocumentNoteTitle | careDocumentation/careDocumentationBody/clinicalDocument/clinicalDocumentNoteTitle |
| ClinicalDocumentNoteType.clinicalDocumentNoteText | careDocumentation/careDocumentationBody/clinicalDocument/clinicalDocumentNoteText |
| MultimediaEntryType.mediaType | careDocumentation/careDocumentationBody/clinicalDocument/multimediaEntry/mediaType |
| MultimediaEntryType.value | careDocumentation/careDocumentationBody/clinicalDocument/multimediaEntry/value |
| MultimediaEntryType.reference | careDocumentation/careDocumentationBody/clinicalDocument/multimediaEntry/reerence |
| DissentingOpinionType.opinionId | careDocumentation/careDocumentationBody/clinicalDocument/dissentingOpinion/opinionId |
| DissentingOpinionType.authorTime | careDocumentation/careDocumentationBody/clinicalDocument/dissentingOpinion/authorTime |
| DissentingOpinionType.opinion | careDocumentation/careDocumentationBody/clinicalDocument/dissentingOpinion/opinion |
| DissentingOpinionType.personId | careDocumentation/careDocumentationBody/clinicalDocument/dissentingOpinion/personId |
| DissentingOpinionType.personName | careDocumentation/careDocumentationBody/clinicalDocument/dissentingOpinion/personName |

### MIM Diagnos

![img_001.png](images/img_001.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| diagnosis |  |
| DiagnosisHeaderType.documentId | diagnosis/diagnosisHeader/documentId |
| DiagnosisHeaderType.sourceSystemHSAId | diagnosis/diagnosisHeader/sourceSystemHSAId |
| DiagnosisHeaderType.patientId | diagnosis/diagnosisHeader/patientId |
| DiagnosisHeaderType.accountableHealthcareProfessional | diagnosis/diagnosisHeader/accountableHealthcareProfessional |
| AccountableHealthcareProfessionalType.authorTime | diagnosis/diagnosisHeader/ accountableHealthcareProfessional /authorTime |
| AccountableHealthcareProfessionalType.healthcareProfessionalHSAId | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| AccountableHealthcareProfessionalType.healthcareProfessionalName | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| AccountableHealthcareProfessionalType.healthcareProfessionalRoleCode | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalOrgUnitType.orgUnitHSAId | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalOrgUnitType.orgUnitname | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| HealthcareProfessionalOrgUnitType.orgUnitTelecom | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalOrgUnitType.orgUnitEmail | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalOrgUnitType.orgUnitAddress | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalOrgUnitType.orgUnitLocation | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| AccountableHealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| AccountableHealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.legalAuthenticatorTime | diagnosis/diagnosisHeader/legalAuthenticator/legalAuthenticatorTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | diagnosis/diagnosisHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | diagnosis/diagnosisHeader/legalAuthenticator/legalAuthenticatorName |
| DiagnosisHeaderType.approvedForPatient | diagnosis/diagnosisHeader/approvedForPatient |
| DiagnosisHeaderType.careContactId | diagnosis/diagnosisHeader/careContactId |
| DiagnosisBodyType |  |
| DiagnosisBodyType.typeOfDiagnosis | diagnosis/diagnosisBody/typeOfDiagnosis |
| DiagnosisBodyType.chronicDiagnosis | diagnosis/diagnosisBody/chronicDiagnosis |
| DiagnosisBodyType.diagnosisTime | diagnosis/diagnosisBody/diagnosisTime |
| DiagnosisBodyType.diagnosisCode | diagnosis/diagnosisBody/diagnosisCode |
| RelatedDiagnosisType.documentId | diagnosis/diagnosisBody/relatedDiagnosis/documentId |

### MIM Uppmärksamhetsinformation

![img_004.png](images/img_004.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| AlertInformationType |  |
| AlertInformationHeaderType.documentId | alertInformation/alertInformationHeader/documentId |
| AlertInformationHeaderType.sourceSystemHSAId | alertInformation/alertInformationHeader/sourceSystemHSAId |
| AlertInformationHeaderType.patientId | alertInformation/alertInformationHeader/patientId |
| AlertInformationHeaderType.accountableHealthcareProfessional | alertInformation/alertInformationHeader/accountableHealthcareProfessional |
| AccountableHealthcareProfessionalType.authorTime | alertInformation/alertInformationHeader/ accountableHealthcareProfessional /authorTime |
| AccountableHealthcareProfessionalType.healthcareProfessionalHSAId | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| AccountableHealthcareProfessionalType.healthcareProfessionalName | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| AccountableHealthcareProfessionalType.healthcareProfessionalRoleCode | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalOrgUnitType.orgUnitHSAId | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalOrgUnitType.orgUnitname | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| HealthcareProfessionalOrgUnitType.orgUnitTelecom | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalOrgUnitType.orgUnitEmail | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalOrgUnitType.orgUnitAddress | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalOrgUnitType.orgUnitLocation | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| AccountableHealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| AccountableHealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.legalAuthenticatorTime | alertInformation/alertInformationHeader/legalAuthenticator/legalAuthenticatorTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | alertInformation/alertInformationHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | alertInformation/alertInformationHeader/legalAuthenticator/legalAuthenticatorName |
| AlertInformationHeaderType.approvedForPatient | alertInformation/alertInformationHeader/approvedForPatient |
| AlertInformationHeaderType.careContactId | alertInformation/alertInformationHeader/careContactId |
| AlertInformationBodyType |  |
| AlertInformationBodyType.typeOfAlertInformation | alertInformation/alertInformationBody/typeOfAlertInformation |
| AlertInformationBodyType.ascertainedDate | alertInformation/alertInformationBody/ascertainedDate |
| AlertInformationBodyType.verifiedTime | alertInformation/alertInformationBody/verifiedTime |
| AlertInformationBodyType.validityTimePeriod | alertInformation/alertInformationBody/validityTimePeriod |
| AlertInformationBodyType.alertInformationComment | alertInformation/alertInformationBody/alertInformationComment |
| AlertInformationBodyType.obsoleteTime | alertInformation/alertInformationBody/obsoleteTime |
| AlertInformationBodyType.obsoleteComment | alertInformation/alertInformationBody/obsoleteComment |
| HypersensitivityType.typeOfSensitivity | alertInformation/alertInformationBody/hyperSensitivity/typeOfSensitvity |
| HypersensitivityType.degreeOfSeverity | alertInformation/alertInformationBody/hyperSensitivity/degreeOfSeverity |
| HypersensitivityType.degreeOfCertainty | alertInformation/alertInformationBody/hyperSensitivity/degreeOfCertainty |
| PharmaceuticalHypersensitivityType.atcSubstance | alertInformation/alertInformationBody/hyperSensitivity/pharmaceuticalHypersensitivity/atcSubstance |
| PharmaceuticalHypersensitivityType.nonATCSubstance | alertInformation/alertInformationBody/hyperSensitivity/pharmaceuticalHypersensitivity/nonATCSubstance |
| PharmaceuticalHypersensitivityType.nonATCSubstanceComment | alertInformation/alertInformationBody/hyperSensitivity/pharmaceuticalHypersensitivity/nonATCSubstanceComment |
| PharmaceuticalHypersensitivityType.pharmaceuticalProductId | alertInformation/alertInformationBody/hyperSensitivity/pharmaceuticalHypersensitivity/pharmaceuticalProductId |
| OtherHypersensitivityType.hypersensitivityAgent | alertInformation/alertInformationBody/hyperSensitivity/otherHypersensitivity/hypersensitivityAgent |
| OtherHypersensitivityType.hypersensitivityAgentCode | alertInformation/alertInformationBody/hyperSensitivity/otherHypersensitivity/hypersensitivityAgentCode |
| SeriousDiseaseType.disease | alertInformation/alertInformationBody/seriousDisease/disease |
| TreatmentType.treatmentDescription | alertInformation/alertInformationBody/treatment/treatmentDescription |
| TreatmentType.treatmentCode | alertInformation/alertInformationBody/treatment/treatmentCode |
| TreatmentType.pharmaceuticalTreatment | alertInformation/alertInformationBody/treatment/pharmaceuticalTreatment |
| RestrictionOfCareType.restrictionOfCareComment | alertInformation/alertInformationBody/restrictionOfCare/restrictionOfCareComment |
| CommunicableDiseaseType.communicableDiseaseCode | alertInformation/alertInformationBody/communicableDisease/communicableDiseaseCode |
| CommunicableDiseaseType.routeOfTransmission | alertInformation/alertInformationBody/communicableDisease/routeOfTransmission |
| UnstructuredAlertInformationType.unstructuredAlertInformationHeading | alertInformation/alertInformationBody/unstructuredAlertInformation/unstructuredAlertInformationHeading |
| UnstructuredAlertInformationType.unstructuredAlertInformationContent | alertInformation/alertInformationBody/unstructuredAlertInformation/unstructuredAlertInformationContent |
| AlertInformationRelationshipType.typeOfAlertInformationRelationship | alertInformation/alertInformationBody/alertInformationRelationship/typeOfAlertInfomationRelationship |
| AlertInformationRelationshipType.relationComment | alertInformation/alertInformationBody/alertInformationRelationship/relationComment |
| RelatedAlertInformationType.documentId | alertInformation/alertInformationBody/alertInformationRelationship/relatedAlertInformation/documentId |

### MIM Funktionsstatus

![img_009.png](images/img_009.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| FunctionalStatusAssessmentType |  |
| PatientSummaryHeaderType.documentId | functionalStatusAssessment/functionalStatusAssessmentHeader/documentId |
| PatientSummaryHeaderType.sourceSystemHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/sourceSystemHSAId |
| PatientSummaryHeaderType.documentTime | functionalStatusAssessment/functionalStatusAssessmentHeader/documentTime |
| PatientSummaryHeaderType.patientId | functionalStatusAssessment/functionalStatusAssessmentHeader/patientId |
| PatientSummaryHeaderType.accountableHealthcareProfessional | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional |
| HealthcareProfessionalType.authorTime | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional /authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalOrgUnitType.orgUnitHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalOrgUnitType.orgUnitname | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| HealthcareProfessionalOrgUnitType.orgUnitTelecom | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalOrgUnitType.orgUnitEmail | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalOrgUnitType.orgUnitAddress | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalOrgUnitType.orgUnitLocation | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.legalAuthenticatorTime | functionalStatusAssessment/functionalStatusAssessmentHeader/legalAuthenticator/legalAuthenticatorTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | functionalStatusAssessment/functionalStatusAssessmentHeader/legalAuthenticator/legalAuthenticatorName |
| LegalAuthenticatorType.legalAuthenticatorRoleCode | functionalStatusAssessment/functionalStatusAssessmentHeader/legalAuthenticator/legalAuthenticator RoleCode |
| PatientSummaryHeaderType.approvedForPatient | functionalStatusAssessment/functionalStatusAssessmentHeader/approvedForPatient |
| PatientSummaryHeaderType.careContactId | functionalStatusAssessment/functionalStatusAssessmentHeader/careContactId |
| FunctionalStatusAssessmentBodyType |  |
| FunctionalStatusAssessmentBodyType.assessmentCategory | functionalStatusAssessment/functionalStatusAssessmentBody/assessmentCategory |
| FunctionalStatusAssessmentBodyType.comment | functionalStatusAssessment/functionalStatusAssessmentBody/comment |
| PADLType.typeOfAssessment | functionalStatusAssessment/functionalStatusAssessmentBody/padl/typeOfAssessment |
| PADLType.assessment | functionalStatusAssessment/functionalStatusAssessmentBody/padl/assessment |
| DisabilityType.disabilityAssessment | functionalStatusAssessment/functionalStatusAssessmentBody/disability/disabilityAssessment |
| DisabilityType.comment | functionalStatusAssessment/functionalStatusAssessmentBody/disability/comment |
| ResultType | result |
| ResultType.resultCode | result/resultCode |
| ResultType.errorCode | result/errorCode |
| ResultType.subcode | result/subcode |
| ResultType.logId | result/logId |
| ResultType.message | result/message |

## Tjänstekontrakt

### GetCareDocumentation
GetCareDocumentation returnerar hälso- och sjukvårdsdokument för en patient. Sådana dokument omfattar anteckningar av typerna utredning, åtgärd/behandling, sammanfattning, samordning, inskrivning, slutanteckning som även inkluderar epikris, anteckning utan fysiskt möte, slutenvårdsanteckning samt besöksanteckning.
Meddelandeformatet baseras på NPÖ RIV 2.2.0 och är kompatibelt med HL7 v. 3 CDA v. 2. Mappning mot dessa hittas i bilaga [R3].

#### Version
2.1

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga Gemensamma_typer_7.pdf”. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### DocBook-format för clinicalDocumentNoteText-fältet
Fältet ”clinicalDocumentNoteText” innehåller dokumentets textuella innehåll. Producenten har möjlighet att formatera denna text i sina system i det standardiserade layout-formatet DocBook version 5.0, som är en Oasis standard som finns beskrivit på DocBooks hemsida [R11]. Användningen av DocBook för “clinicalDocumentNoteText” är dock begränsad till de följande elementen:
version
article
title
info
para
section
bibliography.
En text som är formaterat med ovanstående DocBook element ska vara s.k. ”entity encoded” för att kunna skickas via fältet “clinicalDocumentNoteText”. Detta behövs för att XML-taggarna, som är en del av DocBook-formatet som används för att formatera texten som utgör fältets innehåll, inte ska uppfattas som en del av svarsmeddelandets XML-struktur. Vid den s.k. entity encoding översätts exempelvis de nedanstående symbolerna på angivit sätt:
> översätts till &gt;
< översätts till &lt;
“ översätts till &quot;
Kolumnen “DocBook-element” i tabellen nedan visar en exempelstruktur med de DocBook-element som kan användas. Kolumnen “DocBook-element med entity encoding” visar samma DocBook-element med entity encoding, och därmed det formatet som kan skickas via fältet “clinicalDocumentNoteText”.
Konsumenten behöver sedan återskapa den ursprungliga DocBook XML-syntaxen från innehållet i fältet, dvs översätta t.ex. &gt till >. Det finns många exempel på open-source-bibliotek som kan användas av producenten för att göra ”entity encoding” och av konsumenten för att återställa till XML-syntaxen. Ett exempel är Apache Commons Text StringEscapeUtils (se metoderna escapeXml respektive unescapeXml) [R12].
Efter att konsumenten har återställt texten till den ursprungliga XML-syntaxen, behöver konsumenten även transformera texten till ett presentationsformat såsom XHTML eller PDF. Det kan t.ex. ske med hjälp av de XSLT-baserade transformeringsskript som tillhandahålls på DocBooks hemsida [R11].

| DocBook-element | DocBook-element med entity encoding |
| :--- | :--- |
|  |  |

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på vårdenhet vilket motsvarar careUnitHSAId i HealthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas, [R14]. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas, [R14] / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| timePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där någon av tidpunkterna documentTime, authorTime, signatureTime eller dissentingOpinion.authorTime i svaret ligger inom sökintervallets start- och slutdatum. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. sourceSystemHSAId måste anges om denna parameter anges. | 0..* |
|  |  |  |  |
| Svar |  |  |  |
| careDocumentation | CareDocumentationType | De hälso- och sjukvårdsdokument som matchar begäran. | 0..* |
| ../careDocumentationHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAid | HSAIdType | HSA-id för det system som dokumentet är skapat i. / Notera att elementnamnet i de andra kontrakten är sourceSystemHSAId (med ett versalt I). Skälet till avvikelsen här är p.g.a. behovet av detta kontrakts bakåtkompatibilitet med kontraktet i version 2.0. | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| ../../documentTime | TimeStampType | Händelsetidpunkt. Tidsangivelse för den händelse dokumentet gäller. | 0..1 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14].
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) ), [R14].
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) ), [R14]. | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då informationen registrerades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 1..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare på | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för Vårdenhet
(Regel: 1) | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. / (Regel: 1) | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../../nullified |  | N/A | 0..0 |
| ../../nullifiedReason |  | N/A | 0..0 |
| ../careDocumentationBody | CareDocumentationBodyType |  | 1..1 |
| ../../clinicalDocumentNote | ClinicalDocumentNoteType | Dokument/anteckning. | 1..1 |
| ../../../clinicalDocumentNoteCode | ClinicalDocumentNoteCodeEnum | Obligatoriskt om clinicalDocumentTypeCode saknas. Får annars inte anges samtidigt med clinicalDocumentTypeCode. / Typ av hälso- och sjukvårdsdokument. Kod tas från KV Anteckningstyp (1.2.752.129.2.2.2.11).
Tillåtna värden är: 
utr = Utredning, / atb = åtgärd/Behandling, / sam = Sammanfattning, / sao = Samordning, / ins = Inskrivning, / slu = Slutanteckning, / auf = Anteckning utan fysiskt möte, / sva = Slutenvårdsanteckning, / bes = Besöksanteckning. | 0..1 |
| ../../../clinicalDocumentTypeCode | ClinicalDocumentTypeCodeEnum | Obligatoriskt om clinicalDocumentNoteCode saknas. Får annars inte anges samtidigt med clinicalDocumentNoteCode. / Epikris = epi / Intagninganteckning = int / Daganteckning = dag / Öppenvårdsanteckning = ova Öppenvårdssammanfattning = ovs / Övrigt document = ovr | 0..0 |
| ../../../clinicalDocumentNoteTitle | string | Titel på dokument | 0..1 |
| ../../../clinicalDocumentNoteText | string | Dokumentets innehåll i text. / Texten kan antingen skickas som vanlig text eller formaterat enligt DocBook-standarden, se 7.1.3. / Obs Man kan välja att skicka dokumentets innehåll i elementet clinicalDocumentNoteText eller i multimediaEntry enligt respektive elements regler, man får inte skicka med båda elementen. Regeln finns med i constraints.xml (schematron) under katalogen test-suites och kan valideras med testsviten. | 0..1 |
| ../../../multimediaEntry | MultimediaType | Dokumentets innehåll i form av en multimediaobjekt, i form av antingen ett inbäddat objekt eller en länk till objektet. / Obs Man kan välja att skicka dokumentets innehåll i elementet clinicalDocumentNoteText eller i multimediaEntry enligt respektive elements regler, man får inte skicka med båda elementen. Regeln finns med i constraints.xml(schematron) under katalogen test-suites och kan valideras med testsviten. | 0..1 |
| ../../../../id |  | N/A | 0..0 |
| ../../../../ mediaType | MediaTypeEnum | Typ av multimedia (enligt HL7). | 1..1 |
| ../../../../value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av attributen value och reference ska anges. | 0..1 |
| ../../../../reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av attributen value och reference ska anges. | 0..1 |
| ../../../dissentingOpinion | DissentingOpinionType | Om patienten eller någon för denna ansvarig person (exempelvis förälder eller god man) har lämnat en avvikande åsikt till journalnotatet. | 0..* |
| ../../../../opinionId | IIType | En universellt unik identifierare för den avvikande åsikten. Identifieraren ska vara beständig, i betydelsen att upprepade frågemeddelanden ger samma värde i svarsmeddelanden som rör samma journalnotat. | 0..1 |
| ../../../../../root | string | En universellt unik identifierare för den avvikande åsikten eller en identifierare som tillsammans med värdet för ”extension” ger en universellt unik identifierare. | 1..1 |
| ../../../../extension | string | Om värdet på root inte universellt unikt ska detta fält innehålla ett kompletterande värde som tillsammans med värdet för root ger en universellt unik identifierare. | 0..1 |
| ../../../../authorTime | TimeStampType | Tidpunkten då den avvikande åsikten författades. | 1..1 |
| ../../../../opinion | string | Text som innehåller själva den avvikande åsikten. | 1..1 |
| ../../../../personId | PersonIdType | Id för författaren av den avvikande åsikten | 1..1 |
| ../../../../../id | string | Sätts till personens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1) ), [R14].
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) ), [R14].
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) ), [R14]. | 1..1 |
| ../../../../personName | string | Namnet på författaren av den avvikande åsikten. | 1..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Producenter av GetCareDocumentation måste följa de generella riktlinjer för binära bilagor, se referens [R16]. Inbäddade bilagor får inte överstiga 100KB. | - | - |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.

### GetDiagnosis
GetDiagnosis returnerar registrerade diagnoser för en patient inklusive en diagnoskod per ursprungligt diagnosticeringstillfälle. Meddelandeformatet baseras på NPÖ RIV 2.2.0 och är kompatibelt med HL7 v. 3 CDA v. 2. Mappning mot dessa hittas i bilaga
[R4].

#### Version
2.0

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga Gemensamma_typer_7.pdf”. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på vårdenhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas), [R14]. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas), [R14]. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| timePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där någon av tidpunkterna authorTime, signatureTime eller diagnosisTime i svaret ligger inom sökintervallets start- och slutdatum. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till de diagnoser som dokumenterades vid hälso- och sjukvårdskontakt. | 0..* |
|  |  |  |  |
| Svar |  |  |  |
| diagnosis | DiagnosisType | De diagnoser som matchar begäran. | 0..* |
| ../diagnosisHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle |  | N/A | 0..0 |
| ../../documentTime |  | N/A | 0..0 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14].
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3), [R14].
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då informationen registrerades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13] | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare på. | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på. | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för vårdenhet / (Regel: 1) | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel: 1) | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso- och sjukvårds skontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../../nullified |  | N/A | 0..0 |
| ../../nullifiedReason |  | N/A | 0..0 |
| ../diagnosisBody | DiagnosisBodyType |  | 1..1 |
| ../../typeOfDiagnosis | TypeOfDiagnosisEnum | Anges som "Huvuddiagnos" eller "Bidiagnos". | 1..1 |
| ../../chronicDiagnosis | boolean | Sätts till true om diagnosen är kronisk, false om diagnosen inte är kronisk, och används inte om okänt. | 0..1 |
| ../../diagnosisTime | TimeStampType | Tidpunkt då bedömningen gjordes. | 0..1 |
| ../../diagnosisCode | CVType | Diagnoskod. | 0..1 |
| ../../../code | string | Kod för den aktuella diagnosen. / Om code anges ska även codeSystem samt displayName anges. | 0..1 |
| ../../../displayName | string | Klartext för kod som angivits i attributet diagnosisCode. / Om displayName anges ska även code samt codeSystem anges. | 0..1 |
| ../../../codeSystem | string | OID för kodsystem. | 0..1 |
| ../../../codeSystemName | string | Namn på kodsystem. / Om codeSystem anges ska även code samt displayName anges. | 0..1 |
| ../../../codeSystemVersion | string | Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. | 0..1 |
| ../../../originalText | string | originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i diagnosisCode anges. | 0..1 |
| ../../relatedDiagnosis | RelatedDiagnosisType | Relaterad diagnos. / Associationen används för att länka samman diagnoser som relaterar till varandra. Använd om möjligt detta för att länka t.ex. bidiagnos till huvuddiagnos eller orsakskod till diagnos. | 0..* |
| ../../../documentId | string | Unik identitet för diagnosen. | 1..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.

### GetAlertInformation
GetAlertInformation returnerar uppmärksamhetsinformation för en patient, exempelvis överkänslighet mot läkemedel, allvarlig sjukdom eller vårdbegränsning. Meddelandeformatet baseras på NPÖ RIV 2.2.0 och är kompatibelt med HL7 v. 3 CDA v. 2. Mappning mot dessa hittas i bilaga [Error! Reference source not found.]R3.

#### Version
2.0

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga Gemensamma_typer_7.pdf”. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på vårdenhet vilket motsvarar careUnitHSAId i HealthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas, [R14]. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas, [R14]. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| timePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som startar vid validityTimePeriod.start och slutar vid obsoleteTime eller validityTimePeriod.end om någon av dessa är satta, annars tills vidare, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den uppmärksamhetsinformation som dokumenterades vid hälso- och sjukvårds kontakt. | 0..* |
|  |  |  |  |
| Svar |  |  |  |
| alertInformation | AlertInformationType | De diagnoser som matchar begäran. | 0..* |
| ../alertInformationHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle |  | N/A | 0..0 |
| ../../documentTime |  | N/A | 0..0 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14].
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3), [R14].
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som verifierat informationen i dokumentet. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då informationen registrerades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | hälso- och sjukvårdspersonalens HSA-id. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13] | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för vårdenhet. / (Regel:1) | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonalen är uppdragstagare för. 
(Regel:1) | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../../nullified |  | N/A | 0..0 |
| ../../nullifiedReason |  | N/A | 0..0 |
| ../alertInformationBody | AlertInformation / BodyType |  | 1..1 |
| ../../typeOfAlertInformation | CVType | Kod som anger vilken typ av uppmärksamhetssignal som avses. / Använd t.ex.  KV Uppmärksamhetstyp eller KV Informationstyp. / Se regel 2 | 1..1 |
| ../../../code | string | Kod som anger typ av uppmärksamhetssignal. Om code anges ska även codeSystem samt displayName anges. | 0..1 |
| ../../../displayName | string | Koden i klartext. Om displayName anges ska även code samt codeSystem anges. | 0..1 |
| ../../../codeSystem | string | OID för kodsystem. / KV Uppmärksamhetstyp 1.2.752.129.5.1.49 / KV Informationstyp: 1.2.752.129.2.2.2.1 / Om codeSystem anges ska även code samt displayName anges. | 0..1 |
| ../../../codeSystemName | string | Klartext för kodsystemet angivet i codeSystem. | 0..1 |
| ../../../codeSystemVersion | string | Version på kodsystem, om tillgängligt. | 0..1 |
| ../../../originalText | string | Om typ av uppmärksamhetssignal är beskriven i ett lokalt kodsystem, eller ett kodsystem utan OID ska typ av uppmärksamhetssignal anges här. / Om originalText anges ska inget annat värde i typeOfAlertInformation anges. | 0..1 |
| ../../ascertainedDate | DateType | Datum då förhållandet som föranledde uppmärksamhetssignalen konstaterades. Om inget specifikt datum för detta finns i källsystemet används
samma tid som starttiden i attributet giltighetstid. | 0..1 |
| ../../verifiedTime | TimeStampType | Den tidpunkt då uppmärksamhetssignalen verifierades i det lokala systemet | 0..1 |
| ../../validityTimePeriod | TimePeriodType | Tidsintervallet inom vilket uppmärksamhetssignalen är giltig. Sluttidpunkt kan vara aktuellt att ange då man i förväg bedömer att uppmärksamhetssignalen har en sluttidpunkt (t.ex. för behandlingar). | 1..1 |
| ../../../start | TimeStampType | Format ÅÅÅÅMMDDhhmmss. | 1..1 |
| ../../../end | TimeStampType | Format ÅÅÅÅMMDDhhmmss. | 0..1 |
| ../../alertInformationComment | string | Text som innehåller en kommentar av den ansvarige hälso- och sjukvårdspersonalen angående uppmärksamhetssignalen. Vid läkemedelsöverkänslighet kan kommentaren avse en anamnes,
en beskrivning av den observerade reaktionen, en beskrivning av möjliga agens, föreliggande undersökningsresultat. | 0..1 |
| ../../obsoleteTime | TimeStampType | Tidpunkt då uppmärksamhetssignalen registrerades som inaktuell i det lokala systemet. Används exempelvis om det uppmärksammade förhållandet bedöms som inte längre aktuellt trots att tidigare angiven gilitighetstid ej gått ut. | 0..1 |
| ../../obsoleteComment | string | Text som innehåller information om varför uppmärksamhetssignalen gjorts inaktuell. | 0..1 |
| ../../hypersensitivity | HyperSensitivityType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges. | 0..1 |
| ../../../typeOfHypersensitivity | CVType | Kod som anger en precisering av vilken typ av överkänslighet som uppmärksamhetssignalen avser. Koden bör hämtas ur ICD10/SNOMED, [R13]. / Exempel: / Läkemedelsöverkänslighet / Överkänslighet avs. födoämne / Överkänslighet avs. djur / Överkänslighet avs. växt / Överkänslighet av kemikalie | 0..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i typeOfHypersensitivity anges. | 0..1 |
| ../../../degreeOfSeverity | CVType | Kod som anger bedömning av överkänslighetens allvarlighet. / KV Allvarlighetsgrad (1.2.752.129.2.2.3.3), [R13] | 0..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i degreeOfSeverity anges. | 0..1 |
| ../../../degreeOfCertainty | CVType | Kod som innehåller en uppgift om med vilken visshet överkänsligheten är precis så som den har angivits. / KV Visshetsgrad (1.2.752.129.2.2.3.11) | 0..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i degreeOfCertainty anges. | 0..1 |
| ../../../pharmaceuticalHypersensitivity | PharmaceuticalHypersensitivityType | Mer detaljerad information om läkemedelsöverkänslighet. | 0..1 |
| ../../../../atcSubstance | CVType | Kod och klartext som anger den substans, eller grupp av substanser, som kan förorsaka en överkänslighetsreaktion. ATC-kod på minst treställig nivå ska anges för en läkemedelsöverkänslighet med en allvarlighetsgrad livshotande eller skadande, [R13]. Om en ATC-kod ej kan anges ska attributen
- substans ej enligt ATC
och
- ej ATC-kod kommentar
användas | 0..1 |
| ../../../../../code | string | Substansens ATC-kod. | 1..1 |
| ../../../../../displayName | string | Klartext för substans (substansnamn) | 1..1 |
| ../../../../../codeSystem | string | 1.2.752.129.2.2.3.1.1 | 1..1 |
| ../../../../../ codeSystemName | string | Används ej | 0..0 |
| ../../../../../ codeSystemVersion | string | Används ej | 0..0 |
| ../../../../../originalText | string | Används ej | 0..0 |
| ../../../../nonATCSubstance | string | Text som anger benämning på aktiv substans som kan förorsaka en överkänslighetsreaktion | 0..1 |
| ../../../../nonATCSubstanceComment | string | Text som innehåller en förklaing till varför ej ATC-kod används. | 0..1 |
| ../../../../pharmaceuticalProductId | CVType | Identifierare för aktuell läkemedelsprodukt som kan orsaka överkänslighet. 
NPL-id (1.2.752.129.2.1.5.1). | 0..* |
| ../../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i pharmaceuticalProductId anges. | 0..1 |
| ../../../otherHypersensitivity | OtherHypersensitivityType | Mer detaljerad information om överkänsligheten. Kan användas för annan överkänslighet än läkemedelsöverkänslighet. | 0..1 |
| ../../../../hypersensitivityAgent | string | Text som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion. / Bör anges. | 0..1 |
| ../../../../hypersensitivityAgentCode | CVType | Text som anger den kod som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion. Exempelvis kan LMK-kod för överkänslighet födoämne eller CAS-kod för överkänslighet kemikalie användas. Kan användas för annan överkänslighet än läkemedelsöverkänslighet. | 0..1 |
| ../../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../../codeSystemVersion | string | Kodsystemsversion | 0..1 |
| ../../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i hypersensitivityAgentCode anges. | 0..1 |
| ../../seriousDisease | SeriousDiseaseType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges. | 0..1 |
| ../../../disease | CVType | Kod som beskriver en allvarlig sjukdom som hälso- och sjukvårdstagaren har och som en hälso- och sjukvårdspersonen vill göra andra uppmärksammade på (avsaknad av kunskap om att hälso- och sjukvårdstagaren har denna sjukdom skulle kunna innebära ett allvarligt hot för liv eller hälsa för hälso- och sjukvårdstagaren). Bör anges enligt ICD10/SNOMED, [R13]. | 1..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i disease anges. | 0..1 |
| ../../treatment | TreatmentType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). | 0..1 |
| ../../../treatmentDescription | string | Text som beskriver en allvarlig behandling som hälso- och sjukvårdstagaren genomgår och som en hälso- och sjukvårdspersonal vill göra andra uppmärksammade på (avsaknad av kunskap om att hälso- och sjukvårdstagaren har denna behandling skulle kunna innebära ett allvarligt hot för liv eller hälsa för hälso- och sjukvårdstagaren). | 1..1 |
| ../../../treatmentCode | CVType | En preciserad uppgift om behandlingen. Bör anges med KVÅ-kod (1.2.752.116.1.3.2.1.4) | 0..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i treatmentCode anges. | 0..1 |
| ../../../pharmaceuticalTreatment | CVType | Kod och klartext som anger uppgift om den eller de läkemedel som används vid en uppmärksammad behandling.
ATC-kod (1.2.752.129.2.2.3.1.1), [R13]. | 0..* |
| ../../../../code | string | Läkemedlets (ATC-)kod. Om code anges måste också codeSystem och displayName anges. | 0..1 |
| ../../../../displayName | string | Klartext för läkemedel (namn på läkemedel). Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i pharmaceuticalTreatment anges. | 0..1 |
| ../../communicableDisease | CommunicableDiseaseType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). | 0..1 |
| ../../../communicableDiseaseCode | CVType | Kod som anger en precisering av vilken smittsam sjukdom som hälso- och sjukvårdstagaren har. Bör anges som ICD10-kod, [R13]. | 1..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i communicableDiseaseCode anges. | 0..1 |
| ../../../routeOfTransmission | CVType | Kod som anger hur den uppmärksammade sjukdomen smittar. Obligatorisk uppgift om det styrs av författning. KV Smittväg. | 0..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i routeOfTransmission anges. | 0..1 |
| ../../restrictionOfCare | RestrictionOfCareType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). Denna klass skiljer sig sig något från motsvarigheten i Varning2-infospec. | 0..1 |
| ../../../restrictionOfCareComment | string | Text som innehåller information om ett uppmärskammat förhållande som inte avser överkänslighet, annat medicinskt tillstånd, behandling eller arbetsmiljörisk. | 1..1 |
| ../../unstructuredAlertInformation | UnstructuredAlertInformationType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). | 0..1 |
| ../../../unstructuredAlertInformationHeading | string | Text som innehåller en beskrivande rubrik för en tidigare utfärdad varning. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen. | 1..1 |
| ../../../unstructuredAlertInformationContent | string | Text som beskriver vad varningen gäller, samt viss administrativ information. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen. | 1..1 |
| ../../relatedAlertInformation | RelatedAlertInformationType | Information om samband uppmärksamhetssignal | 0..* |
| ../../../typeOfAlertInformationRelationship | CVType | Text som anger vilken typ av samband som avses. KV Samband (1.2.752.129.2.2.2.4), [R13]. | 1..1 |
| ../../../../code | string | Kod för samband uppmärksamhetssignal. Om code anges måste också displayName och codeSystem anges. | 0..1 |
| ../../../../displayName | string | Klartext för samband uppmärksamhetssignal. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för samband uppmärksamhetssignal. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem för samband uppmärksamhetssignal. | 0..1 |
| ../../../../codeSystemVersion | string | Version för kodsystem för samband uppmärksamhetssignal. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i typeOfAlertInformationRelationship anges. | 0..1 |
| ../../../relationComment | string | Text som innehåller en kommentar till det aktuella sambandet | 0..1 |
| ../../../documentId | string | Lokalt unik identitet för relaterad uppmärksamhetssignal | 1..* |
| result | ResultType | Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Då uppmärksamhetssignaler ska skickas till Nationell Patientöversikt måste någon av följande koder från kv informationstyp anges: / upp-ube / upp-ube-beh / upp-ube-lbe / upp-ube-kod / upp-uas / upp-uas-sjd / upp-vbe / upp-vbe-vbe / upp-arb / upp-arb-smf / upp-arb-smf-vag / upp-arb-smf-sjd / upp-est / upp-est-rub / upp-est-inh / Alternativt ska någon av följande koder från kv uppmärksamhetstyp anges: / Överkänslighet / Allvarlig sjukdom / Allvarlig behandling / Smittsam sjukdom / Vårdbegränsning / Historisk varningsinformation | ../../typeOfAlertInformation | Uppmärksamhets-signaler till NPÖ. |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.

### GetFunctionalStatus
GetFunctionalStatus returnerar dokumenterade bedömning av funktionsnedsättningar och/eller aktivitetsförmåga för en patient. Meddelandeformatet baseras på NPÖ RIV 2.2.0.

#### Version
2.0

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga Gemensamma_typer_7.pdf”. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar.  Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på vårdenhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas, [R14]. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas, [R14]. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där documentTime i svaret ligger inom sökintervallets start- och slutdatumet. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till de funktionsstatusobjekt som dokumenterades vid angiven hälso- och sjukvårdskontakt. | 0..* |
|  |  |  |  |
| Svar |  |  |  |
| functionalStatusAssessment | FunctionalStatusAssessmentTime | De funktionsstatusbedömningar som matchar begäran. | 0..* |
| ../functionalStatusAssessmentHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Funktionsbedömningens identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle | string | N/A | 0..0 |
| ../../documentTime | TimeStampType | Bedömningstidpunkt/händelsetidpunkt. | 1..1 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14].
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3), [R14].
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som ansvarar för funktionsstatusbedömninge, nedan kallas författare. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då informationen registrerades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13]. / I de fall kodverket Befattning ej kan användas, men information om befattning finns tillgänglig, måste vårdgivaren ange en OID på det organisationsinterna kodverk som används istället. / Information som finns kan inte utelämnas på grund av att mappning till kodverket Befattning inte är möjlig | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på. | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare på. | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på. | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för vårdenhet. (Regel:1) | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel:1) | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Signaturtidpunkt. / Tid vid vilken funktionsstatusbedömningen signeras. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../../legalAuthenticatorRoleCode | CVType | Signerande persons befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13] | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Vårdkontakts-id. / Id för den vårdkontakt vid vilken funktionsstatusbedömningen gjorts. | 0..1 |
| ../../nullified | boolean | N/A | 0..0 |
| ../../nullifiedReason | string | N/A | 0..0 |
| ../functionalStatusAssessmentBody | FunctionalStatusAssessmentBodyType |  | 1..1 |
| ../../assessmentCategory | AssessmentCategoryEnum | Bedömningskategori. / Beskriver vilken kategori av bedömning som är gjord. Tillåtna värden är "pad-pad" (för PADL-bedömning) och "fun-fun" (för funktionsnedsättningsbedömningar). / Värdet här ska stämma överens med elementet categorization i den Update som tjänsteproducent skickar till EI. | 1..1 |
| ../../comment | string | Kommentar. / Text som innehåller kommentar till totaliten av bedömningarna. Får endast användas om assessmentCategory = pad-pad. | 0..1 |
| ../../padl | PADLType | Beskriver gjorda PADL-bedömningar. / Får enbart anges samtidigt som assessmentCategory = pad-pad. | 0..* |
| ../../../typeOfAssessment | CVType | Typ av PADL-bedömning. Kan anges med lämpligt kodsystem.
(Regel:2) | 1..1 |
| ../../../../code | string | Kod för PADL-bedömning. / Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för PADL-bedömning. / Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för PADL-bedömning. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för PADL-bedömning. | 0..1 |
| ../../../../displayName | string | PADL-bedömningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om PADL-bedömning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i typeOfAssessment anges. | 0..1 |
| ../../../assessment | string | Den textuella PADL-bedömning som gjorts i kategorin av bedömningar som beskrivs i typeOfAssessment. | 1..1 |
| ../../disability | DisabilityType | Beskriver gjord funktionsnedsättningsbedömning. / Får endast anges om assessmentCategory = fun-fun. | 0..1 |
| ../../../disabilityAssessment | CVType | Angivelse av kod för den funktion som bedömts nedsatt. / Om funktionen anges strukturerat ska kod från ICF [R13] användas. Koden ska anges utan bedömningsfaktor och detta ska tolkas som att det är den funktion som ICF-koden representerar som är nedsatt från normal funktion. I attributet kommentar kan nedsättningen vid behov textuellt graderas och specificeras ytterligare. / Om ICF-kod inte kan anges kan den nedsatta funktionen anges i attributet originalText / Kontraktet har i denna version inte stöd för ICFs numeriska bedömningsfaktor. | 1..1 |
| ../../../../code | string | Kod för den funktion som bedömts nedsatt. Exempelvis ICF kod: b3101 / Om code anges ska också codeSystem  samt displayName anges, men ej originalText. | 0..1 |
| ../../../../codeSystem | string | OID för ICF: 1.2.752.116.1.1.3 | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för funktionsnedsättning. | 0..0 |
| ../../../../codeSystemVersion | string | Version på kodsystem för funktionsnedsättning. | 0..0 |
| ../../../../displayName | string | ICF-kodens klartextbenämning, exempelvis ”röstkvalitet” . | 0..1 |
| ../../../../originalText | string | Om ICF-kod saknas, kan en funktionsnedsättningen beskrivas i text i detta attribut. / Om originalText anges ska inget annat värde i disabilityAssessment anges. | 0..1 |
| ../../../comment | string | Kommentar. / Text som innehåller ytterligare information om funktionsnedsättningen. Exempelvis: ”uttalssvårigheter och tillfälligt bortfall av röststyrka”. | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Då attributet endast avser Personlig ADL ska endast följande och max ett av vardera av följande värden användas: "personlig hygien", "på/avklädning", "förflyttning", "toalettbesök" och "födointag". | ../../../typeOfAssessment | Följsamhet till den delen av ADL taxonomin som rör de personliga aktiviteterna [R18]. |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.
