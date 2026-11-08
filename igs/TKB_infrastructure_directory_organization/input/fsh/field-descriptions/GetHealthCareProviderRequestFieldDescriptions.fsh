// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHealthCareProviderRequestFieldDescriptions
* healthCareProviderHsaId ^definition = "HSA-id för en vårdgivare enligt PDL. Ref. HSA-id (hsaIdentity) [R5]"
* healthCareProviderHsaId ^comment = "TKB-fält: `healthCareProviderHsaId` (`String`, kardinalitet 0..1 *1))."
* healthCareProviderOrgNo ^definition = "Organisationsnummer för en vårdgivare"
* healthCareProviderOrgNo ^comment = "TKB-fält: `healthCareProviderOrgNo` (`String`, kardinalitet 0..1 *1))."
* searchBase ^definition = "Sökbas. Om ingen sökbas anges används c=SE som sökbas."
* searchBase ^comment = "TKB-fält: `searchBase *2)` (`DN`, kardinalitet 0..1)."
* includeFeignedObject ^definition = "true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras."
* includeFeignedObject ^comment = "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1)."
