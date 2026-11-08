// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPersonsForProfileUnrestrictedRequestFieldDescriptions
* personId ^definition = "En universellt unik identifierare."
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 1..*)."
* profile ^comment = "TKB-fält: `profile` (`LookupProfileType`, kardinalitet 1..1).

**Modellanteckning:** profile Tillåtna värden: P1, P2, P3, P4, P5, P6, P7, P8, P9, P10."
* ignoreReferredIdentity ^comment = "TKB-fält: `ignoreReferredIdentity` (`boolean`, kardinalitet 1..1)."
