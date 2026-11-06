// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CancelBookingRequestFieldDescriptions
* healthcare_facility ^definition = "HSA-id för mottagning/vårdenhet"
* healthcare_facility ^comment = "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1)."
* bookingId ^definition = "Intern bokningsidentitet"
* bookingId ^comment = "TKB-fält: `bookingId` (`BookingIdType (string)`, kardinalitet 1..1).

**Modellanteckning:** Intern bokningsidentitet för bokningen som ska avbokas."
* message ^definition = "Invånarens beskrivning av orsak för avbokning. Fältet kan bara skickas om värdet på message_allowed är ”true” i svaret från GetBookingDetails."
* message ^comment = "TKB-fält: `message` (`string`, kardinalitet 0..1)."
