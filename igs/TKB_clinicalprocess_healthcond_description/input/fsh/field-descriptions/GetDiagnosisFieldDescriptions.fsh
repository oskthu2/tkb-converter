// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetDiagnosisFieldDescriptions
* diagnosis ^definition = "De diagnoser som matchar begäran."
* diagnosis ^comment = "TKB-fält: `diagnosis` (`DiagnosisType`, kardinalitet 0..*)."
* diagnosis.diagnosisHeader ^definition = "Innehåller basinformation om dokumentet"
* diagnosis.diagnosisHeader ^comment = "TKB-fält: `../diagnosisHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.documentId ^definition = "Dokumentets identitet som är unik inom källsystemet.

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* diagnosis.diagnosisHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.sourceSystemHSAId ^definition = "HSA-id för det system tillgängliggör informationen."
* diagnosis.diagnosisHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.patientId ^definition = "Identifierare för patient."
* diagnosis.diagnosisHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för patient. id = patientens identifierare (12 tecken).
type = OID för typ av identifierare. För personnummer: 1.2.752.129.2.1.3.1."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då informationen registrerades."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "Författarens HSA-id."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på författaren. Om tillgängligt ska detta anges."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]"
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som författaren är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).

**Modellanteckning:** Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som författaren är uppdragstagare på."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för vårdenhet

(Regel: 1)"
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel: 1)"
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för vårdgivaren, som är vårdgivare för den vårdenhet där personalen verkar."
* diagnosis.diagnosisHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet."
* diagnosis.diagnosisHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering."
* diagnosis.diagnosisHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Tidpunkt för signering. Format: YYYYMMDDhhmmss."
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet"
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* diagnosis.diagnosisHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.careContactId ^definition = "Identitetet för den hälso- och sjukvårds skontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* diagnosis.diagnosisHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).

**Modellanteckning:** Identitet för den hälso- och sjukvårdskontakt som diagnosen dokumenterades vid."
* diagnosis.diagnosisBody ^comment = "TKB-fält: `../diagnosisBody` (`DiagnosisBodyType`, kardinalitet 1..1).

**Modellanteckning:** DiagnosisBodyType — diagnosens informationsinnehåll."
* diagnosis.diagnosisBody.typeOfDiagnosis ^definition = "Anges som \"Huvuddiagnos\" eller \"Bidiagnos\"."
* diagnosis.diagnosisBody.typeOfDiagnosis ^comment = "TKB-fält: `../../typeOfDiagnosis` (`TypeOfDiagnosisEnum`, kardinalitet 1..1)."
* diagnosis.diagnosisBody.chronicDiagnosis ^definition = "Sätts till true om diagnosen är kronisk, false om diagnosen inte är kronisk, och används inte om okänt."
* diagnosis.diagnosisBody.chronicDiagnosis ^comment = "TKB-fält: `../../chronicDiagnosis` (`boolean`, kardinalitet 0..1)."
* diagnosis.diagnosisBody.diagnosisTime ^definition = "Tidpunkt då bedömningen gjordes."
* diagnosis.diagnosisBody.diagnosisTime ^comment = "TKB-fält: `../../diagnosisTime` (`TimeStampType`, kardinalitet 0..1)."
* diagnosis.diagnosisBody.diagnosisCode ^definition = "Diagnoskod."
* diagnosis.diagnosisBody.diagnosisCode ^comment = "TKB-fält: `../../diagnosisCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** Diagnoskod. Normalt ICD-10-SE (OID okänt — se ASSUME-001 i QUESTIONS.md)."
* diagnosis.diagnosisBody.relatedDiagnosis ^definition = "Relaterad diagnos.

Associationen används för att länka samman diagnoser som relaterar till varandra. Använd om möjligt detta för att länka t.ex. bidiagnos till huvuddiagnos eller orsakskod till diagnos."
* diagnosis.diagnosisBody.relatedDiagnosis ^comment = "TKB-fält: `../../relatedDiagnosis` (`RelatedDiagnosisType`, kardinalitet 0..*)."
* diagnosis.diagnosisBody.relatedDiagnosis.documentId ^definition = "Unik identitet för diagnosen."
* diagnosis.diagnosisBody.relatedDiagnosis.documentId ^comment = "TKB-fält: `../../../documentId` (`string`, kardinalitet 1..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** Sätts endast om resultCode är ERROR. Tillåtna värden: INVALID_REQUEST."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
