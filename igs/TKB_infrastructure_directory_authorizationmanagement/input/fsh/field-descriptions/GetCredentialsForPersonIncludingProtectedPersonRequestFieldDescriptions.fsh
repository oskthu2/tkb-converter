// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCredentialsForPersonIncludingProtectedPersonRequestFieldDescriptions
* personHsaId ^definition = "Unik identifierare för den person vars behörighetsegenskaper ska sökas ut.

Ref. HSA-id (hsaIdentity) [R5]"
* personHsaId ^comment = "TKB-fält: `personHsaId *1)` (`String`, kardinalitet 0..1)."
* personalIdentityNumber ^definition = "Person-id för den person vars behörighetsegenskaper ska sökas ut. Ref. person-id (personalIdentityNumber) [R5]"
* personalIdentityNumber ^comment = "TKB-fält: `personalIdentityNumber *1)` (`String`, kardinalitet 0..1)."
* searchBase ^definition = "Sökbas. Om ingen sökbas anges används c=SE som sökbas."
* searchBase ^comment = "TKB-fält: `searchBase *4)` (`DN`, kardinalitet 0..1)."
* includeFeignedObject ^definition = "true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras."
* includeFeignedObject ^comment = "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1)."
* profile ^definition = "profile kan endast ha värdet \"extended1\" och med detta värde satt returneras även personalIdentity,"
* profile ^comment = "TKB-fält: `profile` (`String`, kardinalitet 0..1)."
