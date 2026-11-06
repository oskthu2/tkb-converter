// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListInquiriesFieldDescriptions
* inquiries ^definition = "Förfrågningar."
* inquiries ^comment = "TKB-fält: `Inquiries` (`Inquiry / (se 6.6.11)`, kardinalitet 0..*).

**Modellanteckning:** Förfrågningar (Inquiry)."
* lastSequenceNumber ^definition = "Nummer på meddelandet."
* lastSequenceNumber ^comment = "TKB-fält: `LastSequenceNumber` (`MessageSequenceNumber / (se 6.6.13)`, kardinalitet 1).

**Modellanteckning:** Nummer på det senaste meddelandet i svaret. XSD-typen är unsignedLong; FHIR saknar motsvarande typ."
* hasMoreEntries ^comment = "TKB-fält: `HasMoreEntries` (`boolean`, kardinalitet 1)."
