// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareContactsFieldDescriptions
* careContact ^definition = "De vårdkontakter som matchar begäran."
* careContact ^comment = "TKB-fält: `careContact` (`CareContactType`, kardinalitet 0..*).

**Modellanteckning:** Lista med vårdkontakter för patienten. Varje post innehåller header (basinformation)
och body (kontaktspecifik information)."
* careContact.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då informationen registrerades.

Regel: Regel 2"
* careContact.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Format YYYYMMDDhhmmss. Tidpunkt i lokal svensk tid (CET/CEST).
Regel 2: Används för kontroll av tidsbegränsade spärrar i sammanhållen journalföring."
* careContact.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "HSA-id för hälso- och sjukvårdspersonal som ansvar för vårdkontakten."
* careContact.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careContact.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på hälso- och sjukvårdspersonal."
* careContact.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* careContact.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om hälso- och sjukvårdspersonalens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R6]."
* careContact.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på.

Regel: Regel 4"
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).

**Modellanteckning:** Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på.
Regel 4: orgUnitHSAId och orgUnitName ska anges för kompatibilitet med NPÖ.
Typ OrgUnitType. Kardinalitet: Valfri."
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet.

Regel: Regel 4"
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som den ansvariga hälso- och sjukvårdspersonalen är uppdragstagare på.

Regel: Regel 4"
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 0..1)."
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet."
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "Epost till enhet."
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress för den organisation som hälso- och sjukvårdspersonal en är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1).

**Modellanteckning:** Postadress för organisationsenheten."
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering."
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* careContact.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för vårdenhet.

Regel: Regel 1"
* careContact.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalcareUnitHSAId*` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för vårdenhet. Typ HSAIdType.
Regel 1: Krävs för spärrhantering, åtkomstkontroll och loggning enligt PDL."
* careContact.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonalen är uppdragstagare för.

Regel :Regel 1"
* careContact.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalcareGiverHSAId*` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för vårdgivaren. Typ HSAIdType.
Regel 1: Krävs för spärrhantering, åtkomstkontroll och loggning enligt PDL."
* careContact.careContactOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet.

Regel: Regel 5"
* careContact.careContactOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för organisationsenheten för kontakten. Regel 5."
* careContact.careContactOrgUnit.orgUnitName ^definition = "Namn på organisationsenheten.

Regel: Regel 5"
* careContact.careContactOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../orgUnitName` (`string`, kardinalitet 0..1)."
* careContact.careContactOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenheten."
* careContact.careContactOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* careContact.careContactOrgUnit.orgUnitEmail ^definition = "Epost till organisationsenheten."
* careContact.careContactOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* careContact.careContactOrgUnit.orgUnitAddress ^definition = "Postadress till organisationsenheten."
* careContact.careContactOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* careContact.careContactOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationsenhetens eller funktionens fysiska placering."
* careContact.careContactOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../orgUnitLocation` (`string`, kardinalitet 0..1).

**Modellanteckning:** Plats/ort för organisationsenheten."
* careContact.careContactTimePeriod.start ^definition = "Vårdkontaktens starttidpunkt. Minst ett av fälten start och end måste anges."
* careContact.careContactTimePeriod.start ^comment = "TKB-fält: `../../../start` (`TimeStampType`, kardinalitet 0..1)."
* careContact.careContactTimePeriod.end ^definition = "Vårdkontaktens sluttidpunkt. Minst ett av fälten start och end måste anges."
* careContact.careContactTimePeriod.end ^comment = "TKB-fält: `../../../end` (`TimeStampType`, kardinalitet 0..1)."
* careContact.additionalPatientInformation.dateOfBirth ^definition = "Patientens födelsedatum."
* careContact.additionalPatientInformation.dateOfBirth ^comment = "TKB-fält: `../../../dateOfBirth` (`PartialDateType`, kardinalitet 0..1).

**Modellanteckning:** Patientens födelsedatum. Partiellt datum (år, år+månad, eller fullständigt).
Format: YYYY, YYYYMM eller YYYYMMDD."
* careContact.additionalPatientInformation.gender ^definition = "Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas. Se referens [R6]."
* careContact.additionalPatientInformation.gender ^comment = "TKB-fält: `../../../gender` (`CVType`, kardinalitet 0..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** Sätts endast om resultCode är ERROR. Möjliga värden: INVALID_REQUEST."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.subCode ^definition = "Inga subkoder är specificerade."
* result.subCode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
