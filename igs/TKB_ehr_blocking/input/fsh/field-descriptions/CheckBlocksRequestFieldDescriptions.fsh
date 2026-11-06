// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CheckBlocksRequestFieldDescriptions
* accessingActor ^definition = "Representerar den aktör/person som önskar åtkomst till informationen."
* accessingActor ^comment = "TKB-fält: `accessingActor` (`blocking.accesscontrol:AccessingActor`, kardinalitet 1..1)."
* informationEntities ^definition = "Lista över de informationsentiteter som aktören önskar åtkomst till."
* informationEntities ^comment = "TKB-fält: `informationEntities` (`blocking.accesscontrol:InformationEntity`, kardinalitet 1..*)."
* patientId ^definition = "Personnummer på patienten vars information aktören önskar åtkomst till."
* patientId ^comment = "TKB-fält: `patientId` (`blocking.accesscontrol:PersonIdValue`, kardinalitet 1..1)."
