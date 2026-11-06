// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCommissionMembersIncludingProtectedPersonRequestFieldDescriptions
* healthCareUnitHsaId ^definition = "HSA-id för vårdenhet enligt PDL. Ref. HSA-id (hsaIdentity) [R5]"
* healthCareUnitHsaId ^comment = "TKB-fält: `healthCareUnitHsaId` (`String`, kardinalitet 1..1)."
* commissionPurpose ^definition = "Vårdmedarbetaruppdragets ändamål enligt definierad värdemängd. Ref. vårdmedarbetaruppdragets ändamål (hsaCommissionPurpose) [R5]"
* commissionPurpose ^comment = "TKB-fält: `commissionPurpose` (`String`, kardinalitet 1..1)."
* commissionRights ^definition = "Vårdmedarbetaruppdragets rättigheter enligt definierade värdemängder. Syntax: Aktivitet;Informationstyp;Omfång, alla delar behöver anges. Ref. vårdmedarbetaruppdragets rättigheter (hsaCommissionRight) [R5]"
* commissionRights ^comment = "TKB-fält: `commissionRights` (`String`, kardinalitet 0..*)."
* healthCareProfessionalLicense ^definition = "Legitimerad yrkesgrupp enligt definierad värdemängd. Ref. legitimerad yrkesgrupp (hsaTitle) [R5]"
* healthCareProfessionalLicense ^comment = "TKB-fält: `healthCareProfessionalLicense` (`String`, kardinalitet 0..*)."
* searchBase ^definition = "Sökbas. Om ingen sökbas anges används c=SE som sökbas."
* searchBase ^comment = "TKB-fält: `searchBase *1)` (`DN`, kardinalitet 0..1)."
* includeFeignedObject ^definition = "true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false."
* includeFeignedObject ^comment = "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1)."
