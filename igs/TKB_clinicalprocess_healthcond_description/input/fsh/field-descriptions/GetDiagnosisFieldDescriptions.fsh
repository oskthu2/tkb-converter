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
* diagnosis.diagnosisHeader.documentTitle ^definition = "N/A"
* diagnosis.diagnosisHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (kardinalitet 0..0)."
* diagnosis.diagnosisHeader.documentTime ^definition = "N/A"
* diagnosis.diagnosisHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (kardinalitet 0..0)."
* diagnosis.diagnosisHeader.patientId ^definition = "Identifierare för patient."
* diagnosis.diagnosisHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare."
* diagnosis.diagnosisHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet."
* diagnosis.diagnosisHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering."
* diagnosis.diagnosisHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet"
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* diagnosis.diagnosisHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* diagnosis.diagnosisHeader.careContactId ^definition = "Identitetet för den hälso- och sjukvårds skontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* diagnosis.diagnosisHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* diagnosis.diagnosisHeader.nullified ^definition = "N/A"
* diagnosis.diagnosisHeader.nullified ^comment = "TKB-fält: `../../nullified` (kardinalitet 0..0)."
* diagnosis.diagnosisHeader.nullifiedReason ^definition = "N/A"
* diagnosis.diagnosisHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0)."
* diagnosis.diagnosisBody ^comment = "TKB-fält: `../diagnosisBody` (`DiagnosisBodyType`, kardinalitet 1..1)."
* diagnosis.diagnosisBody.typeOfDiagnosis ^definition = "Anges som \"Huvuddiagnos\" eller \"Bidiagnos\"."
* diagnosis.diagnosisBody.typeOfDiagnosis ^comment = "TKB-fält: `../../typeOfDiagnosis` (`TypeOfDiagnosisEnum`, kardinalitet 1..1)."
* diagnosis.diagnosisBody.chronicDiagnosis ^definition = "Sätts till true om diagnosen är kronisk, false om diagnosen inte är kronisk, och används inte om okänt."
* diagnosis.diagnosisBody.chronicDiagnosis ^comment = "TKB-fält: `../../chronicDiagnosis` (`boolean`, kardinalitet 0..1)."
* diagnosis.diagnosisBody.diagnosisTime ^definition = "Tidpunkt då bedömningen gjordes."
* diagnosis.diagnosisBody.diagnosisTime ^comment = "TKB-fält: `../../diagnosisTime` (`TimeStampType`, kardinalitet 0..1)."
* diagnosis.diagnosisBody.diagnosisCode ^definition = "Diagnoskod."
* diagnosis.diagnosisBody.diagnosisCode ^comment = "TKB-fält: `../../diagnosisCode` (`CVType`, kardinalitet 0..1)."
* diagnosis.diagnosisBody.relatedDiagnosis ^definition = "Relaterad diagnos.

Associationen används för att länka samman diagnoser som relaterar till varandra. Använd om möjligt detta för att länka t.ex. bidiagnos till huvuddiagnos eller orsakskod till diagnos."
* diagnosis.diagnosisBody.relatedDiagnosis ^comment = "TKB-fält: `../../relatedDiagnosis` (`RelatedDiagnosisType`, kardinalitet 0..*)."
* diagnosis.diagnosisBody.relatedDiagnosis.documentId ^definition = "Unik identitet för diagnosen."
* diagnosis.diagnosisBody.relatedDiagnosis.documentId ^comment = "TKB-fält: `../../../documentId` (`string`, kardinalitet 1..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.subCode ^definition = "Inga subkoder är specificerade."
* result.subCode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
