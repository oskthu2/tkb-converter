// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAllTimeTypesRequestFieldDescriptions
* healthcare_facility ^definition = "HSA-id för mottagning/vårdenhet."
* healthcare_facility ^comment = "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1)."
* careTypeIDs ^definition = "Vårdtypsidentitet för att begränsa sökningen. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes."
* careTypeIDs ^comment = "TKB-fält: `careTypeIDs` (`CareTypeIDType (string)`, kardinalitet 0..*)."
* subject_of_care ^definition = "Personnummer enl. yyyymmddxxxx.

Kan användas för att filtrera vad tjänsteproducenten ska returnera för en viss invånare. (T.ex. patient som pga. av sjukdom måste erbjudas enstaka speciella tidstyper, som inte erbjuds alla patienter)."
* subject_of_care ^comment = "TKB-fält: `subject_of_care` (`SubjectOfCareIdType (string)`, kardinalitet 1..1).

**Modellanteckning:** Personnummer för invånaren."
