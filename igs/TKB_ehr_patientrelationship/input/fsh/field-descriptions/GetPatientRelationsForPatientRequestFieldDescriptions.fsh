// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPatientRelationsForPatientRequestFieldDescriptions
* careProviderId ^definition = "HSA-id på den vårdgivare vars patientrelationer skall hämtas."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`patientrelationship:HsaId`, kardinalitet 1..1).

**Modellanteckning:** Obligatorisk. Identifierar den vårdgivare som patientrelationsinformationen gäller för.
system = urn:oid:1.2.752.129.2.1.4.1"
* patientId ^definition = "Patientens personnummer alternativt samordningsnummer vars patientrelationer skall hämtas."
* patientId ^comment = "TKB-fält: `patientId` (`patientrelationship:PersonIdValue`, kardinalitet 1..1)."
