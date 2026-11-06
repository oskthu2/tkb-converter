// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableTimeslotsRequestFieldDescriptions
* healthcare_facility ^definition = "Hsa-ID för mottagning/vårdenhet."
* healthcare_facility ^comment = "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1)."
* bookingId ^definition = "Intern bokningsidentitet. Används för att indikera ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven bokning."
* bookingId ^comment = "TKB-fält: `bookingId` (`BookingIdType (string)`, kardinalitet 0..1)."
* startDateInclusive ^definition = "Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD."
* startDateInclusive ^comment = "TKB-fält: `startDateInclusive` (`DT (string)`, kardinalitet 1..1)."
* endDateInclusive ^definition = "Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD."
* endDateInclusive ^comment = "TKB-fält: `endDateInclusive` (`DT (string)`, kardinalitet 1..1)."
* performer ^definition = "HSA-id för HoS-personal."
* performer ^comment = "TKB-fält: `performer` (`HsaIdType (string)`, kardinalitet 0..*)."
* timeTypeName ^definition = "Namn på tidstyp."
* timeTypeName ^comment = "TKB-fält: `timeTypeName` (`string`, kardinalitet 0..1)."
* timeTypeID ^definition = "Identifierare för tidstyp."
* timeTypeID ^comment = "TKB-fält: `timeTypeID` (`TimeTypeIDType (string)`, kardinalitet 0..1)."
* careTypeName ^definition = "Namn på vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes."
* careTypeName ^comment = "TKB-fält: `careTypeName` (`string`, kardinalitet 0..1)."
* careTypeID ^definition = "Identifierare för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes."
* careTypeID ^comment = "TKB-fält: `careTypeID` (`CareTypeIDType (string)`, kardinalitet 0..1)."
* subject_of_care ^definition = "Personnummer enl. yyyymmddxxxx."
* subject_of_care ^comment = "TKB-fält: `subject_of_care` (`SubjectOfCareIdType (string)`, kardinalitet 1..1).

**Modellanteckning:** Personnummer för invånaren."
