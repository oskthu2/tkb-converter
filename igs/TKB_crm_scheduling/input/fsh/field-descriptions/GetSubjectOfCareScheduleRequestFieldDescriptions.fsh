// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetSubjectOfCareScheduleRequestFieldDescriptions
* healthcare_facility ^definition = "HSA-id för mottagning/vårdenhet.

Observera att vid adressering av aggregerande tjänst kommer detta fält att ignoreras av den aggregerande tjänsten. Fältet måste ändå finnas med av kompatibilitetsskäl."
* healthcare_facility ^comment = "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1)."
* subject_of_care ^definition = "Personnummer enl. yyyymmddxxxx."
* subject_of_care ^comment = "TKB-fält: `subject_of_care` (`SubjectOfCareIdType (string)`, kardinalitet 1..1).

**Modellanteckning:** Personnummer för invånaren."
