// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CreateBookingFieldDescriptions
* bookingCreate ^definition = "Beställning som ska skapas."
* bookingCreate ^comment = "TKB-fält: `BookingCreate` (`BookingCreate / (se 6.6.4)`, kardinalitet 1)."
* bookingCreate.bookingInformationFromAssociation.interpreterName ^definition = "Namn på tolk."
* bookingCreate.bookingInformationFromAssociation.interpreterName ^comment = "TKB-fält: `InterpreterName` (`string`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1.

**Modellanteckning:** Tolkens namn (minst ett tecken)."
