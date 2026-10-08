
|  | clinicalprocess healthcond actoutcome / Tjänstekontraktsbeskrivning / Version 3.1.10 / 2026-06-03 |
| :--- | :--- |
Innehåll
Innehåll	2
Revisionshistorik	5
Referenser	14
Förkortningar	14
1	Inledning	15
Denna domän hanterar information gällande utfall av olika undersökningar och aktiviteter, till exempel laboratoriesvar och bilddiagnostik. Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].	15
1.1	Svenskt namn	15
Vård- och omsorg kärnprocess: hantera hälsorelaterade tillstånd: utfall av aktivitet	15
Utfall av aktivitet	15
1.2	WEB beskrivning	15
2	Versionsinformation	15
2.1	Version 3.1.9	15
2.1.1	Oförändrade tjänstekontrakt	15
2.1.2	Nya tjänstekontrakt	16
2.1.3	Förändrade tjänstekontrakt	16
2.1.4	Utgångna tjänstekontrakt	16
2.2	Version tidigare	16
3	Tjänstedomänens arkitektur	16
3.1	Flöden	17
Figur 2 Exempel: Adressering vid anrop till aggregerande vårdgivartjänst (t.ex. från NPÖ-tillämpningen).	18
3.1.2	Obligatoriska kontrakt	20
3.2	Adressering	20
3.2.1	Sammanfattning av adresseringsmodell	20
3.3	Aggregering och engagemangsindex	20
3.4	Annat	21
4	Tjänstedomänens krav och regler	22
4.1	Uppdatering  av engagemangsindex	22
4.2	Informationssäkerhet och juridik	24
4.2.1	Medarbetarens direktåtkomst	24
4.2.2	Patientens direktåtkomst	25
4.2.3	Generellt	25
4.3	Icke funktionella krav	25
4.3.1	SLA krav	25
Följande SLA-krav gäller för producenter av tjänstekontrakten i denna domän.	25
4.3.2	Övriga krav	26
4.4	Felhantering	27
4.4.1	Krav på en tjänsteproducent	27
4.4.2	Krav på en tjänstekonsument	27
5	Gemensamma informationskomponenter	28
6	Tjänstedomänens meddelandemodeller	29
6.1	V-MIM	29
6.1.1	GetReferralOutcome	29
6.1.2	GetMaternityMedicalHistory	32
6.1.3	GetLaboratoryOrderOutcome	38
6.1.4	GetImagingOutcome	42
6.2	Formatregler	48
7	Tjänstekontrakt	49
7.1	GetReferralOutcome	49
7.1.1	Version	49
7.1.2	Gemensamma informationskomponenter	49
7.1.3	Fältregler	49
7.1.4	Övriga regler	56
7.1.5	Annan information om kontraktet	57
7.2	GetMaternityMedicalHistory	58
7.2.1	Version	58
7.2.2	Gemensamma informationskomponenter	58
7.2.3	Fältregler	58
7.2.4	Övriga regler	68
7.2.5	Annan information om kontraktet	69
7.3	GetLaboratoryOrderOutcome	70
7.3.1	Version	70
7.3.2	Gemensamma informationskomponenter	70
7.3.3	Fältregler	70
7.3.4	Övriga regler	80
7.3.5	Annan information om kontraktet	81
7.4	GetImagingOutcome	82
7.4.1	Version	82
7.4.2	Gemensamma informationskomponenter	82
7.4.3	Fältregler	82
7.4.4	Övriga regler	94
7.4.5	Annan information om kontraktet	95
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
| - | PA13 | 2013-01-20 | Uppdaterat efter beslut att håll aindexpostern på PDLenhetsnivå och använda SourceSystem för adressering. | Johan Eltes |
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
| - | PA24 | 2013-02-11 | Lagt till kap 8, GetDiagnosis | Maria Andersson |
| - | PA25 | 2013-02-19 | Definierat krav på uppdatering av fältet mostRecentContent i EI-posten. | Johan Eltes |
| - | PA26 | 2013-03-04 | Flyttat från domän ehr:patientsummary till clinicalprocess:healthcond:description | Johan Eltes |
| - | PA27 | 2013-03-19 | Applicerat uppdateringar för att komma i fas med GetCareDocumentation. | Johan Eltes |
| - | PA28 | 2013-03-19 | Rättat spec för serviceDomän i spec för EI-posten | Johan Eltes |
| - | PA29 | 2013-03-20 | Nytt tjänstekontrakt: GetPrenatalMedicalHistory | Jacob Tardell |
| 3.0 | PA30 | 2013-03-27 | Nytt tjänstekontrakt: GetDeliveryMedicalHistory | Jacob Tardell |
| - | PA31 | 2013-04-08 | - Kardinalitet på haemorrhageBeforePlacentaDelivery, haemorrhageAfterPlacentaDelivery. / - Lagt till oid(CeHis) för kön. / - Ändrat semantik i EI-fältet ”Most Recent Content” / - Uppdaterat arkitektur- och adresseringsbeskrivningar för att täcka direktadressering av källsystem | Khaled Daham / Johan Eltes |
| - | PA32 | 2013-05-02 | Uppdaterat skrivningar kring adressering och engagemangspostens innehåll / Tagit bort GetDeliveryMedicalHistory / Bytt namn på GetPrenatalMedicalHistory till GetMaternityMedicalHistory / Uppdaterat och kompletterat GetMaternityMedicalHistory / Viktiga ändringar är gulmarkerade | Jacob Tardell / Johan Eltes |
| - | PA33 | 2013-05-05 | Korrigering av engelsk terminologi | Jacob Tardell / Johan Eltes |
| - | PA34 | 2013-05-07 | Arkitekturskisser uppdaterade för att spegla korrekt användning av EI / Uppdaterad typ på viktfält från int till PQType / Återställt typ för ”dosage” till text och förtydligat att värdet är beskrivande text / Formatteringsproblem åtgärdade | Johan Eltes |
| - | PA35 | 2013-09-02 | GetLaboratoryOrderOutcome tillags, samt gemensamma komponenter uppdaterade | Fredrik Ström |
| - | PA36 | 2013-09-03 | Uppdaterat beskrivning av author. | Björn Genfors |
| - | PA37 | 2013-09-16 | Uppdaterat länkar (4 st.) till HSA-dokumentation under AuthorRoleCode | Jacob Tardell |
| - | PA38 | 2013-09-16 | Det ska vara tre apgar-värden (1,5,10 min) / Stavfel transverse (fetalPosition) | Jacob Tardell |
| - | PA39 | 2013-09-16 | Ändrat mall, samma sidhuvud i hela dokumentet samt rubrik på revisionshistorik och innehållsförteckning | Jacob Tardell |
| - | PA40 | 2013-09-30 | Uppdaterat med nya gemensamma komponenter / laboratoryOrderOutcome uppdaterad med nya komponenter | Fredrik Ström |
| - | PA41 | 2013-09-30 | ändrat namn på fält från ”healthCare…” till ”healthcare…” | Johan Eltes |
| - | PA42 | 2013-10-01 | Dimensioner för PQType i GetMaternityMedicalHistory | Jacob Tardell |
| - | PA43 | 2013-10-02 | Ändrat formatering tabell laboratoryOrderOutcome | Fredrik Ström |
| - | PA44 | 2013-10-03 | Ändrat namnet i rubriken för getLaboratoryOrderOutcom från getLaboratoryOrder | Fredrik Ström |
| - | PA45 | 2013-10-10 | Uppdaterat gemensamma komponenter i GetMaternityMedicalHistory | Jacob Tardell / Björn Genfors |
| - | PA46 | 2013-10-15 | Förtydligat patientId i PatientSummaryHeader. / Förtydligat indenteringen i GetReferralOutcome | Björn Genfors |
| - | PA47 | 2013-10-15 | Lagt till BMI i GetMaternityMedicalHistory | Jacob Tardell |
| - | PA48 | 2013-10-17 | Lagt till ett avsaknat ”healthcareProfessionalOrgUnit” i GetMaternityMedicalHistory / Justerat beskrivningen av adress i OrgUnitType. / Korrigerat beskrivningen av documentId i PatientSummaryHeader. | Björn Genfors |
| - | PA49 | 2013-10-18 | Uppdaterat GetReferralOutcome med gemensamma datatyper | Fredrik Ström |
| - | PA50 | 2013-10-21 | Förtydligat kravet på filtrering av svar enligt logicalAddress (lagt till avsnitt 3.4). / Markerat i flödesmodeller att anslutningskatalog inte är del av dagens arkitektur. | Johan Eltes |
| - | PA51 | 2013-10-22 | Ändrat kardinalitet för fetalHeartRate, fetalPosition och fetalPresentation till 0..* i GetMaternityMedicalHistory / Ändrat kardinalitet för typeOfLeave till 0..*. | Jacob Tardell |
| - | PA52 | 2013-10-22 | Flyttat BMI till inskrivningsdelen i GetMaternityMedicalHistory | Jacob Tardell |
| - | PA53 | 2013-10-29 | Ändrat typnamn ifrån PatientIdType till PersonIdType, rättat  sourceSystemHSAid till sourceSystemHSAId | Khaled Daham |
| - | PA54 | 2013-11-04 | Ersatt termen PDL-enhet med vårdenhet (i löpande text) / Uppdaterat avsnittet om informationssäkerhet efter CeHis-granskning | Johan Eltes |
| - | PA55 | 2013-11-08 | För LaboratoryOutcome / analysisId kardinalitet uppdaterad | - |
| - | PA56 | 2013-11-12 | För LaboratoryOrderOutcome / ReferralType ändrat namn till LaboratoryReferralType / Ersatt förekomster av LaboratoryOutcome med LaboratoryOrderOutcome / För GetMaternityMedicalHistory tagit bort healthcareProfessional ifrån elementnamn under healthcareProfessionalOrgUnit. | Khaled Daham |
| - | PA57 | 2013-11-18 | Bytt antenatalFollowUpRecord till PregnancyCheckupRecord | Jacob Tardell |
| - | PA58 | 2013-11-21 | Bytt namn på Referral till Order / Lagt till text på labbsvar och konsultationsremissvar som deklarerar kompatibilitet med NPö RIV Spec och HL7 CDA. | Johan Eltes |
| - | PA59 | 2013-12-07 | - Ändrat kardinalitet för typeOfLeave till 0..* (igen! se PA51). / - Lagt till proteinuria (proteinuri) / - Lagt till glycosuria (glucosuri) / - Lagt till length (moderns längd) vid inskrivning | Jacob Tardell |
| - | PA60 | 2013-12-13 | typeOfLeave 0..* / fixat stavfel på contraceptiveDiscontinued | Khaled Daham |
| - | 2.0-RC11 | 2014-02-10 | Byte av TKB-mall | Khaled Daham |
| - | 2.0-RC12 | 2014-02-11 | Referens till RIVTA angående anslutningspunkt / Ändrat ordalydelse runt API-GW | Khaled Daham |
| - | 2.0-RC13 | 2014-02-14 | Ändrat redaktionella fel efter återkoppling ifrån AL-granskning. | Khaled Daham |
| - | 2.1-RC1 | 2014-02-18 | lagt till plasmaGlucose (P-Glukos) / Ändrat PlasmaGlucoseType till MeasurementType. / Uppdaterat MIM för mödravårdskontraktet | Khaled Daham, Björn Genfors |
| - | 2.1-RC2 | 2014-02-24 | Ändrat datum, revision samt synkat med AB | Khaled Daham |
| - | 2.1-RC3 | 2014-03-13 | Lagt tillbaka två fält (proteinuri, glucosuri) i fältregel-tabellen, då dessa av misstag fallit bort vid byte av TKB-mall. Inga ändringar i schema. | Khaled Daham |
| 3.0 | RC2 | 2014-04-10 | Generella dokumentuppdateringar / Korrekturläsning och godkännande / Två nya kontrakt GetECGOutcome och GetImagingOutcome | Stefan Asanin, Björn Genfors, Andreas Bjärkmar, Khaled Daham |
| 3.1 | RC1 | 2014-10-24 | Lagt till information om vidimering i LaboratoryOrderOutcome samt GetReferralOutcome / Uppdaterat beskrivning av signatur i LaboratoryOrderOutcome | Fredrik Ström |
| 3.1 | RC1 | 2014-11-03 | Uppdatering av mall / Korrigerat kardinalitet för attested / Uppdaterat formulering för begäran, speciellt rörande reservnummer | Malin Lundgren, Khaled Daham |
| 3.1 | RC1 | 2014-11-04 | Korrigerat indentering för ActType.actResult i fältregellistan för GetReferralOutcom | Khaled Daham |
| 3.1 | RC1 | 2014-11-18 | Lagt till Ineras HSAid för aggregerande tjänster. / sourceSystemHSAId krävs vid begäran på reservnummer | Khaled Daham |
| 3.1 | R1 | 2014-11-23 | Vidimering för referralOutcome flyttad ifrån act till referralOutcomeBody. / Tagit bort alternativet att använda GetUpdates(index-pull) för EI då den inte är implementerad och det pågår diskussioner om att den skall tas bort ifrån TKB för EI. / Uppdaterat sekvensdiagram. | Khaled Daham |
| 3.1 | RC1 | 2014-11-25 | Ändrat skrivelse kring medarbetarens åtkomst till att peka på SOSFS 2008:14 istället för PDL-i-praktiken. | Khaled Daham |
| 3.1 | RC2 | 2015-03-09 | Uppdaterad V-TIM-mappningskapitlet med något korrigerade V-TIM-mappningar, och lagt till en kolumn med mappningar mot NPÖ i tillämpliga fall. | Björn Genfors |
| 3.1 | RC2 | 2015-05-12 | Korrigerat HSA-id som skall användas vid addressering till Inera. | Khaled Daham |
| 3.1 | RC3 | 2015-06-23 | Rättat filnanmn på wsdl och xsd för GetReferralOutcome och GetLaboratoryOrderOutcome (3.0 -> 3.1) / Tagit bort upprepande HSA-id för Inera | Khaled Daham |
| 3.1.1 | - | 2015-09-08 | Uppdaterat NPÖ-mappningen för GetImageOutcome och GetECGOutcome | Björn Genfors |
| 3.1.1 | - | 2015-09-09 | Förtydligat beskrivning för accountableHCPCareUnitHSAId och accountableHCPCareGiverHSAId i GEO och GIO. | Björn Genfors |
| 3.1.1 | - | 2015-09-15 | Lagt till mappning till imageRecordingType.examinationUnit som saknades | Björn Genfors |
| 3.1.1 | - | 2015-09-18 | Lagt till mappningar för documentTime för GLOO | Björn Genfors |
| 3.1.1 | - | 2015-09-30 | Justerat ”klartext” för typeOfResult i GLOO | Björn Genfors |
| 3.1.1 | - | 2015-10-01 | Kompletterat NPÖ- och V-TIM-mappning för GRO | Björn Genfors |
| 3.1.1 | - | 2015-11-03 | Rättat kardinalitet på HSAid för GetECGOutcome.referral.accountableHealthcareProfessional.healthcareProfessionalHSAId samt healthcareProfessionalName (MIM och schema var rätt, fältregeltabell var fel) issue: https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/issues/349 / Rättat schematron-regel som krävde healthcareProfessionalHSAId på referral / Rättat schematron-regel för examinationStatus, regeln antog att det var en CVType fast det är en enum. / Åtgärdat issue https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/issues/346 | Khaled Daham |
| - | - | 2015-11-27 | Ändrat kardinalitet för HSAid i GLOO healthcareProfessionalHSAId enligt / https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/issues/356/gloo-kr-ver-hsa-id-p-utf-rande-personal-i | Helena Antonsson |
| - | - | 2015-11-27 | Uppdaterat mappningstabell för ”attested” i GIO och GEO | Björn Genfors |
| - | - | 2015-11-04 | Svarstider för SLA ändrat ifrån 15 sekunder till 30 sekunder | Björn Genfors |
| - | - | 2015-12-14 | Issue 355, ändrat kardinalitet på recordingId i GIO från 1..1 till 0..1 / Issue 357, Ändrat kardinalitet på attesterHSAId från 1..1 till 0..1 / Uppdaterat MIM’ar / Uppdaterat test-sviter (SLA timeout, schema-ändringar) / Lagt till regel för multimedia (binära bilagor) | Khaled Daham |
| 3.1.2 | - | 2016-02-01 | Enligt Issue #362 / Uppdaterat texten kring careUnitHSAId för GLOO och GMMH, för att åtgärda ett klipp-och-klistra-fel. / Förtydligat vem ”ansvarig för svar” innebär i GLOO. | Björn Genfors |
| - | - | 2016-02-03 | Enligt Issue #361 / Uppdaterat kardinalitet till 0..1 på attributen typeOfResult, resultTime och resultReport i GEO. / Utöver detta / Tagit bort alla referenser till ResultType i GEO (städjobb, borde gjorts i en tidigare uppdatering) | Björn Genfors |
| 3.1.2 | - | 2016-02-25 | Uppdaterat beskrivningen för legalAuthenticator (när informationen har låsts utan signering)( issue 334 på bitbucket) | Ranjdar Fallyih |
| 3.1.3 | - | 2016-05-19 | Åtgärdat felstavningar i fältregeltabellen / #366 / #367 | Khaled Daham |
| 3.1.3 | - | 2016-10-14 | Åtgärdat felstavningar i fältregeltabellen, #378 #377 | Khaled Daham |
| 3.1.3 | - | 2016-11-22 | Uppdaterat TKB enligt BB-ärenden 365 (förtydliganden i fältregler), 375 (rättning av kardinalitet i header i GLOO) och 379 (rättning av datatyp i GEO) | Björn Genfors |
| 3.1.3 | - | 2016-11-24 | Korrigerat färg i fältregeltabeller på element som inte skall användas, ärende #369 / Noterat stavfel för burnedInaAnnotations, ärende #372 | Khaled Daham |
| 3.1.4 | RC2 | 2017-04-19 | Testsviter uppdaterade | Björn Pettersson |
| 3.1.x | - | 2017-08-07 | Ändrat färg ifrån röd till svart på kardinaliteter i fältregeltabellen för GLOO där röd färg inte signalerar någon speciell betydelse. https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/issues/386/diverse-i-gloo-31 | Khaled Daham |
| 3.1.7 | - | 2018-01-19 | Tagit bort skrivning om GRO att poster ska sorteras i fallande datumordning, ärende #388 / Förtydligat i fältet imagingOutcomeHeader.legalAuthenticator i GIO att det normalt är radiologen som signerar bilddiagnostiska svar, ärende #384 / Lagt till fältet result i fältreglerna för GetImagingOutcome, ärende #387 | Emmy Damberg |
| 3.1.7 | - | 2018-10-10 | Test: Uppdateringar i SJD och testförbättringar i testsviter, framförallt tidsfiltrering. Testsvit 7 & ev 8 tillkommit. | Magnus Söderlind |
| 3.1.7 | - | 2019-03-25 | Lagt till SjD för konsument och uppdaterat mock | Jan Söderman |
| 3.1.7 | - | 2019-04-17 | Ny testsvit och självdeklaration | Jan Söderman |
| 3.1.8 | - | 2020-10-28 | Borttag av tjänstekontraktet GetECGOutcome | Thomas Siltberg |
| 3.1.8 | - | 2020-12-01 | Förtydligan av attributet orderID i GetLaboratoryOrderOutcome | Tobias Blomberg |
| 3.1.8 | - | 2021-01-05 | Bytt ut Soap exception mot Soap fault https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/issues/389/byt-till-soap-fault | Claudia Ehrentraut |
| 3.1.8 | - | 2021-02-24 | Tagit bort hänvisning till NPÖ Riv 2.2.0 / Tagit bort mappning mot NPÖ och V-tim / Rättat skrivelse i övriga regler för samtliga kontrakt gällande sammanhållen journalföring / Ändrat hänvisning till vård-och omsorgspersonal till hälso-och sjukvårdspersonal / Laggt till referens till ark_0040 / Ändrat förklaringar till förkortningar / Uppdaterat länkar / Ersatt SOSFS 2008:14 med HSLF-FS 2016:40 / Bytt ut alla förekomster av skall till ska och förekomster av oid till OID / Uppdaterat kapitel 4.3 / Uppdaterat information om låsning i legalAuthenticatorType / Uppdaterat beskrivning av documentId i PatientSummaryHeader / -Uppdaterat beskrivning av tidsfiltrering i samtliga tjänstekontrakt / Uppdaterat beskrivning av attributet Most Recent Content i avsnitt 4.1. / Uppdaterat beskrivningen av attributet authorTime i strukturen ImageRecording i GIO / Uppdaterat beskrivningen av attributet imagingOutcomeBody.typeOfResult i GIO. | Tobias Blomberg |
| 3.1.9 | RC1 | 2021-09-07 | GetMaternityMedicalHistory backad från version 3.0 till version 2.0, då version 3.0 inte är fastställd genom att ta bort attributet ../../../plasmaGlucose / Uppdaterat beskrivningarna på samtliga tjänstekontrakt | Tobias Blomberg |
| 3.1.9 | RC1 | 2021-11-29 | Korrigerat OID för bodyPartExamined i svar på GetImagingOutcome. | Per Carlén |
| 3.1.9 | RC1 | 2021-12-07 | Uppdaterat beskrivningarna för ../../documentTime och ../../../authorTime i GLOO, GRO och GMMH | Tobias Blomberg |
| 3.1.9 | RC2 | 2022-01-12 | Ändrat backningen av GMMH genom att återigen lägga till attributet ../../../plasmaGlucose och istället rödmarkera denna och ändra multipliciteten till 0..0 | Tobias Blomberg |
| 3.1.9 | RC3 | 2022-02-22 | Återigen tagit bort ../../../plasmaGlucose i GMMH för att matcha schemat. Uppdaterat V-MIM för GMMH. | Tobias Blomberg |
| 3.1.9 | - | 2022-04-07 | Version fastställd | Tobias Blomberg |
| 3.1.10 | - | 2026-06-03 | Uppdaterat beskrivningen av SourceSystemHSAId i samtliga tjänstekontrakts begäran / Tagit bort texten som beskriver hur låsning av journalinformation ska ske då låsning av journalanteckningar inte längre är aktuellt. / Justerat texten under kap. 4.3.1 SLA krav från “Svarstiden för ett anrop får inte överstiga 30 sekunder” till “Svarstiden för ett anrop får inte överstiga 27 sekunder” / Ändrat från Datainspektionen till Integritetsskyddsmyndigheten | Tobias Blomberg |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R 1 | AB_clinicalprocess_healthcond_actoutcome.docx | Obligatoriskt | Bilaga |
| R 2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/documents/ |
| R 3 | Bilaga_Gemensamma_typer_4.pdf |  | Bilaga |
| R 4 | RIV Tekniska Anvisningar Översikt Utgåva E | Finns på Webben | http://rivta.se/documents/ARK_0001/ |
| R 5 | Lista över vanligt förekommande kodverk och identifierare |  | https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655 / https://inera.atlassian.net/wiki/spaces/KINT/pages/468746902 |
| R 6 | CDA-mappning av konsultationsremissvar |  | Bilaga MIM_Mappningar_GetReferralOutcome.xlsx |
| R 7 | CDA-mappning av labbsvar |  | Bilaga MIM_Mappningar_GetLaboratoryOrderOutcome.xlsx |
| R 8 | Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården | Finns på Webben | https://www.socialstyrelsen.se/globalassets/sharepoint-dokument/artikelkatalog/handbocker/2017-3-2.pdf |
| R 9 | ISO8601-standarden för tidsformat | Finns på Webben | http://en.wikipedia.org/wiki/ISO_8601 |
| R 10 | Tabell över godkända tjänstedomäner | Finns på Webben | https://code.google.com/p/rivta/wiki/ServiceDomainTable |
| R11 | Ärendehantering | Finns på Webben | Ärendehantering |
| R12 | Hantering av binära bilagor | Finns på Webben | http://rivta.se/documents/ARK_0038/ |
| R13 | ARK-0040 - RIV Tekniska Anvisningar - Parallella huvudversioner av ett tjänstekontrakt |  | http://rivta.se/documents/ARK_0040/ |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| K | Tjänstekonsument | Se referens R4 |
| AP | Anslutningspunkt | Se referens R4 |
| P | Tjänsteproducent | Se referens R4 |
| KS | Källsystem | Se referens R4 |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
clinicalprocess: healthcond: actoutcome
Denna domän hanterar information gällande utfall av olika undersökningar och aktiviteter, till exempel laboratoriesvar och bilddiagnostik. Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den ska fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Vård- och omsorg kärnprocess: hantera hälsorelaterade tillstånd: utfall av aktivitet
Utfall av aktivitet

