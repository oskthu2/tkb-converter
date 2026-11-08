// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: LookupResidentsForProfileRequestFieldDescriptions
* personId ^definition = "Array med personidentiteter som efterfrågas. Maxantal 500"
* personId ^comment = "TKB-fält: `personId` (`PersonalIdentity`, kardinalitet 1..*)."
* personId.id ^comment = "TKB-fält: `../id` (`PersonalIdentityNumber`, kardinalitet 1..1)."
* personId.type ^comment = "TKB-fält: `../type` (`string`, kardinalitet 1..1)."
* profile ^definition = "Profil för returnerat data."
* profile ^comment = "TKB-fält: `profile` (`LookupProfile`, kardinalitet 1..1).

**Modellanteckning:** profile Tillåtna värden: P1, P2, P3, P4, P5, P6, P7, P8, P9, P10."
