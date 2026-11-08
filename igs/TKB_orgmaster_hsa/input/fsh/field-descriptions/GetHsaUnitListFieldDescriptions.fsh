// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHsaUnitListFieldDescriptions
* UnitList ^comment = "TKB-fält: `UnitList` (`UnitList`, kardinalitet 0..1)."
* UnitList.unitListUnit ^comment = "TKB-fält: `../unitListUnit` (`UnitListUnit`, kardinalitet 0..*)."
* UnitList.unitListUnit.hsaIdentity ^comment = "TKB-fält: `../../hsaIdentity` (`HsaIdentityType`, kardinalitet 1..1)."
* UnitList.unitListUnit.name ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 1..1)."
* UnitList.unitListUnit.parentHsaIdentity ^comment = "TKB-fält: `../../parentHsaIdentity` (`HsaIdentityType`, kardinalitet 0..1)."
