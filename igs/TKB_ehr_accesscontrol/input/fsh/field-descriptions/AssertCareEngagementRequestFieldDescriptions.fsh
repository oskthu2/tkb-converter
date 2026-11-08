// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: AssertCareEngagementRequestFieldDescriptions
* performer ^definition = "HSA-id för medarbetare som begär åtkomst till sammanhållen journalföring. Ska vara HSA-id för den medarbetare som är autentiserad i tjänstekonsumenten och som begär åtkomst till sammanhållen journalföring."
* performer ^comment = "TKB-fält: `performer` (`sträng`, kardinalitet 1..1)."
* subjectOfCareId ^definition = "Person- eller samordningsnummer. 12 tecken enligt Skatteverkets format (ej bindestreck)."
* subjectOfCareId ^comment = "TKB-fält: `subjectOfCareId` (`sträng`, kardinalitet 1..1)."
* careUnitHsaIdentity ^definition = "HSA-id för medarbetarens uppdragsvårdenhet"
* careUnitHsaIdentity ^comment = "TKB-fält: `careUnitHsaIdentity` (`sträng`, kardinalitet 1..1)."
* careGiverHsaIdentity ^definition = "HSA-id för vårdgivaren där vårdenhet med HSA-id enligt careUnitHsaIdentity ingår."
* careGiverHsaIdentity ^comment = "TKB-fält: `careGiverHsaIdentity` (`Sträng`, kardinalitet 1..1)."
