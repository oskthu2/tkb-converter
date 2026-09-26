## Tjänstekontrakt

### GetRheumatoidArthritisData
GetRheumatoidArthritisData returnerar information om en patient hämtad ur Reuma beslutsstödsjournal eller motsvarande system.
Denna information innehåller dels patientskattade värden, dels läkarens uppskattade, observerade eller uppmätta värden, dels labbvärden, och dels information om insatta läkemedel relaterade till sjukdomen.

#### Version
1.0

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_2.pdf”

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten. | 1..1 |
| ../id | String | id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. |  |
| ../type | string | Type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) |  |
| datePeriod | DatePeriodType | Begränsning av sökningen i tid, vilket innebär att endast svar returneras där authorTime eller signatureTime ligger helt eller delvis inom det sökta tidsintervallet. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till dokument som är skapade i angivet system. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Fältet är tvingande om careContactId angivits. | 0..1 |
| careContactId | string | Begränsar sökningen till den vård- och omsorgskontakt där den vårdbegäran som låg till grund för laboratoriesvaret skapades. | 0..* |
|  |  |  |  |
| Svar |  |  | 0..* |
| rheumatoidArthritisData | RheumatoidArthritisDataType | De diagnoser som matchar begäran. | 0..* |
| ../rheumatoidArthritisDataHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i (HSA-id för Reuma). | 1..1 |
| ../../documentTitle |  |  | 0..0 |
| ../../documentTime |  |  | 0..0 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt skall detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt skall KV Befattning (OID 1.2.752.129.2.2.1.4), se / http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges skall också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges skall också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system skall samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges skall inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare vid. | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. | 0..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare vid. | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare vid. | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalcareUnitHSAId | HSAIdType | HSA-id för PDL-enhet. | 0..1 |
| ../../../healthcareProfessionalcareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare vid. | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet. | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../rheumatoidArthritisBody | RheumatoidArthritisBodyType |  | 1..1 |
| ../../patientVariables | PatientVariablesType | Information från patienten. | 0..1 |
| ../../../workAbility | string | Patientens arbetsförmåga. Beskrivs med hur många timmar patienten arbetar i förhållande till hur många timmar patientens anställning är. | 0..1 |
| ../../../globalHealth | integer | Global health of patient. Värdemängd: 0-100. | 0..1 |
| ../../../pain | integer | Patientens uppfattning rörande sin smärta. Värdemängd: 0-100. | 0..1 |
| ../../../eq5dIndexValue | float | EuroQol-5 Dimension Questionnaire (EQ-5D). Värdemängd: -0,594–1. | 0..1 |
| ../../../healthAssessmentQuestionnaireScore | float | Health Assessment Questionnaire (HAQ). Värdemängd: 0-3. | 0..1 |
| ../../../tenderJoints28 | integer | Tender joints 28. Antal ömma leder av 28. Värdemängd: 0-28. | 0..1 |
| ../../../swollenJoints28 | integer | Swollen joints 28. Antal svullna leder av 28. Värdemängd: 0-28. | 0..1 |
| ../../physiciansVariables | PhysiciansVariablesType | Information från läkaren. | 0..1 |
| ../../../physiciansGlobal | CVType | Motsvarar enum = none, low, moderate, high, maximal. | 0..1 |
| ../../../../code | string | Kod enligt producentsystemets kodverk. Om code anges skall också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Anger kodverket som definierar koden. Dvs UID/OID för det kodverk som används. Om codeSystem anges skall också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Kodverkets namn i klartext. Skall anges när så är möjligt | 0..1 |
| ../../../../codeSystemVersion | string | Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. | 0..1 |
| ../../../../displayName | string | Koden i klartext, under vilket det producerande systemet visar koden för sina användare. Om separat displayName inte finns i producerande system skall det ange samma värde som för code. | 0..1 |
| ../../../../originalText | string | originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. Om originalText anges kan inget av de övriga elementen anges. | 0..1 |
| ../../../tenderJoints28 | integer | Tender joints 28. Antal ömma leder av 28. Värdemängd: 0-28. | 0..1 |
| ../../../swollenJoints28 | integer | Swollen joints 28. Antal svullna leder av 28. Värdemängd: 0-28. | 0..1 |
| ../../../diseaseActivityScore28 | float | Disease Activity Score 28 (DAS28). | 0..1 |
| ../../../diseaseActivityScore28CRP | float | Disease Activity Score 28 CRP (DAS28CRP). | 0..1 |
| ../../labVariables | LabVariablesType | Labbvärden. | 0..1 |
| ../../../sedimentationRate | PQType | Sänka. Sedimentation Rate (SR). | 0..1 |
| ../../../../value | Double | Mätetal. | 1..1 |
| ../../../../unit | string | ”mm/h” | 1..1 |
| ../../../cReactiveProtein | PQType | C-reaktivt protein. C-reactive Protein value (CRP). | 0..1 |
| ../../../../value | Double | Mätetal. | 1..1 |
| ../../../../unit | string | ”mg/L” | 1..1 |
| ../../drug | DrugType | Information om patientens läkemedel. | 0..* |
| ../../../nplId | IIType | NPL-id (Nationellt Produktregister för Läkemedelsprodukter). | 0..1 |
| ../../../../root | string | 1.2.752.129.2.1.5.1 | 1..1 |
| ../../../../extension | string | Själva NPL-id:t | 1..1 |
| ../../../atcCode | CVType | Läkemedlets ATC-kod. | 0..1 |
| ../../../../code | string | ATC-koden | 1..1 |
| ../../../../codeSystem | string | 1.2.752.129.2.2.3.1.1 | 1..1 |
| ../../../../codeSystemName | string | “ATC” | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string | Klartext för ATC-kod | 1..1 |
| ../../../name | string | Motsvarar kommande läkemedelskontrakts "produktnamn". | 0..1 |
| ../../../typeOfDrug | CVType | Typ av läkemedel. Motsvarande enum: DMARD, bioprep, NSAID, cortisone | 0..1 |
| ../../../../code | string | Kod enligt producentsystemets kodverk. Om code anges skall också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Anger kodverket som definierar koden. Dvs UID/OID för det kodverk som används. Om codeSystem anges skall också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Kodverkets namn i klartext. Skall anges när så är möjligt | 0..1 |
| ../../../../codeSystemVersion | string | Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. | 0..1 |
| ../../../../displayName | string | Koden i klartext, under vilket det producerande systemet visar koden för sina användare. Om separat displayName inte finns i producerande system skall det ange samma värde som för code. | 0..1 |
| ../../../../originalText | string | originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. Om originalText anges kan inget av de övriga elementen anges. | 0..1 |
| ../../../dose | PQType | Dos. | 0..1 |
| ../../../../value | Double | Mätetal. | 1..1 |
| ../../../../unit | string | “mg” | 1..1 |
| ../../../datePeriod | DatePeriodType | Motsvarande insättnings- och utsättningsdatum. | 0..1 |
| ../../../../start | DateType | Startdatum. Format ÅÅÅÅMMDD. | 0..1 |
| ../../../../end | DateType | Slutdatum. Format ÅÅÅÅMMDD. | 0..1 |
| ../../../endCause | string | Motsvarar kommande läkemedelskontrakts "utsättningsorsak". | 0..1 |
| ../../../interval | string | Intervall/frekvens för dos. | 0..1 |

#### Övriga regler
Inga fältregler utöver de som är beskrivna ovan.

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.
