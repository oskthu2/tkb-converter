// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: LookupResidentsForProfileRequestFieldDescriptions
* personId ^definition = "Array med personidentiteter som efterfrågas. Maxantal 500"
* personId ^comment = "TKB-fält: `personId` (`PersonalIdentity`, kardinalitet 1..*).

**Modellanteckning:** Personidentitet"
* personId.personalIdentityId ^comment = "TKB-fält: `../id` (`PersonalIdentityNumber`, kardinalitet 1..1).

**Modellanteckning:** personalIdentityId Heter id i schemat."
* personId.personalIdentityType ^comment = "TKB-fält: `../type` (`string`, kardinalitet 1..1).

**Modellanteckning:** personalIdentityType Heter type i schemat."
* profile ^definition = "Profil för returnerat data."
* profile ^comment = "TKB-fält: `profile` (`LookupProfile`, kardinalitet 1..1)."
