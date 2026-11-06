// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAllPerformersRequestFieldDescriptions
* healthcare_facility ^definition = "HSA-id för mottagning/vårdenhet."
* healthcare_facility ^comment = "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1)."
* timeTypeIDs ^definition = "Tidstypid för att begränsa svarslistan."
* timeTypeIDs ^comment = "TKB-fält: `timeTypeIDs` (`TimeTypeIDType (string)`, kardinalitet 0..*)."
* careTypeIDs ^definition = "Vårdtypsid för att begränsa svarslistan. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes."
* careTypeIDs ^comment = "TKB-fält: `careTypeIDs` (`CareTypeIDType (string)`, kardinalitet 0..*)."
* subject_of_care ^definition = "Personnummer enl. yyyymmddxxxx för begränsa/utöka svarslistan."
* subject_of_care ^comment = "TKB-fält: `subject_of_care` (`SubjectOfCareIdType (string)`, kardinalitet 1..1)."
