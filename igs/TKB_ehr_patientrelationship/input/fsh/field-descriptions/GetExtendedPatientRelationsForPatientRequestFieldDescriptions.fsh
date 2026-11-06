// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetExtendedPatientRelationsForPatientRequestFieldDescriptions
* careProviderId ^definition = "HSA-id på den vårdgivare vars patientrelationer skall hämtas."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`patientrelationship:HsaId`, kardinalitet 1..1)."
* patientId ^definition = "Patientens personnummer alternativt samordningsnummer."
* patientId ^comment = "TKB-fält: `patientId` (`patientrelationship:PersonIdValue`, kardinalitet 1..1)."
* getCancelledFlag ^definition = "Flagga som avgör om ogiltiga patientrelationer skall returneras."
* getCancelledFlag ^comment = "TKB-fält: `getCancelledFlag` (`xs:boolean`, kardinalitet 1..1)."
