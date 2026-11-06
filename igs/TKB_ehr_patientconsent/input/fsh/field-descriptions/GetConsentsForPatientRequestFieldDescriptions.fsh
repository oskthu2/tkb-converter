// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetConsentsForPatientRequestFieldDescriptions
* careProviderId ^definition = "Obligatoriskt id på den vårdgivare vars samtycken skall hämtas."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`patientconsent:HsaId`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för vårdgivare. system = urn:oid:1.2.752.129.2.1.4.1. Max 32 tecken."
* patientId ^definition = "Patientens personnummer alternativt samordningsnummer vars samtycken skall hämtas."
* patientId ^comment = "TKB-fält: `patientId` (`patientconsent:PersonIdValue`, kardinalitet 1..1).

**Modellanteckning:** PersonIdValue — personnummer, samordningsnummer eller reservnummer. Max 12 tecken."
