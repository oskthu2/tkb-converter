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
* diagnosis.diagnosisHeader.sourceSystemHSAId ^definition = "HSA-id för det system som dokumentet är skapat i."
* diagnosis.diagnosisHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.documentTitle ^definition = "N/A"
* diagnosis.diagnosisHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (kardinalitet 0..0).

**Modellanteckning:** Används ej. TKB-typ: -. Kardinalitet: 0..0."
* diagnosis.diagnosisHeader.documentTime ^definition = "N/A"
* diagnosis.diagnosisHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (kardinalitet 0..0).

**Modellanteckning:** Används ej. TKB-typ: -. Kardinalitet: 0..0."
* diagnosis.diagnosisHeader.patientId ^definition = "Identifierare för patient."
* diagnosis.diagnosisHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för patient. TKB-typ: PersonIdType. Kardinalitet: 1..1. Underelement i PersonIdType: id (string, 1..1): Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | type (string, 1..1): Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14]. / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3), [R14]. / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då informationen registrerades."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "Författarens HSA-id."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** Författarens HSA-id. TKB-typ: HSAIdType. Kardinalitet: 0..1."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på författaren. Om tillgängligt ska detta anges."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]"
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | codeSystemName (string, 0..1): Namn på kodsystem för befattningskod. | codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod. | displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som författaren är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som författaren är uppdragstagare på."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "Epost till organisationsenhet."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress för den organisation som författaren är uppdragstagare på."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för vårdenhet

(Regel: 1)"
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för vårdenhet / (Regel: 1) TKB-typ: HSAIdType. Kardinalitet: 0..1."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel: 1)"
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet."
* diagnosis.diagnosisHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering."
* diagnosis.diagnosisHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Tidpunkt för signering. TKB-typ: TimeStampType. Kardinalitet: 1..1."
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet"
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* diagnosis.diagnosisHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.careContactId ^definition = "Identitetet för den hälso- och sjukvårds skontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* diagnosis.diagnosisHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.nullified ^definition = "N/A"
* diagnosis.diagnosisHeader.nullified ^comment = "TKB-fält: `../../nullified` (kardinalitet 0..0).

**Modellanteckning:** Används ej. TKB-typ: -. Kardinalitet: 0..0."
* diagnosis.diagnosisHeader.nullifiedReason ^definition = "N/A"
* diagnosis.diagnosisHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0).

**Modellanteckning:** Används ej. TKB-typ: -. Kardinalitet: 0..0."
* diagnosis.diagnosisBody ^comment = "TKB-fält: `../diagnosisBody` (`DiagnosisBodyType`, kardinalitet 1..1).

**Modellanteckning:** diagnosisBody. TKB-typ: DiagnosisBodyType. Kardinalitet: 1..1."
* diagnosis.diagnosisBody.typeOfDiagnosis ^definition = "Anges som \"Huvuddiagnos\" eller \"Bidiagnos\"."
* diagnosis.diagnosisBody.typeOfDiagnosis ^comment = "TKB-fält: `../../typeOfDiagnosis` (`TypeOfDiagnosisEnum`, kardinalitet 1..1)."
* diagnosis.diagnosisBody.chronicDiagnosis ^definition = "Sätts till true om diagnosen är kronisk, false om diagnosen inte är kronisk, och används inte om okänt."
* diagnosis.diagnosisBody.chronicDiagnosis ^comment = "TKB-fält: `../../chronicDiagnosis` (`boolean`, kardinalitet 0..1)."
* diagnosis.diagnosisBody.diagnosisTime ^definition = "Tidpunkt då bedömningen gjordes."
* diagnosis.diagnosisBody.diagnosisTime ^comment = "TKB-fält: `../../diagnosisTime` (`TimeStampType`, kardinalitet 0..1)."
* diagnosis.diagnosisBody.diagnosisCode ^definition = "Diagnoskod."
* diagnosis.diagnosisBody.diagnosisCode ^comment = "TKB-fält: `../../diagnosisCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** Diagnoskod. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Kod för den aktuella diagnosen. / Om code anges ska även codeSystem samt displayName anges. | displayName (string, 0..1): Klartext för kod som angivits i attributet diagnosisCode. / Om displayName anges ska även code samt codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. | codeSystemName (string, 0..1): Namn på kodsystem. / Om codeSystem anges ska även code samt displayName anges. | codeSystemVersion (string, 0..1): Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. | originalText (string, 0..1): originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i diagnosisCode anges."
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
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1)."
* result.subcode ^definition = "Inga subkoder är specificerade."
* result.subcode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).

**Modellanteckning:** Inga subkoder är specificerade. TKB-typ: string. Kardinalitet: 0..1. OBS: elementet heter subCode i XSD:n."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
