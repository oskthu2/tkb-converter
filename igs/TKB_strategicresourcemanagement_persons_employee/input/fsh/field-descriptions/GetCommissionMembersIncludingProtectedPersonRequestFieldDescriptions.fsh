// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCommissionMembersIncludingProtectedPersonRequestFieldDescriptions
* healthCareUnitHsaId ^definition = "HSA-id för vårdenhet enligt PDL."
* healthCareUnitHsaId ^comment = "TKB-fält: `healthCareUnitHsaId` (`String`, kardinalitet 1..1)."
* commissionPurpose ^definition = "Medarbetaruppdragets ändamål enligt definierad värdemängd."
* commissionPurpose ^comment = "TKB-fält: `commissionPurpose` (`String`, kardinalitet 1..1)."
* commissionRights ^definition = "Medarbetaruppdragets rättigheter enligt definierade värdemängder. Syntax

Aktivitet;Informationstyp;Omfång, alla delar behöver anges."
* commissionRights ^comment = "TKB-fält: `commissionRights` (`String`, kardinalitet 0..n)."
* healthCareProfessionalLicense ^definition = "Legitimerad yrkesgrupp enligt definierad värdemängd"
* healthCareProfessionalLicense ^comment = "TKB-fält: `healthCareProfessionalLicense` (`String`, kardinalitet 0..n)."
* searchBase ^definition = "Sökbas. Om ingen sökbas anges används c=SE som sökbas."
* searchBase ^comment = "TKB-fält: `searchBase *1)` (`DN`, kardinalitet 0..1)."
* includeFeignedObject ^definition = "true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras."
* includeFeignedObject ^comment = "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1)."
