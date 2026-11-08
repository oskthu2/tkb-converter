// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAllHealthcareFacilitiesRequestFieldDescriptions
* healthcare_facility ^definition = "HSA-id för mottagning/vårdenhet."
* healthcare_facility ^comment = "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1)."
* subject_of_care ^definition = "Personnummer enl. yyyymmddxxxx.

Kan användas för att filtrera vad en tjänsteproducent ska returnera för en viss invånare (även vid nybokning)."
* subject_of_care ^comment = "TKB-fält: `subject_of_care` (`SubjectOfCareIdType (string)`, kardinalitet 1..1)."
* bookingId ^definition = "Internt bokningsid. Obligatoriskt när förfrågan gäller ombokning. Detta bokningsid behövs för tjänsteproducenten ska kunna filtrera på egenskaper för en grundbokning"
* bookingId ^comment = "TKB-fält: `bookingId` (`BookingIdType (string)`, kardinalitet 0..1)."
