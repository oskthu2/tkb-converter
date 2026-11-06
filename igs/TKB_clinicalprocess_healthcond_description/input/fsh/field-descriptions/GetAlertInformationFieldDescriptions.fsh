// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAlertInformationFieldDescriptions
* alertInformation ^definition = "Den uppmärksamhetsinformation som matchar begäran."
* alertInformation ^comment = "TKB-fält: `alertInformation` (`AlertInformationType`, kardinalitet 0..*)."
* alertInformation.alertInformationHeader ^definition = "Innehåller basinformation om dokumentet"
* alertInformation.alertInformationHeader ^comment = "TKB-fält: `../alertInformationHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.documentId ^definition = "Dokumentets identitet som är unik inom källsystemet.

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* alertInformation.alertInformationHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.sourceSystemHSAId ^definition = "HSA-id för det system tillgängliggör informationen."
* alertInformation.alertInformationHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.patientId ^definition = "Identifierare för patient."
* alertInformation.alertInformationHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för patient. id = patientens identifierare (12 tecken).
type = OID för typ av identifierare."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som verifierat informationen i dokumentet."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då informationen registrerades."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "hälso- och sjukvårdspersonalens HSA-id."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13]"
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för vårdenhet.

Se regel 1"
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonalen är uppdragstagare för.

Se regel 1"
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet."
* alertInformation.alertInformationHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering."
* alertInformation.alertInformationHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Tidpunkt för signering. Format: YYYYMMDDhhmmss."
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet"
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* alertInformation.alertInformationHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.careContactId ^definition = "Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* alertInformation.alertInformationHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).

**Modellanteckning:** Identitet för den hälso- och sjukvårdskontakt som uppmärksamhetsinformationen gäller."
* alertInformation.alertInformationBody ^comment = "TKB-fält: `../alertInformationBody` (`AlertInformation / BodyType`, kardinalitet 1..1).

**Modellanteckning:** AlertInformationBodyType — uppmärksamhetsinformationens informationsinnehåll."
* alertInformation.alertInformationBody.typeOfAlertInformation ^definition = "Kod som anger vilken typ av uppmärksamhetssignal som avses.

Använd t.ex.  KV Uppmärksamhetstyp eller KV Informationstyp.

Se regel 2"
* alertInformation.alertInformationBody.typeOfAlertInformation ^comment = "TKB-fält: `../../typeOfAlertInformation` (`CVType`, kardinalitet 1..1).

**Modellanteckning:** Kod som anger vilken typ av uppmärksamhetssignal som avses.
Bör tas från ett lokalt kodsystem eller från nationell standard.
Kodsystem: okänt externt/lokalt (se ASSUME-002 i QUESTIONS.md)."
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
