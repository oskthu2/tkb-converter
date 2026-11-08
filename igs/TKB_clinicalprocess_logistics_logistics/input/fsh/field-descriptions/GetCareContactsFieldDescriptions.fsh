// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareContactsFieldDescriptions
* careContact ^definition = "De vårdkontakter som matchar begäran."
* careContact ^comment = "TKB-fält: `careContact` (`CareContactType`, kardinalitet 0..*)."
* careContact.careContactHeader ^definition = "Innehåller basinformation om dokumentet"
* careContact.careContactHeader ^comment = "TKB-fält: `../careContactHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* careContact.careContactHeader.documentId ^definition = "Vårdkontaktens identitet som är unik inom källsystemet.

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* careContact.careContactHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* careContact.careContactHeader.sourceSystemHSAId ^definition = "HSA-id för det system som dokumentet är skapat i."
* careContact.careContactHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* careContact.careContactHeader.documentTitle ^definition = "Ska ej anges"
* careContact.careContactHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (kardinalitet 0..0)."
* careContact.careContactHeader.documentTime ^definition = "Ska ej anges"
* careContact.careContactHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (kardinalitet 0..0)."
* careContact.careContactHeader.patientId ^definition = "Id för patienten."
* careContact.careContactHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* careContact.careContactHeader.accountableHealthcareProfessional ^definition = "Hälso- och sjukvårdspersonalen som ansvarar för vårdkontakten."
* careContact.careContactHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* careContact.careContactHeader.legalAuthenticator ^definition = "Ska ej anges."
* careContact.careContactHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (kardinalitet 0..0)."
* careContact.careContactHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.

Regel: Regel 3"
* careContact.careContactHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* careContact.careContactHeader.careContactId ^definition = "Ska ej anges."
* careContact.careContactHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (kardinalitet 0..0)."
* careContact.careContactBody ^comment = "TKB-fält: `../careContactBody` (`CareContactBodyType`, kardinalitet 1..1)."
* careContact.careContactBody.careContactCode ^definition = "Kod som anger på vilket sätt vårdkontakten är planerad att ske, alternativt skedde. KV Vårdkontakttyp (1.2.752.129.2.2.2.25) ska användas. Se referens [R6].

Utelämnat värde betyder att värdet är okänt."
* careContact.careContactBody.careContactCode ^comment = "TKB-fält: `../../careContactCode` (`CVType`, kardinalitet 0..1)."
* careContact.careContactBody.careContactReason ^definition = "Text som beskriver orsaken till vårdkontakt som patienten själv eller dess företrädare anger."
* careContact.careContactBody.careContactReason ^comment = "TKB-fält: `../../careContactReason` (`string`, kardinalitet 0..1)."
* careContact.careContactBody.careContactOrgUnit ^definition = "Den enhet som vårdkontakten utfördes vid eller planeras utföras vid.

Regel: Regel 5"
* careContact.careContactBody.careContactOrgUnit ^comment = "TKB-fält: `../../careContactOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* careContact.careContactBody.careContactTimePeriod ^definition = "Tidsintervall för vårdkontakt. Vid besök i öppenvård sätts careContactTimePeriod.start och careContactTimePeriod.end till samma tidpunkt (besökets startidpunkt)."
* careContact.careContactBody.careContactTimePeriod ^comment = "TKB-fält: `../../careContactTimePeriod` (`TimePeriodType`, kardinalitet 0..1)."
* careContact.careContactBody.careContactStatus ^definition = "Kod som anger aktuell status för vårdkontakten.

Kodverket är definierat i SNOMED CT-SE med SCTID: 53761000052103 (Snomed CT finns tillgängligt via R11 där man kan se de publicerade koderna som är refererade)"
* careContact.careContactBody.careContactStatus ^comment = "TKB-fält: `../../careContactStatus` (`CVType`, kardinalitet 0..1)."
* careContact.careContactBody.additionalPatientInformation ^definition = "Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning."
* careContact.careContactBody.additionalPatientInformation ^comment = "TKB-fält: `../../additionalPatientInformation` (`AdditionalPatientInformationType`, kardinalitet 0..1)."
* careContact.careContactBody.additionalPatientInformation.dateOfBirth ^definition = "Patientens födelsedatum."
* careContact.careContactBody.additionalPatientInformation.dateOfBirth ^comment = "TKB-fält: `../../../dateOfBirth` (`PartialDateType`, kardinalitet 0..1)."
* careContact.careContactBody.additionalPatientInformation.gender ^definition = "Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas. Se referens [R6]."
* careContact.careContactBody.additionalPatientInformation.gender ^comment = "TKB-fält: `../../../gender` (`CVType`, kardinalitet 0..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
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
