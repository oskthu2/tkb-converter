// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPersonsForProfileUnrestrictedRequestFieldDescriptions
* personId ^definition = "En universellt unik identifierare."
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 1..*)."
* personId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* personId.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* profile ^comment = "TKB-fält: `profile` (`LookupProfileType`, kardinalitet 1..1)."
* ignoreReferredIdentity ^comment = "TKB-fält: `ignoreReferredIdentity` (`boolean`, kardinalitet 1..1)."
