// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: LookupResidentForFullProfileRequestFieldDescriptions
* personId ^definition = "Personnummer på format ÅÅÅÅMMDDNNNN. Flera personnummer kan anges i samma fråga. `personId` kan även vara reservnummer i det fall tjänstekonsumenten är en regional/lokal instans (format specifikt för aktuellt reservnummerkodverk). Se begränsning på antal `personId` enl. SLA-krav (avsnitt 4.6, max 1000/anrop)"
* personId ^comment = "TKB-fält: `personId` (`Text`, kardinalitet 1..*)."
* lookUpSpecification ^definition = "Urvalsbegränsning. Se datatypbeskrivning i avsnitt 5.2. _Obligatoriskt element enligt XSD, även om samtliga dess underfält är valfria — se ASSUME-PRM-001_"
* lookUpSpecification ^comment = "TKB-fält: `lookUpSpecification` (`LookUpSpecificationType`, kardinalitet 1..1).

**Modellanteckning:** Urvalsbegränsning enligt datatypen LookUpSpecificationType (avsnitt 5.2).
Elementet är enligt käll-XSD:t obligatoriskt även om samtliga dess underfält är
valfria — se ASSUME-PRM-001 i QUESTIONS.md."