### WEB beskrivning
Tjänstedomänen syftar till att tillmötesgå behovet av både patientens och vårdprofessionens direktåtkomst till patientens vårdinformation.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen clinicalprocess: healthcond: actoutcome.
Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte ska brytas.

### Version 3.1.10

#### Oförändrade tjänstekontrakt
GetImagingOutcome, version 1.0
GetLaboratotyOrderOutcome, version 3.1
GetFeferralOutcome, version 3.1

#### Nya tjänstekontrakt
Inga nya tjänstekontrakt finns från och med version 3.1.9:

#### Förändrade tjänstekontrakt
GetMaternityMedicalHistory backad från version 3.0 till version 2.0, då version 3.0 inte är fastställd.
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetLaboratoryOrderOutcome | 3.0 | 3.1 | Kompatibel |
|  | 3.1 | 3.0 | Kompatibel |
| GetReferralOutcome | 3.0 | 3.1 | Kompatibel |
| GetReferralOutcome | 3.1 | 3.0 | Kompatibel |

#### Utgångna tjänstekontrakt

### Version tidigare
3.1.9

## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Tjänsterna för beskrivning av hälsorelaterade tillstånd erbjuder sökning av information i hälso- och sjukvårdsgivarnas system för patientadministration och vårddokumentation. Utgångspunkten för tjänsterna i denna tjänstedomän är i första hand patientens och professionens behov av direktåtkomst till en patients hälso- och sjukvårdshistorik sett ur ett nationellt eller ett regionalt perspektiv. I båda fallen är syftet att historisk information sammanställs från det eller de källsystem där det finns historik via s.k. aggregerande tjänster, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det specifika systemet, istället för den aggregerande tjänsten.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna.

