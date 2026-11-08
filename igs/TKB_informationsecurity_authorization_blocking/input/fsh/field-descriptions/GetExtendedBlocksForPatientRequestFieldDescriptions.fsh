// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetExtendedBlocksForPatientRequestFieldDescriptions
* careProviderId ^definition = "HSA-id på den vårdgivare vars spärrar skall hämtas."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`urn:riv:informationsecurity:authorization:blocking:4:HsaId`, kardinalitet 1..1)."
* patientId ^definition = "Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer vars spärrar skall hämtas."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:blocking:4:IIType`, kardinalitet 1..1)."
