// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: SearchPersonsForProfileByOrderRequestFieldDescriptions
* query ^definition = "Fråga för persondata angivet med syntax enligt element queryLanguage (se Tillämpningsanvisning frågespråk [R7])"
* query ^comment = "TKB-fält: `query` (`xs:String`, kardinalitet 1..1)."
* queryLanguage ^definition = "Anger syntax för element query"
* queryLanguage ^comment = "TKB-fält: `queryLanguage` (`xs:String`, kardinalitet 1..1)."
* profile ^definition = "Profil för returnerat data (se kap 8)."
* profile ^comment = "TKB-fält: `profile` (`urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType`, kardinalitet 1..1).

**Modellanteckning:** profile Tillåtna värden: P1, P2, P3, P4, P5, P6, P7, P8, P9, P10."