### Flöden
Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras.

##### Arbetsflöde

![img_005.png](images/img_005.png)
*Figur 1 Exempel: Adressering vid anrop till aggregerande tjänst från patienttjänst (t.ex. från Mina Vårdkontakters tjänst för journalåtkomst)*

![img_004.png](images/img_004.png)
*Figur 2 Exempel: Adressering vid anrop till aggregerande vårdgivartjänst (t.ex. från NPÖ-tillämpningen).*

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Patienten | Den patient som vill få tillgång till information som tjänsterna tillhandahåller. |
| Professionen | Den hälso-och sjukvårdsperson som vill få tillgång till patientens data. |

##### Sekvensdiagram

![Figur 3 Sekvensdiagram över sökning efter information där GetMaternityMedicalHistory används som exempel men samma princip gäller för alla kontrakt i tjänstedomänen, diagrammet visar på två alternativa sekvenser där det första alternativet gäller när aggregerande tjänster adresseras och det andra alternativet gäller när källsystemet adresseras.](images/img_002.png)

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Aggregerande tjänst | En aggregerande tjänst är en integrationstjänst som för en tjänstekonsument sammanställer en nationell vy av informationen av den typ som är aktuell för tjänsten i fråga. Är beroende av engagemangsindex för att begränsa sökningen till relevanta informationsägare. |
| Engagemangsindex | En tjänst där det finns uppdaterade nationella index över vilka informationsägare som har information kring en viss invånare/patient. |
| Tjänsteproducent | Det system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

#### Obligatoriska kontrakt
Tjänstedomänen definierar inga flöden, alla tjänstekontrakt är frivilliga.

### Adressering
Tjänstedomänen tillämpar källsystem-adressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA-id. Det sker genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSA-id finns då i svarsmeddelandet) eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direktadressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten.
Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt, Rev PD2, avsnitt 8.3 (referens [R 4]), där mer information kan hittas.

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

### Annat
Det finns ej annat att beskriva kring tjänstedomänens arkitetur.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Uppdatering  av engagemangsindex
Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.
All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”).
Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning för detaljer (se referens[R 10]).
Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| Attribut | Beskrivning | Format | Kardinalitet | Kodverk/värde-mängd 
/ev begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens person-nummer | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). | 1..1 |  | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän>. | 1..1 | Värdet ska vara ”riv:clinicalprocess:healthcond:actoutcome” | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Informationsmängd som finns i källsystemet för angiven patient och som indexposten avser. Anges med kortform enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Samma värde som fältet Source System. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – dvs ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Tidpunkt för senaste uppdatering av den informationstyp och patient i den källa som denna indexpost avser. | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttag. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. post uppdateras med tidpunkt för borttagshändelsen. |  |
| Creation / Time | Tidpunkten då index-posten regi-strerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Uppdatering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Käll-systemet som genererade engage-mangs-posten via Update-tjänsten | Systemets HSA-id.  För system-adresserade tjänstedomäner motsvarar detta LogicalAddress vid anrop till tjänster i tjänstedomänen i fråga. Detta är inte anslutningspunktens HSA-id utan systemet som operativt hanterar informationen i verksamheten. | 1..1 | Systemadressering tillämpas. Detta värde används som LogicalAddress vid tjänsteanrop. | Del av instansens unikhet |
| Data Controller | Personuppgitsansvarig organisation | Ett värde som i källsystemet med id SourceSystem unikt identifierar PU-ansvarig organisation. | 1..1 | ”SE”<organisationsnummer>, (t ex: ”SE5565594230”), HSA-id, eller systemspecifik identitet. | Del av instansens unikhet |
Regler för tilldelning av värde i fältet Categorization i engagemangsposten i denna domän:

| Infomängd enl. Tjänstekontrakt | Värde på Categorization |
| :--- | :--- |
| GetMaternityMedicalHistory | utr-mtr |
| GetReferralOutcome | und-kon-ure |
| GetLaboratoryOrderOutcome | und-kkm-ure |
| GetImagingOutcome | und-bdi-ure |

### Informationssäkerhet och juridik

#### Medarbetarens direktåtkomst
Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till sammanhållen journal för att patientdatalagen efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke, vårdrelation och åtkomstloggning måste följas. Dessutom finns krav från Integritetsskyddsmyndigheten om ytterligare teknisk åtkomstkontroll.
HSLF-FS 2016:40 ställer också krav (via ”Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) se referens R8) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet).
Det kompletta regelverket finns i handboken samt i anvisningar för tillgänglig patient.
Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande sammanhållen journalföring och eller krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vårdgivare (sammanhållen journalföring) eller andra vårdenheter inom egna vårdgivaren (spärrkrav).

#### Patientens direktåtkomst
Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten (informationsägaren) godkänt att informationen får visas för patient. Det kan t.ex. ha skett genom menprövning eller rådrum. För vissa tjänstekontrakt, såsom Hälso- och sjukvårdskontakter, kanske informationsägaren policymässigt har menprövat all information. Det är varje vårdgivares ansvar att tjänsteproducenten sätter ”kan visas för patient”-flaggan i enlighet med vårdgivarens verksamhetsregler.

#### Generellt
Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens (tjänstens) identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument varit exkluderade i frågan.

### Icke funktionella krav
Det är den informationsproducerande vårdgivarens ansvar att endast ett källsystem tillhandahåller informationen via lästjänst och engagemangsindex där patientdata lagras i flera källsystem. Konsumenter som är anslutna till flera majorversioner av samma kontrakt måste hantera dubblettborttagning mellan dessa. Detta sker genom att jämföra identiteter på postnivå och endast behålla en av de poster som returnerats, se R13.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.
Följande SLA-krav gäller för producenter av tjänstekontrakten i denna domän.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | Svarstiden för ett anrop får inte överstiga 27 sekunder. | Svarstid |
| Tillgänglighet | 24x7, 99,5% | Tillgänglighet |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet journaluppdatering per dygn. | Last |
| Aktualitet | Kraven på aktualitet varierar för olika tjänstekonsumenter. Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. Fördröjningen avser både journaldata och uppdatering av engagemangsindex. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. | Aktualitet |
| Robusthet | Om komplett tidsintervall inte angivits i frågan kan tjänsteproducenten kan välja att lämna ett delsvar i syfte att uppfylla svarstidskravet. Delsvaret måste då vara avgränsat i tiden genom att det finns äldre men inte nyare data än det äldsta som returnerats. | Robusthet |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. | Samtidighet |

#### Övriga krav

##### Gemensamma konsumentregler
R1: Filtrera enligt flagga ”patientAccessAllowed”
R2: Tillämpa regelverk enl. PDL

##### Gemensamma producentregler
R3: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.

##### Format för datum och tidpunkter
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar ISO 8601-kompatibla formatbeskrivningen ”YYYYMMDD” (se referens [R 9]).
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

##### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Vid ett logiskt fel ska result.resultCode sättas till ERROR och result.errorCode enligt nedanstående tabell, om result.message innehåller ett meddelande så ska det vara sådant att det kan visas för en användare. Respektive kontrakt beskriver närmare vilka logiska fel som ska returneras.

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| Ogiltig begäran | INVALID_REQUEST | Informationsmängden som skickats är ej korrekt utifrån de regler som gäller för tjänstekontraktet. En förklarande result.message kan närmare peka på vilken regel som ej efterföljts. / En omsändning av information kommer att ge samma fel. |

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga krav på konsument.

##### Tekniska fel
Inga krav på konsument.

## Gemensamma informationskomponenter
I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa meddelanden i flera domäner eller inom denna domän. Observera att med anledning av att tjänstekontrakten även kan stödjas av producentsystem som saknar (fullständig) HSAid-information så är HSAid-attribut i beskrivningarna nedan valfria. Se även avsnittet ”Informationssäkerhet och juridik” ovan.
De gemensamma typerna beskrivs i bilaga/bilagor med namn ”Bilaga_Gemensamma_typer_<version>.pdf”. Hänvisad <version> anges vid respektive tjänstekontrakt enligt nedan.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot schema (XSD) för tjänstekontrakt.

### V-MIM

#### GetReferralOutcome
Meddelandeformatet är kompatibelt med HL7 v. 3 CDA v. 2 och NPÖ RIV Informationsspecifikation 2.2.0, V-MIM ”Undersökningsresultat Övrig undersökning”, enligt beskrivning i bilaga, se referens [R 6].

