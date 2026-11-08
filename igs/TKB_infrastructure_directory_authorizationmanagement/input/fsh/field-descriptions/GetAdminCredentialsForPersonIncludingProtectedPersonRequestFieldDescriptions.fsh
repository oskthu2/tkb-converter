// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAdminCredentialsForPersonIncludingProtectedPersonRequestFieldDescriptions
* personHsaId ^definition = "Unik identifierare för den person vars behörighetsegenskaper ska sökas ut.

Ref. HSA-id (hsaIdentity) [R5]"
* personHsaId ^comment = "TKB-fält: `personHsaId *1)` (`String`, kardinalitet 0..1)."
* personalIdentityNumber ^definition = "Person-id för den person vars behörighetsegenskaper ska sökas ut. Ref. person-id (personalIdentityNumber) [R5]"
* personalIdentityNumber ^comment = "TKB-fält: `personalIdentityNumber *1)` (`String`, kardinalitet 0..1)."
* authorizationScopeCode ^definition = "Behörighetsområdeskod som ska ingå i sökt Administrativt medarbetaruppdrag. Optional."
* authorizationScopeCode ^comment = "TKB-fält: `authorizationScopeCode` (`String`, kardinalitet 0..1)."
* authorizationScopePropertyCode ^definition = "Kod för behörighetsområdesegenskap som ska ingå i sökt Administrativt medarbetaruppdrag. Optional."
* authorizationScopePropertyCode ^comment = "TKB-fält: `authorizationScopePropertyCode` (`String`, kardinalitet 0..1)."
* searchBase ^definition = "Sökbas för behörighetsegenskaper. Om ingen sökbas anges används c=SE som sökbas."
* searchBase ^comment = "TKB-fält: `searchBase *2)` (`DN`, kardinalitet 0..1)."
* includeFeignedObject ^definition = "true: om metoden ska leverera svar med fingerade objekt."
* includeFeignedObject ^comment = "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1)."
