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

### Revisionshistorik

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