![img_006.png](images/img_006.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| ReferralOutcomeType |  |
| ReferralOutcomeHeaderType.documentId | referralOutcome/referralOutcomeHeader/documentId |
| ReferralOutcomeHeaderType.sourceSystemHSAId | referralOutcome/referralOutcomeHeader/sourceSystemHSAId |
| ReferralOutcomeHeaderType.documentTitle | referralOutcome/referralOutcomeHeader/documentTitle |
| ReferralOutcomeHeaderType.documentTime | referralOutcome/referralOutcomeHeader/documentTime |
| ReferralOutcomeHeaderType.patientId | referralOutcome/referralOutcomeHeader/patientId |
| ReferralOutcomeHeaderType.accountableHealthcareProfessional | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional |
| HealthcareProfessionalType.authorTime | referralOutcome/referralOutcomeHeader/ accountableHealthcareProfessional /authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| OrgUnitType.orgUnitHSAId | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| OrgUnitType.orgUnitname | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| OrgUnitType.orgUnitTelecom | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| OrgUnitType.orgUnitEmail | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| OrgUnitType.orgUnitAddress | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| OrgUnitType.orgUnitLocation | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.signatureTime | referralOutcome/referralOutcomeHeader/legalAuthenticator/signatureTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | referralOutcome/referralOutcomeHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | referralOutcome/referralOutcomeHeader/legalAuthenticator/legalAuthenticatorName |
| ReferralOutcomeHeaderType.approvedForPatient | referralOutcome/referralOutcomeHeader/approvedForPatient |
| ReferralOutcomeHeaderType.careContactId | referralOutcome/referralOutcomeHeader/careContactId |
| ReferralOutcomeBodyType |  |
| ReferralOutcomeBodyType.referralOutcomeTypeCode | referralOutcome/referralOutcomeBody/referralOutcomeTypeCode |
| ReferralOutcomeBodyType.referralOutcomeTitle | referralOutcome/referralOutcomeBody/referralOutcomeTitle |
| ReferralOutcomeBodyType.referralOutcomeText | referralOutcome/referralOutcomeBody/referralOutcomeText |
| ClinicalInformationType.clinicalInformationCode | referralOutcome/referralOutcomeBody/clinicalInformation/clinicalInformationCode |
| ClinicalInformationType.clinicalInformationText | referralOutcome/referralOutcomeBody/clinicalInformation/clinicalInformationText |
| ActType.actId | referralOutcome/referralOutcomeBody/act/actId |
| ActType.actCode | referralOutcome/referralOutcomeBody/act/actCode |
| ActType.actText | referralOutcome/referralOutcomeBody/act/actText |
| ActType.actTime | referralOutcome/referralOutcomeBody/act/actTime |
| ActType.actResult | referralOutcome/referralOutcomeBody/act/actResult |
| ReferralType.referralId | referralOutcome/referralOutcomeBody/referral/referralId |
| ReferralType.referralReason | referralOutcome/referralOutcomeBody/referral/referralReason |
| ReferralType.referralTime | referralOutcome/referralOutcomeBody/referral/referralTime |
| ReferralType.referralAuthor | referralOutcome/referralOutcomeBody/referral/referralAuthor |
| HealthcareProfessionalType.authorTime | referralOutcome/referralOutcomeBody/referral/referralAuthor/authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalRoleCode |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitHSAId | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitName | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitName |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitTelecom | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitEmail | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitAddress | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitLocation | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitLocation |
| ReferralType.careContactId | referralOutcome/referralOutcomeBody/referral/careContactId |
| ResultType | result |
| ResultType.resultCode | result/resultCode |
| ResultType.errorCode | result/errorCode |
| ResultType.subcode | result/subcode |
| ResultType.logId | result/logId |
| ResultType.message | result/message |

#### GetMaternityMedicalHistory
Modellen beskriver den logiska strukturen för ett svarsmeddelande. Tjänsten baseras inte på RIV Informationsspecifikation för NPÖ eller VTIM, utan på Socialstyrelsens blanketter för mödravårdsjournal.

![img_001.jpeg](images/img_001.jpeg)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| MaternityMedicalHistoryType |  |
| MaternityMedicalHistoryHeaderType.documentId | maternityMedicalHistory/maternityMedicalHistoryHeader/documentId |
| MaternityMedicalHistoryHeaderType.sourceSystemHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/sourceSystemHSAId |
| MaternityMedicalHistoryHeaderType.patientId | maternityMedicalHistory/maternityMedicalHistoryHeader/patientId |
| MaternityMedicalHistoryHeaderType.accountableHealthcareProfessional | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional |
| HealthcareProfessionalType.authorTime | maternityMedicalHistory/maternityMedicalHistoryHeader/ accountableHealthcareProfessional /authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| OrgUnitType.orgUnitHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| OrgUnitType.orgUnitname | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| OrgUnitType.orgUnitTelecom | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| OrgUnitType.orgUnitEmail | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| OrgUnitType.orgUnitAddress | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| OrgUnitType.orgUnitLocation | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.signatureTime | maternityMedicalHistory/maternityMedicalHistoryHeader/legalAuthenticator/signatureTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | maternityMedicalHistory/maternityMedicalHistoryHeader/legalAuthenticator/legalAuthenticatorName |
| MaternityMedicalHistoryHeaderType.approvedForPatient | maternityMedicalHistory/maternityMedicalHistoryHeader/approvedForPatient |
| MaternityMedicalHistoryHeaderType.careContactId | maternityMedicalHistory/maternityMedicalHistoryHeader/careContactId |
| MaternityMedicalHistoryBodyType |  |
| RegistrationRecordType.lastMenstrualPeriod | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/lastMenstrualPeriod |
| RegistrationRecordType.indicationPregnancy | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/indicationPregnancy |
| RegistrationRecordType.contraceptiveDiscontinued | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/contraceptiveDiscontinued |
| RegistrationRecordType.expectedDayOfDeliveryFromLastMenstrualPeriod | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/expectedDayOfDeliveryFromLastMentrualPeriod |
| RegistrationRecordType.expectedDayOfDeliveryFromUltrasoundScan | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/expectedDayOfDeliveryFromUltrasoundScan |
| RegistrationRecordType.expectedDayOfDeliveryFromEmbryonicTransfer | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/expectedDayOfDeliveryFromEmbryonicTransfer |
| RegistrationRecordType.length | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/length |
| RegistrationRecordType.weight | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/weight |
| RegistrationRecordType.bodyMassIndex | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/bodyMassIndex |
| RegistrationRecordType.infertility | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/infertility |
| PreviousGravidityAndParityType.year | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/year |
| PreviousGravidityAndParityType.delivery | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/delivery |
| PreviousGravidityAndParityType.healthcareFacility | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/healthcareFacility |
| PreviousGravidityAndParityType.progress | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/progress |
| PreviousGravidityAndParityType.sex | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/sex |
| PreviousGravidityAndParityType.weightOfChild | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/weightOfChild |
| PreviousGravidityAndParityType.gestation | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/gestation |
| PreviousGravidityAndParityType.diseasesThrombosis | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/diseasesThrombosis |
| PreviousGravidityAndParityType.diseasesEndocrineDiseases | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/diseasesEndocrineDiseases |
| PreviousGravidityAndParityType.diseasesReccurentUrinaryTractInfections | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/diseasesRecurrentUrinaryTractInfections |
| PreviousGravidityAndParityType.diseasesDiabetesMellitus | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/diseasesDiabetesMellitus |
| PreviousGravidityAndParityType.assessmentAtFirstContactStandardCare | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/assessmentAtFirstContactStandardCare |
| PregnancyCheckupRecordType.completeWeeksOfGestation | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/completeWeeksOfGestation |
| PregnancyCheckupRecordType.weight | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/weight |
| PregnancyCheckupRecordType.symphysisFundalHeight | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/symphysisFundalHeight |
| PregnancyCheckupRecordType.haemoglobin | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/haemoglobin |
| PregnancyCheckupRecordType.bloodPressureSystolic | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/bloodPressureSystolic |
| PregnancyCheckupRecordType.bloodPressureDiastolic | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/bloodPressureDiastolic |
| PregnancyCheckupRecordType.proteinuria | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/proteinuria |
| PregnancyCheckupRecordType.glycosuria | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/glycosuria |
| PregnancyCheckupRecordType.fetalPosition | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/fetalPosition |
| PregnancyCheckupRecordType.fetalPresentation | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/fetalPresentation |
| PregnancyCheckupRecordType.fetalHeartRate | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/fetalHeartRate |
| PregnancyCheckupRecordType.typeOfLeave | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/typeOfLeave |
| MotherPostDeliveryRecordType.breastfeeding | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/completeWeeksOfGestation |
| MotherPostDeliveryRecordType.bloodPressureSystolic | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/bloodPressureSystolic |
| MotherPostDeliveryRecordType.bloodPressureDiastolic | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/bloodPressureDiastolic |
| MotherPostDeliveryRecordType.haemoglobin | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/haemoglobin |
| MotherPostDeliveryRecordType.bodyTemperature | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/bodyTemperature |
| MotherPostDeliveryRecordType.scarsOK | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/scarsOK |
| MotherPostDeliveryRecordType.sutureRemoved | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/sutureRemoved |
| MotherPostDeliveryRecordType.perineumComfortable | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/perineumComfortable |
| MotherPostDeliveryRecordType.vulvaVaginaPortioOK | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/vulvaVaginaPortioOK |
| MotherPostDeliveryRecordType.uterusContracted | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/uterusContracted |
| MotherPostDeliveryRecordType.uterusNote | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/uterusNote |
| ChildPostDeliveryRecordType.ordinalNumber | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/childPostDeliveryRecord/ordinalNumber |
| ChildPostDeliveryRecordType.weight | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/childPostDeliveryRecord/weight |
| ChildPostDeliveryRecordType.apgarScore1 | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/childPostDeliveryRecord/apgarScore1 |
| ChildPostDeliveryRecordType.apgarScore5 | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/childPostDeliveryRecord/apgarScore5 |
| ChildPostDeliveryRecordType.apgarScore10 | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/childPostDeliveryRecord/apgarScore10 |
| MedicationType.medicament | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/medicationDuringPregnancy/medicament / och / maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/medicationSinceRegistration/medicament |
| MedicationType.dosage | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/medicationSinceRegistration/dosage |
| ResultType | result |
| ResultType.resultCode | result/resultCode |
| ResultType.errorCode | result/errorCode |
| ResultType.subcode | result/subcode |
| ResultType.logId | result/logId |
| ResultType.message | result/message |

#### GetLaboratoryOrderOutcome
Meddelandeformatet är kompatibelt med HL7 v. 3 CDA v. 2 och NPÖ RIV Informationsspecifikation 2.2.1, V-MIM ”Undersökningsresultat Klinisk kemi/Mikrobiologi”, enligt beskrivning i bilaga, se referens [R 7].

![img_003.png](images/img_003.png)

| Klass.attribut i MIM | Mappning mot XSD schema |
| :--- | :--- |
| LaboratoryOrderOutcomeType |  |
| LaboratoryOrderOutcomeHeaderType.documentId | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/documentId |
| LaboratoryOrderOutcomeHeaderType.sourceSystemHSAId | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/sourceSystemHSAId |
| LaboratoryOrderOutcomeHeaderType.documentTime | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/documentTime |
| LaboratoryOrderOutcomeHeaderType.patientId | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/patientId |
| LaboratoryOrderOutcomeHeaderType.accountableHealthcareProfessional | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional |
| HealthcareProfessionalType.authorTime | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/ accountableHealthcareProfessional /authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| OrgUnitType.orgUnitHSAId | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| OrgUnitType.orgUnitname | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| OrgUnitType.orgUnitTelecom | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| OrgUnitType.orgUnitEmail | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| OrgUnitType.orgUnitAddress | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| OrgUnitType.orgUnitLocation | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.signatureTime | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/legalAuthenticator/signatureTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/legalAuthenticator/legalAuthenticatorName |
| LaboratoryOrderOutcomeHeaderType.approvedForPatient | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/approvedForPatient |
| LaboratoryOrderOutcomeHeaderType.careContactId | laboratoryOrderOutcome/laboratoryOrderOutcomeHeader/careContactId |
| LaboratoryOrderOutcomeBodyType |  |
| LaboratoryOrderOutcomeBodyTypeBodyType.typeOfResult | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/typeOfResult |
| LaboratoryOrderOutcomeBodyType.registrationTime | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/registrationTime |
| LaboratoryOrderOutcomeBodyType.discipline | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/discipline |
| LaboratoryOrderOutcomeBodyType.resultReport | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/resultReport |
| LaboratoryOrderOutcomeBodyType.resultComment | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/resultComment |
| LaboratoryOrderOutcomeBodyType.accountableHealthcareProfessional | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional |
| HealthcareProfessionalType.authorTime | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional/authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| OrgUnitType.orgUnitHSAId | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| OrgUnitType.orgUnitname | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitName |
| OrgUnitType.orgUnitTelecom | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| OrgUnitType.orgUnitEmail | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| OrgUnitType.orgUnitAddress | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| OrgUnitType.orgUnitLocation | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| AnalysisType.analysisId | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisId |
| AnalysisType.analysisTime | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisTime |
| AnalysisType.analysisCode | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisCode |
| AnalysisType.analysisText | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisText |
| AnalysisType.analysisStatus | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisStatus |
| AnalysisType.analysisComment | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisComment |
| AnalysisType.specimen | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/specimen |
| AnalysisType.method | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/method |
| RelationToAnalysisType.analysisId | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/relationToAnalysis/analysisId |
| AnalysisOutcomeType.outcomeValue | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisOutcome/outcomeValue |
| AnalysisOutcomeType.outcomeUnit | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisOutcome/outcomeUnit |
| AnalysisOutcomeType.observationTime | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisOutcome/observationTime |
| AnalysisOutcomeType.pathologicalFlag | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisOutcome/pathologicalFlag |
| AnalysisOutcomeType.outcomeDescription | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisOutcome/outcomeDescription |
| AnalysisOutcomeType.referenceInterval | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisOutcome/referenceInterval |
| AnalysisOutcomeType.referencePopulation | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/analysis/analysisOutcome/referencePopulation |
| OrderType.orderId | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/order/orderId |
| OrderType.orderReason | laboratoryOrderOutcome/laboratoryOrderOutcomeBody/order/orderReasion |
| ResultType | result |
| ResultType.resultCode | result/resultCode |
| ResultType.errorCode | result/errorCode |
| ResultType.subcode | result/subcode |
| ResultType.logId | result/logId |
| ResultType.message | result/message |

#### GetImagingOutcome

![img_007.png](images/img_007.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| PatientSummaryHeaderType.documentId | ImagingOutcome/ImagingOutcomeHeader/documentId |
| PatientSummaryHeaderType.sourceSystemHSAId | ImagingOutcome/ImagingOutcomeHeader/sourceSystemHSAId |
| PatientSummaryHeaderType.documentTitle | ImagingOutcome/ImagingOutcomeHeader/documentTitle |
| PatientSummaryHeaderType.documentTime | ImagingOutcome/ImagingOutcomeHeader/documentTime |
| PatientSummaryHeaderType.patientId | ImagingOutcome/ImagingOutcomeHeader/patientId |
| PatientSummaryHeaderType.approvedForPatient | ImagingOutcome/ImagingOutcomeHeader/approvedForPatient |
| PatientSummaryHeaderType.careContactId | ImagingOutcome/ImagingOutcomeHeader/careContactId |
| PatientSummaryHeaderType.nullified | ImagingOutcome/ImagingOutcomeHeader/nullified |
| PatientSummaryHeaderType.nullifiedReason | ImagingOutcome/ImagingOutcomeHeader/nullifiedReason |
| HealthcareProfessionalType.authorTime | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| OrgUnitType.orgUnitHSAId | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitHSAId |
| OrgUnitType.orgUnitName | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitName |
| OrgUnitType.orgUnitTelecom | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitTelecom |
| OrgUnitType.orgUnitEmail | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitEmail |
| OrgUnitType.orgUnitAddress | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitAddress |
| OrgUnitType.orgUnitLocation | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitLocation |
| LegalAuthenticatorType.signatureTime | ImagingOutcome/ImagingOutcomeHeader/LegalAuthenticator/signatureTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | ImagingOutcome/ImagingOutcomeHeader/LegalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | ImagingOutcome/ImagingOutcomeHeader/LegalAuthenticator/legalAuthenticatorName |
| LegalAuthenticatorType.legalAuthenticatorRoleCode | ImagingOutcome/ImagingOutcomeHeader/LegalAuthenticator/legalAuthenticatorRoleCode |
| ImageBodyType |  |
| ImageBodyType.examinationSpeciality | ImagingOutcome/ImagingOutcomeBody/examinationSpeciality |
| PatientDataType.patientWeight | ImagingOutcome/ImagingOutcomeBody/PatientData/patientWeight |
| PatientDataType.patientLength | ImagingOutcome/ImagingOutcomeBody/PatientData/patientLength |
| ImageBodyType.typeOfResult | ImagingOutcome/ImagingOutcomeBody/typeOfResult |
| ImageBodyType.resultTime | ImagingOutcome/ImagingOutcomeBody/resultTime |
| ImageBodyType.resultReport | ImagingOutcome/ImagingOutcomeBody/resultReport |
| ImageBodyType.resultComment | ImagingOutcome/ImagingOutcomeBody/resultComment |
| ImageBodyType.radiationDose | ImagingOutcome/ImagingOutcomeBody/radiationDose |
| ReferralType.referralId | ImagingOutcome/ImagingOutcomeBody/Referral/referralId |
| ReferralType.referralReason | ImagingOutcome/ImagingOutcomeBody/Referral/referralReason |
| ReferralType.anamnesis | ImagingOutcome/ImagingOutcomeBody/Referral/anamnesis |
| ReferralType.careContactId | ImagingOutcome/ImagingOutcomeBody/Referral/careContactId |
| HealthcareProfessionalType.authorTime | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| OrgUnitType.orgUnitHSAId | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitHSAId |
| OrgUnitType.orgUnitName | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitName |
| OrgUnitType.orgUnitTelecom | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitTelecom |
| OrgUnitType.orgUnitEmail | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitEmail |
| OrgUnitType.orgUnitAddress | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitAddress |
| OrgUnitType.orgUnitLocation | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitLocation |
| ReferralType.attested | ImagingOutcome/ImagingOutcomeBody/Referral/Attested |
| LegalAuthenticatorType.signatureTime | ImagingOutcome/ImagingOutcomeBody/Referral/Attested/signatureTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | ImagingOutcome/ImagingOutcomeBody/Referral/Attested/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | ImagingOutcome/ImagingOutcomeBody/Referral/Attested/legalAuthenticatorName |
| LegalAuthenticatorType.legalAuthenticatorRoleCode | ImagingOutcome/ImagingOutcomeBody/Referral/Attested/legalAuthenticatorRoleCode |
| ImageRecordingType.id | ImagingOutcome/ImagingOutcomeBody/ImageRecording/id |
| ImageRecordingType.examinationActivity | ImagingOutcome/ImagingOutcomeBody/ImageRecording/examinationActivity |
| ImageRecordingType.examinationTimePeriod | ImagingOutcome/ImagingOutcomeBody/ImageRecording/examinationTimePeriod |
| ImageRecordingType.examinationStatus | ImagingOutcome/ImagingOutcomeBody/ImageRecording/examinationStatus |
| ImageRecordingType.examinationUnit | ImagingOutcome/ImagingOutcomeBody/ImageRecording/examinationUnit |
| ImageRecordingType.numberOfImages | ImagingOutcome/ImagingOutcomeBody/ImageRecording/numberOfImages |
| ImageDicomDataType.dicomSOP | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageDicomData/dicomSOP |
| ImageDicomData.dicomValue | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageDicomData/dicomValue |
| ImageDicomData.dicomReference | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageDicomData/dicomReference |
| ModalityDataType.typeOfModality | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ModalityData/typeOfModality |
| ModalityData.manufacturer | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ModalityData/manufacturer |
| ModalityData.modelName | ImagingOutcome/ImagingOutcomeBody/ImageRecording ModalityData/modelName |
| ModalityData.equipmentId | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ModalityData/equipmentId |
| ModalityData.softwareVersion | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ModalityData/softwareVersion |
| ImageStaticDataType.aperture | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/aperture |
| ImageStaticDataType.exposureTime | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/exposureTime |
| ImageStaticDataType.imageCreationTime | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/imageCreationTime |
| ImageStaticDataType.bodyPartExamined | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/bodyPartExamined |
| ImageStaticDataType.contrastAgentUsed | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/contrastAgentUsed |
| ImageStaticDataType.magneticFieldStrength | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/magneticFieldStrength |
| ImageStaticDataType.copyRight | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/copyRight |
| ImageDataType.mediaType | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/ImageData/mediaType |
| ImageDataType.value | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/ImageData/value |
| ImageDataType.reference | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/ImageData/reference |
| ImageDataType.burnedInAnnotations | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/ImageData/burnedInAnnotations |
| ResultType | Result |
| ResultType.resultCode | Result/resultCode |
| ResultType.errorCode | Result/errorCode |
| ResultType.subcode | Result/subcode |
| ResultType.logId | Result/logId |
| ResultType.message | Result/message |

### Formatregler
Se 4.3.2 Övriga krav

## Tjänstekontrakt

### GetReferralOutcome
GetReferralOutcome returnerar svar på en konsultationsremiss för en patient.

#### Version
3.1

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_4.pdf”. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAid | HSAIdType | Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime och signatureTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / Om signatureTime inte är angiven ersätts den med dagens datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till remissvar som är skapat i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..* |
| Svar |  |  |  |
| referralOutcome | ReferralOutcomeType | Returnerar en patients konsultationsremissvar. | 0..* |
| ../referralOutcomeHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSAid för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| ../../documentTime | TimeStampType | Tidpunkten då remissvaret inkom till remittentens vårdinformationssystem. | 1..1 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Identiteten enligt den identitetstyp (type) som angivits. Anges med 12 tecken utan bindestreck. | 1..1 |
| ../../../type | string | OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt vid vilken remissvaret skapades eller senast uppdaterades i remissmottagarens vårdinformationssystem. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitname | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för Vårdenhet som hälso-och sjukvårdsperson är uppdragstagare för. Ska anges om tillgänglig. [Regel 2] | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. [Regel 2] | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. Signering = signering av remissvar. Information om vidimering sker i attributet attested i bodyn. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering | 1..1 |
| ../../../legalAuthenticatorHSAid | HSAIdType | HSA-id för person som signerat dokumentet. | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person | 0..1 |
| ../../../legalAuthenticatorRoleCode |  | Ska ej anges. | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../../nullified |  | Ska ej anges. | 0..0 |
| ../../nullifiedReason |  | Ska ej anges. | 0..0 |
| ../referralOutcomeBody | ReferralOutcomeBodyType |  | 1..1 |
| ../../referralOutcomeTypeCode | referralOutcomeTypeCodeEnum | Anger typ av svar. 
Giltiga koder: 
SR, svar på remissfråga
SS, slutsvar på remissfråga | 1..1 |
| ../../referralOutcomeTitle | string | Text som beskriver vilken specialitet som utlåtandet gäller. Typen av specialitet som anlitats anges i text. / Exempel: / Patologi / Klinisk fysik / Logopedi | 1..1 |
| ../../referralOutcomeText | string | Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet. | 1..1 |
| ../../clinicalInformation | ClinicalInformationType | Klinisk information för remissvaret. Dessa kliniska data är direkt kopplat till svaret. | 0..* |
| ../../../clinicalInformationCode | ClinicalInformationCodeType | Kod för åtgärd. / Koden anges i code. / Kodverkets OID i codeSystem. | 1..1 |
| ../../../../code | string | Kod. | 1..1 |
| ../../../../codeSystem | string | Kod kan komma från kodverket ICD-10 (1.2.752.116.1.1.1.1.3) men andra kodverk kan  förekomma. | 1..1 |
| ../../../clinicalInformationText | string | Beskrivning av klinisk information | 1..1 |
| ../../act | ActType | Utförd åtgärd | 0..* |
| ../../../actId | string | Åtgärdens identitet som är unik inom det lokala avsändande systemet | 0..1 |
| ../../../actCode | ActCodeType | Kod för åtgärd. / Koden anges i code. / Kodverkets OID anges i codeSystem. | 0..1 |
| ../../../../code | string | Nullvärde är tillåtet om kod ej är tillgänglig, och åtgärdskodstext ska då skrivas i <actText>. | 1..1 |
| ../../../../codeSystem | string | Lämpliga kodverk kan vara: KVÅ (1.2.752.116.1.3.2.1.4) men andra kodverk kan förekomma. | 1..1 |
| ../../../actText | string | Text som anger namnet på den kod som anges i attributet åtgärdskod. Beskrivning av åtgärd anges här om ingen kod har angetts i attributet åtgärdskod. | 1..1 |
| ../../../actTime | TimeStampType | Tidpunkt då åtgärd genomfördes | 0..1 |
| ../../../actResult | MultimediaType | Resultat av åtgärd. Data i form av bifogade bilder eller liknande | 0..* |
| ../../../../id |  | Ska ej anges. | 0..0 |
| ../../../../mediaType | MediaTypeEnum | Typ av multimedia | 1..1 |
| ../../../../value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. | 0..1 |
| ../../../../reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. | 0..1 |
| ../../attested | AttestedType | Information om vidimering av enskild utförd åtgärd med tillhörande resultat. Finns attester är åtgärden vidimerad. Med vidimerat menas att information om åtgärden har lästs och den som läst har tagit ansvar. | 0..1 |
| ../../../attestedTime | TimeStampType | Tidpunkten för vidimering | 1..1 |
| ../../../attesterHSAId | HSAIdType | HSA-id för person som vidimerat | 0..1 |
| ../../../attesterName | string | Namn på person som vidimerat | 0..1 |
| ../../referral | ReferralType | Information om den vårdbegäran som ligger till grund för svaret | 1..1 |
| ../../../referralId | string | Remissens identitet som är unik inom det lokala avsändade systemet | 1..1 |
| ../../../referralReason | string | Text som anger aktuell frågeställning. | 1..1 |
| ../../../referralTime | TimeStampType | Tid då vårdbegäran framställdes. | 0..1 |
| ../../../referralAuthor | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallas författare. | 1..1 |
| ../../../../authorTime | TimeStampType | Tidpunkt då vårdbegäran registrerades i systemet. | 1..1 |
| ../../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitname | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../../orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby” | 0..1 |
| ../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId |  | Ska ej anges. | 0..0 |
| ../../../../healthcareProfessionalCareGiverHSAId |  | Ska ej anges. | 0..0 |
| ../../../careContactId | string | Identitet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. Detta ID kan användas för att genom tjänstekontaktet GetCareContacts (annan tjänstedomän) hämta kompletterandekontaktinformation. | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Producenter av GetReferralOutcome måste följa de generella riktlinjer för binära bilagor, se referens R12. Inbäddade bilagor får inte överstiga 100KB |  |  |
| Regel 2 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.

#### Annan information om kontraktet
Ingen annan information om kontraktet finns.

### GetMaternityMedicalHistory
GetMaternityMedicalHistory 	returnerar mödravårdsjournal för en patient.

#### Version
2.0

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_4.pdf”.
Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Kommentar | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAid | HSAIdType | Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna documentTime, authorTime och signatureTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatumet / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / Obs I schemat är elementet felaktigt döpt till timePeriod, men är av rätt typ dvs DatePeriodType. / Elementnamnet ändras i nästa majorversion. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till mödravårdsjournal som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..* |
| Svar |  |  |  |
| maternityMedicalRecord | MaternityMedicalRecordType | En moders mödravårdsjournal. | 0..* |
| ../maternityMedicalRecordHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet. | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSAid för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| ../../documentTime | TimeStampType | Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten. | 1..1 |
| ../../patientId | PersonIdType | Id för modern.
id sätts till patientens identifierare, anges med 12 siffror utan avskiljare.
Type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| .../../../id | string | Sätts till moderns identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3). | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten. I de fall då journalinformationen skapats i ett annat informationssystem (t.ex. laboratoriesystem eller annan remittents journalsystem) är det tidpunkten då journalinformationen ursprungligen skapades som ska anges. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id. | 1..1 |
| ../../../healthcareProfessionalName | string | Författarens namn. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om författarens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på. |  |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för den organisation som författaren är uppdragstagare på. | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare på. | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för Vårdenhet. [Regel 1] | 1..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. [Regel 1] | 1..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIDType | HSA-id för person som signerat dokumentet. | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../../legalAuthenticatorRoleCode |  | Ska ej anges. | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../../nullified | string | Ska ej anges | 0..0 |
| ../../nullifiedReason | string | Ska ej anges | 0..0 |
| ../maternityMedicalRecordBody | MaternityMedicalRecordBodyType | Kan bestå av antingen en registrationRecord, en pregnancyCheckupRecord eller en postDeliveryRecord. | 1..1 |
| ../../registrationRecord | RegistrationRecordType | Information som registreras vid inskrivningsbesöket. | 0..1 |
| ../../../lastMenstrualPeriod | DateType | Datum för senaste menstruation | 0..1 |
| ../../../indicationPregnancy | DateType | Datum för graviditetsindikation | 0..1 |
| ../../../contraceptiveDiscontinued | DateType | Datum för när moder upphört med preventivtablett | 0..1 |
| ../../../expectedDayOfDeliveryFromLastMenstrualPeriod | DateType | Beräknad förlossning enligt sista menstruation | 0..1 |
| ../../../expectedDayOfDeliveryFromUltrasoundScan | DateType | Beräknad förlossning enligt ultraljud | 0..1 |
| ../../../expectedDayOfDeliveryFromEmbryonicTransfer | DateType | Beräknad förlossning enligt embryonik transfer | 0..1 |
| ../../../length | PQType | Längd vid inskrivning | 0..1 |
| ../../../weight | PQType | Vikt vid inskrivning [massa] | 0..1 |
| ../../../bodyMassIndex | PQType | BMI vid inskrivning [massa/yta] | 0..1 |
| ../../../infertility | decimal | Antal år med ofrivillig barnlöshet (decimaltal) | 0..1 |
| ../../../previousGravidityAndParity | PreviousGravidityAndParityType | Tidigare graviditeter och förlossningar | 0..* |
| ../../../../year | int | År för tidigare graviditet eller förlossning | 1..1 |
| ../../../../month | int | Månad för tidigare graviditet eller förlossning | 1..1 |
| ../../../../delivery | DeliveryCodeEnum | Graviditet förlossning enligt kodverk: | 0..1 |
| ../../../../healthcareFacility | string | Sjukhus | 0..1 |
| ../../../../progress | string | Förlopp | 0..1 |
| ../../../../sex | SexCodeEnum | Kön, giltiga värden 0,1,2 och 9 enligt kodverk med OID 1.2.752.129.2.2.1.1: / 0 = okänt, / 1 = man, / 2 = kvinna, / 9 = ej tillämpligt | 0..1 |
| ../../../../weightOfChild | PQType | Barnets vikt [massa] | 0..1 |
| ../../../../gestation | int | Graviditetsvecka. | 0..1 |
| ../../../diseasesThrombosis | bool | Trombos (true/false) | 0..1 |
| ../../../diseasesEndocineDiseases | bool | Endokrina sjukdomar (true/false) | 0..1 |
| ../../../diseasesRecurrentUrinaryTractInfections | bool | Upprepade urinvägsinfektioner (true/false) | 0..1 |
| ../../../diseasesDiabetesMellitus | bool | Diabetes mellitus (true/false) | 0..1 |
| ../../../medicationDuringPregnacy | MedicationType | Före inskrivning under graviditet: medicinering | 0..* |
| ../../../../medicament | string | Preparat | 1..1 |
| ../../../../dosage | string | Dosering i beskrivande text | 0..1 |
| ../../../assessmentAtFirstContactStandardCare | bool | Bedömning vid 1:a besök: basprogram (true/false) | 0..1 |
| ../../pregnancyCheckupRecord | PregnancyCheckupRecordType | Graviditetskontroll | 0..1 |
| ../../../completeWeeksOfGestation | int | Fullgångna graviditetsveckor | 0..1 |
| ../../../weight | PQType | Moderns vikt [massa] | 0..1 |
| ../../../symphysisFundalHeight | PQType | Symfys-fundus mått [längd] | 0..1 |
| ../../../haemoglobin | PQType | Hb (Hemoglobin) [massa / volym] | 0..1 |
| ../../../bloodPressureSystolic | PQType | Systoliskt blodtryck [tryck] | 0..1 |
| ../../../bloodPressureDiastolic | PQType | Diastoliskt blodtryck [tryck] | 0..1 |
| ../../../proteinuria | PQType | Proteinuri - Protein i urinet [massa / volym] / Mängden protein ska alltså anges i g/l eller motsvarande. Använd INTE mätstickans kodning (0, 1+, 2+…) | 0..1 |
| ../../../glycosuria | PQType | Glucosuri - Glucos i urinet [antal / volym] / Förväntad enhet är mmol/l. Använd INTE mätstickans kodning (0, 1+, 2+…) / OBS! U på svenska men y på engelska (ICD10). | 0..1 |
| ../../../fetalPosition | FetalPositionCodeEnum | Fosterläge enligt kodverk: / 0 = head (huvud ) / 1 = breech (säte) / 2 = oblique (snedläge) / 3 = transverse (tvärläge) | 0..* |
| ../../../fetalPresentation | FetalPresentationCodeEnum | Föregående fosterdel enligt kodverk: / 0= mobile (rörligt), / 1 = movable (ruckbart), / 2 = fixed (fix) | 0..* |
| ../../../fetalHeartRate | PQType | Fosterljud, hjärtslag, ex. bpm [frekvens] | 0..* |
| ../../../typeOfLeave | TypeOfLeaveCodeEnum | Typ av ledighet enligt kodverk / 0 = Sjukskrivning, / 1 = Havandekapsledighet, / 2 = Föräldrarledighet | 0..* |
| ../../../medicationSinceRegistration | MedicationType | Läkemedel (även kostpreparat) som administrerats sedan registreringen / föregående ”checkup”. | 0..* |
| ../../../../medicament | string | Preparat | 1..1 |
| ../../../../dosage | string | Dosering i beskrivande text | 0..1 |
| ../../postDeliveryRecord | PostDeliveryRecordType | Efterskötning | 0..1 |
| ../../../motherPostDeliveryRecord | MotherPostDeliveryRecordType | Efterskötningsjournal, moder | 1..1 |
| ../../../../breastfeeding | boolean | Ammar (true/false) | 0..1 |
| ../../../../bloodPressureSystolic | PQType | Systoliskt blodtryck [tryck] | 0..1 |
| ../../../../bloodPressureDiastolic | PQType | Diastoliskt blodtryck [tryck] | 0..1 |
| ../../../../haemoglobin | PQType | Haemoglobin, t.ex. g/L [massa / volym] | 0..1 |
| ../../../../bodyTemperature | decimal | Kroppstemperatur | 0..1 |
| ../../../../scarsOK | boolean | Sår/bristningar/klipp utan anmärkning (true/false) | 0..1 |
| ../../../../sutureRemoved | boolean | Suturer borttagna (true/false) | 0..1 |
| ../../../../perineumComfortable | boolean | Bäckenbotten utan anmärkning (true/false) | 0..1 |
| ../../../../vulvaVaginaPortioOK | boolean | vulvaVaginaPortio utan anmärkning (true/false) | 0..1 |
| ../../../../uterusContracted | boolean | Uterus utan anmärkning (true/false) | 0..1 |
| ../../../../uterusNote | string | Kommentar till uterus med anmärkning. Kan endast anges då uterusContracted = false | 0..1 |
| ../../../childPostDeliveryRecord | ChildPostDeliveryRecordTypeType | Efterskötningsjournal, för barn ur samma graviditet | 1..* |
| ../../../../ordinalNumber | integer | Ordningstal för barnet, med start på 1. Ju äldre barn desto lägre siffra. | 1..1 |
| ../../../../weight | PQType | Barnets vikt [massa] | 0..1 |
| ../../../../apgarScore1 | int | Apgar (0..10) efter 1 minut | 0..1 |
| ../../../../apgarScore5 | int | Apgar (0..10) efter 5 minuter | 0..1 |
| ../../../../apgarScore10 | int | Apgar (0..10) efter 10 minuter | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| :--- | :--- | :--- | :--- |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.

#### Annan information om kontraktet
Ingen annan information om kontraktet finns.

### GetLaboratoryOrderOutcome
GetLaboratoryOrderOutcome returnerar kemilaboratoriesvar för en patient. Notera att denna version av GetLaboratoryOrderOutcome endast returnerar kemilaboratoriesvar, och inte svar från exempelvis mikrobiologi.
GetLaboratoryOrderOutcome returnerar laboratoriesvar lagrade i beställande enhets journal, och ska ej implementeras för att returnera laboratoriesvar från laboratoriets journal.

#### Version
3.1

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_4.pdf”.
Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler

| Namn | Typ | Kommentar | Kardi- / nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidsattributen analysisTime ligger inom sökintervallets start- och slutdatumet. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / Om svaret omfattar analyser på flera prover tagna vid olika tidpunkter räcker det om någon av dessa ligger inom sökintervallet. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till laboratoriesvar som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till hälso-och sjukvårdskontakt där den vårdbegäran som låg till grund för laboratoriesvaret skapades. | 0..* |
| Svar |  |  |  |
| laboratoryOrderOutcome | LaboratoryOrderOutcomeType | Returnerar en patients laboratoriesvar. | 0..* |
| ../laboratoryOrderOutcomeHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Unik identifierare för undersökningsresultatet. Identitet ska vara unik inom källsystemet / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSAid för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle |  | Ska ej anges. | 0..0 |
| ../../documentTime | TimeStampType | Tidpunkten då laboratoriesvaret inkom till beställarens vårdinformationssystem | 1..1 |
| ../../patientId | PersonIdType | Id för patienten. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallad författare. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt vid vilken laboratoriesvaret skapades eller senast uppdaterades i laboratoriesystemet. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på | 1..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. | 1..1 |
| ../../../../orgUnitname | string | Namnet på den organisation som författaren är uppdragstagare på | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet påplats eller ort för organisationens fysiska placering | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för Vårdenhet. Ska anges om tillgänglig. [Regel 1] | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. [Regel 1] | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. Det är normalt laboratorieläkeren som signerar laboratoriesvar. / Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering av svaret. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../../legalAuthenticatorRoleCode |  | Ska ej anges. | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../../nullified |  | Ska ej anges. | 0..0 |
| ../../nullifiedReason |  | Ska ej anges. | 0..0 |
| ../laboratoryOrderOutcomeBody | LaboratoryOrderOutcomeBodyType |  | 1..1 |
| ../../resultType | string | Text som anger vilken typ av svar som avses. / DEF = Definitivsvar / TILL = Tilläggssvar / Den senaste statusen är den som ska skickas med. | 1..1 |
| ../../registrationTime | TimeStampType | Tidpunkt då informationen om undersökningsresultatet lagrades i källsystemet.Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. | 1..1 |
| ../../discipline | string | Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. / Tillåtet värde är "Klinisk kemi" | 1..1 |
| ../../resultReport | string | Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet | 0..1 |
| ../../resultComment | string | Text som innehåller en kommentar avseende hela det lämnade svaret | 0..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso-och sjukvårdspersonal som är ansvarig (”ansvarig labbläkare”) för undersökningsresultatet (svaret). | 0..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då svaret skickas från laboratoriesystemet. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | hälso-och sjukvårdspersonens HSA-id | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på ansvarig hälso-och sjukvårdsperson. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. Om displayName anges ska även code samt codeSystem anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den enhet som hälso-och sjukvårdspersonen är uppdragstagare på | 1..1 |
| ../../../../orgUnitHSAId | HDAIdType | HSA-id för organisationsenhet. | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare på | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId |  | Ska ej anges. | 0..0 |
| ../../../healthcareProfessionalCareGiverHSAId |  | Ska ej anges. | 0..0 |
| ../../analysis | AnalysisType | Information om analystjänster som ligger till grund för ett undersökningsresultat | 0..* |
| ../../../analysisId | IIType | Unik identifierare för analystjänsten | 1..1 |
| ../../../../root | string | En unik identifierare i form av en UID som garanterar global unikhet för instansidentifieraren. Root kan enskilt utgöra hela den unika identifieraren. | 1..1 |
| ../../../../extension | string | En textsträng som tillsammans med root bildar en unik identifierare. | 0..1 |
| ../../../analysisTime | TimePeriodType | Tidsangivelse för åtgärdens utförande. Här anges tiden för provtagningen. / Om start eller end saknas, ska det vid tidsurval tolkas som att båda är satta till samma tidpunkt. | 0..1 |
| ../../../../start | TimeStampType | Periodens starttid. Minst ett av start och end ska anges. | 0..1 |
| ../../../../end | TimeStampType | Periodens sluttid. Minst ett av start och end ska anges. | 0..1 |
| ../../../analysisCode | CVType | Kod och klartext som anger vilken åtgärd som avses, enligt kodverket NPU. Ett av attributen analysisCode och analysisText ska anges. | 0..1 |
| ../../../../code | string | Kod från kodsystemet NPU. | 1..1 |
| ../../../../codeSystem | string | OID för NPU-kodsystemet (1.2.752.108.1). | 1..1 |
| ../../../../displayName | string | Kodens klartext. | 1..1 |
| ../../../analysisText | string | Text som anger vilken åtgärd som avses, om analysen ej finns kodad enligt NPU. Attributet åtgärdskod text används endast för svar som ej kan kodas enligt NPU. I åtgärdskod text anges endast analysens namn i klartext, dvs inga lokala koder. Ett av attributen analysisCode och analysisText ska anges. | 0..1 |
| ../../../analysisStatus | string | Text som anger åtgärdens status. Då det är möjligt ska KV åtgärdsstatus följas. Exempel från KV åtgärdsstatus: / Planerad, Pågående, Avklarad | 0..1 |
| ../../../analysisComment | string | Text som innehåller en kommentar som avser den utförda analysen. | 0..1 |
| ../../../specimen | string | Text som beskriver vilket typ av material som användes vid analysen. Ange provmaterial i klartext. Exempel: Plasma / Både provmaterial och lokalisation bör anges i klartext när så är lämpligt för aktuell undersökning. Exempel: Var höger fot". | 0..1 |
| ../../../method | string | Text som beskriver den metod som använts i analystjänsten. | 0..1 |
| ../../../relationToAnalysis | RelationToAnalysisType | Anger samband med annan utförd analystjänst. | 0..* |
| ../../../../analysisId | IIType | Unik identifierare för analystjänsten. | 1..1 |
| ../../../../../root | string | En unik identifierare i form av en UID som garanterar global unikhet för instansidentifieraren. Root kan enskilt utgöra hela den unika identifieraren. | 1..1 |
| ../../../../../extension | string | En textsträng som tillsammans med root bildar en unik identifierare. | 0..1 |
| ../../../analysisOutcome | AnalysisOutcomeType | Information om ett resultatet/utfallet av en analystjänst. | 0..1 |
| ../../../../outcomeValue | string | Det specifika värdet för resultatet/utfallet. | 1..1 |
| ../../../../outcomeUnit | string | Text som anger i förekommande fall enheten för det angivna värdet | 0..1 |
| ../../../../observationTime | TimeStampType | Tidpunkt då iakttagelsen av resultatet gjordes | 0..1 |
| ../../../../pathologicalFlag | boolean | Kod som anger om resultatet ligger utanför referensintervall. Sant = Ja, resultatet ligger utanför referens-intervall / Falskt = Nej, resultatet ligger inte utanför referens-intervall. | 1..1 |
| ../../../../outcomeDescription | string | Text som innehåller en kommentar avseende resultatet/utfallet. | 0..1 |
| ../../../../referenceInterval | string | Text som innehåller det referensintervall som använts i analysen. | 0..1 |
| ../../../../referencePopulation | string | Text som beskriver den population som referensintervallet gäller för. | 0..1 |
| ../../../attested | AttestedType | Information om vidimering av enskild analys med tillhörande resultat. Finns attested är analysen vidimerad. Med vidimerad menas att information om analysen har lästs och den som läst har tagit ansvar. | 0..1 |
| ../../../../attestedTime | TimeStampType | Tidpunkten för vidimering | 1..1 |
| ../../../../attesterHSAId | HSAIdType | HSA-id för person som vidimerat | 0..1 |
| ../../../../attesterName | string | Namn på person som vidimerat | 0..1 |
| ../../order | OrderType | Information om en vårdbegäran som ligger till grund för svaret | 1..1 |
| ../../../orderId | string | Unik identifierare för laboratorieremiss. Om laboratorieremiss (och således även unik identifierare) saknas, exempelvis då analys utförts på vårdavdelning anges en tom sträng. | 1..1 |
| ../../../orderReason | string | Text som anger aktuell frågeställning. | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| :--- | :--- | :--- | :--- |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.

#### Annan information om kontraktet
Ingen annan information om kontraktet finns.

### GetImagingOutcome
Tjänstekontraktet GetImagingOutcome returnerar bilddiagnostiska resultat för en patient.
Tjänstekontraktet baseras på existerande informationsmodell från NPÖ RIV 2.2.0-specifikation och ger information om resultatet av bild-undersökning i form av det sammanfattande utlåtandet kring undersökningsresultatet med i förekommande fall text och bild via länk el. motsvarande (se fältreglerna nedan). Informationsinnehållet har vidare utvidgats till att möjliggöra att ge både mer strukturerad bild-mätdata, dels stödja de standards som finns för att ge tillgång till bild-data på olika sätt, dels via DICOM för renderbar visning hos konsumenten eller som statisk bild.
I utformningen av tjänstekontraktet har hänsyn tagits till standarder på bildområdet. Som alternativ till DICOM ges möjlighet att skicka en bild/bildlänk (i något av de tillåtna formaten enligt HL7 MediaType) ihop med viss strukturerad data som komplement.
Som en frivillig del av tjänstekontraktet kan stråldoser som härrör till undersökningen bifogas. Tanken med detta är att möjliggöra för framtida ”appar” som samlar stråldos för uppföljning eller inför nya röntgenundersökningar.

#### Version
1.0

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_4.pdf”. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten. 
id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.
Type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, resultTime samt remissens authorTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till dokument som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..* |
| Svar |  |  |  |
| imagingOutcome | ImagingOutcomeType | De Bild-resultat(dokument) som matchar begäran. | 0..* |
| ../imagingOutcomeHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| ../../documentTime | TimeStampType | Händelsetidpunkt, om sådan finns. Tidpunkten bör vara då undersökningen gjordes inte när bilden skapades (t.ex. skannad bild). | 0..1 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Identiteten enligt den identitetstyp (type) som angivits. Anges med 12 tecken utan bindestreck. | 1..1 |
| ../../../type | string | OID för typ av identifierare. För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). För reservnummer används lokalt definierade reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Ansvarig hälso- och sjukvårdsperson. Ansvarig för undersökningsresultatet. Avser person som är ansvarig för det samlade dokumentet. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. Registreringstidpunkt i NPÖ riv-spec 2.2.0 avsnitt 5.3 | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| ../../../../orgUnitName | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för informationsägande vårdenhet (pdl-ansvar). Ska anges om tillgänglig. [Regel 2] | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för informationsägande vårdgivare (pdl-ansvar). Ska anges om tillgänglig. [Regel 2] | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. Det är normalt radiologen som signerar bilddiagnostiska svar. Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../../legalAuthenticatorRoleCode |  | Ska ej anges | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../../nullified | boolean | Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten. | 0..1 |
| ../../nullifiedReason | string | Anger orsak till makulering | 0..1 |
| ../imagingOutcomeBody | ImagingOutcomeBodyType |  | 1..1 |
| ../../examinationSpeciality | CVType | Undersökningstyp. Bör anges med kod enligt SNOMED. / Text som beskriver vilken specialitet som utlåtandet gäller.Exempel: / Typen av specialitet som anlitats anges i text Exempel: Patologi, Klinisk fysiologi, Logopedi | 0..1 |
| ../../typeOfResult | TypeOfResultCodeEnum | Svarstyp. / PREL = Preliminärsvar, denna typ är ny och finns ej i NPÖ:s riv-specifikation. / DEF = Definitivsvar, ett svar som har kommit tillbaka till beställaren från utföraren. / TILL = Tilläggssvar, kan avse två typer av svar: / Det fynd som gjorts enligt beställd undersökning, och som beskrivs i definitivsvaret, var så intressant att ytterligare undersökningar gjorts och svaret således behöver kompletteras. / Slutsvaret behöver av någon anledning korrigeras, och skickas således i ett tilläggssvar. / DEF sätts som förvalt värde. Den senaste statusen är den som ska skickas med. | 1..1 |
| ../../resultTime | TimeStampType | Svarstidpunkt. Tidpunkt då svar skickas till framställaren av vårdbegäran. | 1..1 |
| ../../resultReport | string | Text som beskriver det sammanfattade utlåtandet kring undersökningsresultatet | 1..1 |
| ../../resultComment | string | Kommentar till det sammanfattande utlåtandet | 0..1 |
| ../../radiationDose | PQType | Ett dosvärde som härrör till undersökningen. / Dosen kan anges på flera olika sätt (t.ex. som effektiv dos i Sv) eller som KAP. Den totala dosen som härrör till underökningen är summan av alla redovisade radiationDose. Enheten ska vara SI-enhet (eller kombination av sådana). (För KAP ska värdet räknas om till Gy*m² istället för Gy*cm².) | 0..* |
| ../../patientData | PatientDataType | Ytterligare information om patienten med relevans för bedömningen. Kan typiskt anges i samband med givande av strukturerad bild-information enligt nedan | 0..1 |
| ../../../patientWeight | PQType | Patientens vikt i kgvid undersökningstillfället. | 0..1 |
| ../../../patientLength | PQType | Patientens längd i cm vid undersökningstillfället. | 0..1 |
| ../../imageRecording | ImageRecordingType | Beskrivning av bild-tagning(ar). Bild(er) tas som en eller flera tagningar (noll tillåts i fall då tillgång till bild saknas, utan endast (remiss och) sammanfattande utlåtande finns). / En bildtagning kan i sin tur ha flera bilder | 0..* |
| ../../../recordingId | IIType | Id för Bild-tagningen som är unikt inom källsystemet. | 0..1 |
| ../../../examinationActivity | CVType | Åtgärdskod för utförd typ av Bild. KRÅ91-kod eller i förekommande fall annat kodverk. Om inget gemensamt kodverk används, anges åtgärdsbeskrivning i originalText. (not. I npö rivspec saknas angivande av typ av övrig bilddiagnostik vilket är en brist eftersom uppföljning av olika slags bilder görs) | 1..1 |
| ../../../examinationTimePeriod | TimePeriodType | Tidpunkt då Bild-insamlingen startar och slutar | 1..1 |
| ../../../examinationStatus | ExaminationStatusCodeEnum | Text som anger åtgärdens status. Kommer från KV åtgärdsstatus i V-TIM 1.0. Tillåtna värden är: Initierad, Planerad (bevakad), Tidbokad, Uppskjuten, Annullerad, Pågående, Avvakta, Avbruten, Avklarad, Inaktuell, Makulerad. | 0..1 |
| ../../../examinationUnit | string | Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. T ex MR-lab, CT inom bild. (not. Generaliserad från npö riv-spec för b&f undersökningar) | 0..1 |
| ../../../accountableHealthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdsperson som är ansvarig för informationen som härstammar från insamlingstillfället. Den person som har den fysiska kontakten med patienten vid insamlandet av data. | 0..1 |
| ../../../../authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. Registreringstidpunkt i NPÖ riv-spec 2.2.0 avsnitt 5.3 / Attributet sätts till detsamma som examinationTimePeriod.end, eller .start i de fall som inget .end finns | 1..1 |
| ../../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../healthcareProfessionalName | string | Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../healthcareProfessionalRoleCode | CVType | Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. / Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| ../../../../../orgUnitName | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../../orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| ../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId |  | Ska ej anges | 0..0 |
| ../../../../healthcareProfessionalCareGiverHSAId |  | Ska ej anges | 0..0 |
| ../../../numberOfImages | int | Det totala antalet bilder i bildtagningen | 0..1 |
| ../../../modalityData | ModalityDataType | Information om bild-utrustningen som använts | 0..1 |
| ../../../../typeOfModality | string | Modalitetstyp för bildfångande utrustning. | 0..1 |
| ../../../../manufacturer | string | Producerande utrustnings tillverkare. | 0..1 |
| ../../../../modelName | string | Producerande utrustnings modellnamn. | 0..1 |
| ../../../../equipmentId | string | Identifierare för utrustningen. Kan tex vara serienummer eller inventarienummer. | 0..1 |
| ../../../../softwareVersion | string | Text som anger tillverkarens version av den bildproducerande mjukvaran | 0..1 |
| ../../../../lineFilter |  | Ska ej anges. | 0..0 |
| ../../../imageDicomData | DicomDataType | DICOM-objekt. För att ge renderbar data som kan visas på det sätt som användaren önskar (med hjälp av en viewer/renderare) ges möjligheten att skicka med binärdata eller en URI till ett DICOM-objekt i någon av SOP-klasserna för Bild. / Både imageDicomData och ImageStaticData kan, och om möjligt bör anges för att underlätta för konsument. | 0..* |
| ../../../../dicomSOP | IIType | SOP UID för DICOM-objektet. Beskriver vilken information som kan förväntas i datan (jmf. mediaType nedan för statisk bild). / T.ex. 1.2.840.10008.5.1.4.1.1.1.1 för digital x-ray for presentation | 1..1 |
| ../../../../dicomValue | base64Binary | Binärdata som representerar objektet. Ett och endast ett av DicomValue och DicomReference ska anges. | 0..1 |
| ../../../../dicomReference | anyURI | Referens till externt DICOM-objekt med åtkomst enligt WADO. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient | 0..1 |
| ../../../imageStructuredData | ImageStructuredDataType | Strukturerad mätdata för bild-tagningen med statiskt bildobjekt eller referens till bildfil. | 0..* |
| ../../../../aperture | PQType | Anges som f/(enhetslöst). | 0..1 |
| ../../../../exposureTime | PQType | I sekunder | 0..1 |
| ../../../../imageCreationTime | TimeStampType | Tid då bilden skapats. | 0..1 |
| ../../../../bodyPartExamined | CVType | Kroppsdel. Bör anges med kod ur SNOMED CT (OID: 1.2.752.116.2.1.1). Om kodverk saknas kan kroppsdel anges i originalText. | 0..1 |
| ../../../../contrastAgentUsed | string | Kontrast som använts vid bildtagningen. | 0..1 |
| ../../../../magneticFieldStrength | PQType | Magnetisk fältsyrka i T. | 0..1 |
| ../../../../copyright | string | Copyright-ägare av bilden | 0..1 |
| ../../../../imageData | ImageDataType | Möjlighet att svara med en bild i något av de tillåtna formaten enligt HL7 multimediatyper (inkl. PDF). | 1..1 |
| ../../../../../mediaType | MediaTypeEnum | Mediatyper enligt HL7 MediaType. | 1..1 |
| ../../../../../value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. | 0..1 |
| ../../../../../reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient | 0..1 |
| ../../../../../burnedInAnnotations | boolean | True om patientdata finns i pixelinformationen. | 0..1 |
| ../../referral | ReferralType | Information om den vårdbegäran(remiss) som ligger till grund för undersökningen och dess svar. Måste vara valfri eftersom tagning av Bild inte alltid remitteras | 0..1 |
| ../../../referralId | string | Remissens identitet som är unik inom det lokala avsändande systemet. Motsvarar vårdbegäran-id | 1..1 |
| ../../../referralReason | string | Text som anger frågeställningen | 0..1 |
| ../../../anamnesis | string | Text som anger bakgrund till frågeställningen | 0..1 |
| ../../../careContactId | string | Identitet för den hälso-och sjukvårdskontakt som föranlett vårdbegäran. Identiteten är unik inom producernade system. | 0..1 |
| ../../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso-och sjukvårdspersonal som framställt vårdbegäran, nedan kallad remittent. | 1..1 |
| ../../../../authorTime | TimeStampType | Tid då vårdbegäran framställdes | 1..1 |
| ../../../../healthcareProfessionalHSAid | HSAIdType | Remittentens HSA-id. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../healthcareProfessionalName | string | Namn på remittenten. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../healthcareProfessionalRoleCode | CVType | Information om remittentens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. | 0..1 |
| ../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som remittenten är uppdragstagare på | 1..1 |
| ../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 1..1 |
| ../../../../../orgUnitName | string | Namnet på den organisation som remittenten är uppdragstagare på | 1..1 |
| ../../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../../orgUnitEmail | string | Epost till enhet | 0..1 |
| ../../../../../orgUnitAddress | string | Postadress för den organisation som remittenten är uppdragstagare på | 0..1 |
| ../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId |  | Ska ej anges. | 0..0 |
| ../../../../healthcareProfessionalCareGiverHSAId |  | Ska ej anges. | 0..0 |
| ../../../attested | LegalAuthenticatorType | Information om den som vidimerat mottaget svar på vårdbegäran | 0..1 |
| ../../../../signatureTime | TimeStampType | Tidpunkt för vidimering. | 1..1 |
| ../../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som vidimerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../legalAuthenticatorName | string | Namnen i klartext för vidimerande person. | 0..1 |
| ../../../../legalAuthenticatorRoleCode |  | Ska ej anges | 0..0 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Producenter av GetImagingOutcome måste följa de generella riktlinjer för binära bilagor, se referens R12. Inbäddade bilagor får inte överstiga 100KB. |  |  |
| Regel 2 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |

##### Icke funktionella krav
Inga övriga icke funktionella krav. Se generella SLA-krav för tjänstedomänen.

###### SLA-krav
Inga avvikande SLA-krav.

#### Annan information om kontraktet
Ingen annan information om kontraktet finns.
