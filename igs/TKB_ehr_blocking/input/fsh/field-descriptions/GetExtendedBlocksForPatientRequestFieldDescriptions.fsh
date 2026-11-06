// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetExtendedBlocksForPatientRequestFieldDescriptions
* careProviderId ^definition = "HSA-id på den vårdgivare vars spärrar skall hämtas."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`blocking:HsaId`, kardinalitet 1..1)."
* patientId ^definition = "Personnummer på patienten vars spärrar skall hämtas."
* patientId ^comment = "TKB-fält: `patientId` (`blocking:PersonIdValue`, kardinalitet 1..1)."
