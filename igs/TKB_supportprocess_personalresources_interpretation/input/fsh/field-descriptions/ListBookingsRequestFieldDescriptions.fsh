// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListBookingsRequestFieldDescriptions
* lastSequenceNumber ^definition = "Referens till det senaste meddelandet som togs emot (för att bara hämta beställningar som inte hämtats tidigare)."
* lastSequenceNumber ^comment = "TKB-fält: `LastSequenceNumber` (`MessageSequenceNumber / (se 6.6.13)`, kardinalitet 1).

**Modellanteckning:** Referens till det senaste mottagna meddelandet, så att bara nya poster hämtas. XSD-typen är unsignedLong; FHIR saknar motsvarande typ."
