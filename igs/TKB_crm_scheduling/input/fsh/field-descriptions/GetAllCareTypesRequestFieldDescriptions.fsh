// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAllCareTypesRequestFieldDescriptions
* healthcare_facility ^definition = "HSA-id för mottagning/vårdenhet."
* healthcare_facility ^comment = "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1)."
* timeTypeIDs ^definition = "Lista med tidstyper."
* timeTypeIDs ^comment = "TKB-fält: `timeTypeIDs` (`TimeTypeIDType (string)`, kardinalitet 0..*)."
* performer ^definition = "HSA-id för medarbetaren."
* performer ^comment = "TKB-fält: `performer` (`HsaIdType (string)`, kardinalitet 0..*)."
* subject_of_care ^definition = "Personnummer enl. yyyymmddxxxx."
* subject_of_care ^comment = "TKB-fält: `subject_of_care` (`SubjectOfCareIdType (string)`, kardinalitet 1..1)."
