// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHealthCareUnitMembersRequestFieldDescriptions
* healthCareUnitHsaId ^definition = "HSA-id för vårdenhet enligt PDL. Ref. HSA-id (hsaIdentity) [R5]"
* healthCareUnitHsaId ^comment = "TKB-fält: `healthCareUnitHsaId` (`String`, kardinalitet 1..1)."
* searchBase ^definition = "Sökbas. Om ingen sökbas anges används c=SE som sökbas."
* searchBase ^comment = "TKB-fält: `searchBase *1)` (`DN`, kardinalitet 0..1).

**Modellanteckning:** DN-format. Obs: kopplade enheter söks alltid med sökbas c=se."
* includeFeignedObject ^definition = "true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras."
* includeFeignedObject ^comment = "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1)."
