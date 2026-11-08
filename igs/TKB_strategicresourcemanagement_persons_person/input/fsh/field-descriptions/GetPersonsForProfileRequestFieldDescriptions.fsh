// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPersonsForProfileRequestFieldDescriptions
* personId ^definition = "Array med personidentiteter som efterfrågas. Maxantal 500"
* personId ^comment = "TKB-fält: `personId` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..*)."
* profile ^definition = "Profil för urval av returnerat data."
* profile ^comment = "TKB-fält: `profile` (`urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType`, kardinalitet 1..1).

**Modellanteckning:** profile Tillåtna värden: P1, P2, P3, P4, P5, P6, P7, P8, P9, P10."
* ignoreReferredIdentity ^definition = "Om satt till true, ska producenten ignorera att följa och returnera eventuellt hänvisad huvudidentitet. Producenten ska returnera endast personposter på det sökta id:et"
* ignoreReferredIdentity ^comment = "TKB-fält: `ignoreReferredIdentity` (`xs:Boolean`, kardinalitet 1..1)."
