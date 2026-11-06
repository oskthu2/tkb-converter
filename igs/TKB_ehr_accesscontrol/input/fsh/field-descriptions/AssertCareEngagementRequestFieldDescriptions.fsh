// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: AssertCareEngagementRequestFieldDescriptions
* performer ^definition = "HSA-id för medarbetare som begär åtkomst till sammanhållen journalföring. Ska vara HSA-id för den medarbetare som är autentiserad i tjänstekonsumenten och som begär åtkomst till sammanhållen journalföring."
* performer ^comment = "TKB-fält: `performer` (`sträng`, kardinalitet 1..1)."
* subjectOfCareId ^definition = "Person- eller samordningsnummer. 12 tecken enligt Skatteverkets format (ej bindestreck)."
* subjectOfCareId ^comment = "TKB-fält: `subjectOfCareId` (`sträng`, kardinalitet 1..1)."
* careUnitHsaIdentity ^definition = "HSA-id för medarbetarens uppdragsvårdenhet"
* careUnitHsaIdentity ^comment = "TKB-fält: `careUnitHsaIdentity` (`sträng`, kardinalitet 1..1).

**Modellanteckning:** HSA-id för den vårdenhet på vars uppdrag medarbetaren agerar och begär åtkomst
till sammanhållen journalföring.
System: urn:oid:1.2.752.129.2.1.4.1 (HSA)"
* careGiverHsaIdentity ^definition = "HSA-id för vårdgivaren där vårdenhet med HSA-id enligt careUnitHsaIdentity ingår."
* careGiverHsaIdentity ^comment = "TKB-fält: `careGiverHsaIdentity` (`Sträng`, kardinalitet 1..1)."
