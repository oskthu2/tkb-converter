// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHealthcareFacilityFieldDescriptions
* healthcareFacility ^definition = "Detaljer om vårdenheten."
* healthcareFacility ^comment = "TKB-fält: `healthcareFacility` (`OrgUnitType`, kardinalitet 1..1)."
* healthcareFacility.HSAId ^comment = "TKB-fält: `../HSAId` (`HSAIdType`, kardinalitet 1..1)."
* healthcareFacility.HSAId.root ^comment = "TKB-fält: `../../root` (`string`, kardinalitet 1..1)."
* healthcareFacility.HSAId.hSAIdExtension ^comment = "TKB-fält: `../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** hSAIdExtension Heter extension i schemat."
* healthcareFacility.orgUnitName ^comment = "TKB-fält: `../name` (`string`, kardinalitet 0..1).

**Modellanteckning:** orgUnitName Heter name i schemat."
* healthcareFacility.alternativeLocation ^comment = "TKB-fält: `../alternativeLocation` (`string`, kardinalitet 0..1)."
* healthcareFacility.information ^comment = "TKB-fält: `../information` (`InformationType`, kardinalitet 0..*)."
* healthcareFacility.information.header ^comment = "TKB-fält: `../../header` (`string`, kardinalitet 1..1)."
* healthcareFacility.information.description ^comment = "TKB-fält: `../../description` (`string`, kardinalitet 0..1)."
* healthcareFacility.information.link ^comment = "TKB-fält: `../../link` (`anyURI`, kardinalitet 0..1)."
* healthcareFacility.conditionToConfirm ^comment = "TKB-fält: `../conditionToConfirm` (`InformationType`, kardinalitet 0..*)."
* healthcareFacility.conditionToConfirm.header ^comment = "TKB-fält: `../../header` (`string`, kardinalitet 1..1)."
* healthcareFacility.conditionToConfirm.description ^comment = "TKB-fält: `../../description` (`string`, kardinalitet 0..1)."
* healthcareFacility.conditionToConfirm.link ^comment = "TKB-fält: `../../link` (`anyURI`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
