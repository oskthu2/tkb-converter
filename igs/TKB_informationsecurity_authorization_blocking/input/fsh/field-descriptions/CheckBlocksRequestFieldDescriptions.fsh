// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CheckBlocksRequestFieldDescriptions
* accessingActor ^definition = "Representerar den aktör/person som önskar åtkomst till informationen."
* accessingActor ^comment = "TKB-fält: `accessingActor` (`urn:riv:informationsecurity:authorization:blocking:4:AccessingActorType`, kardinalitet 1..1).

**Modellanteckning:** Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information."
* accessingActor.employeeId ^comment = "TKB-fält: `../employeeId` (`HsaId`, kardinalitet 1..1)."
* accessingActor.careProviderId ^comment = "TKB-fält: `../careProviderId` (`HsaId`, kardinalitet 1..1)."
* accessingActor.careUnitId ^comment = "TKB-fält: `../careUnitId` (`HsaId`, kardinalitet 1..1)."
* patientId ^definition = "Personidentitet på patienten vars information aktören önskar åtkomst till."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:blocking:4:IIType`, kardinalitet 1..1).

**Modellanteckning:** En universellt unik identifierare."
* patientId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* patientId.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* informationEntities ^definition = "Lista över de informationsentiteter som aktören önskar åtkomst till."
* informationEntities ^comment = "TKB-fält: `informationEntities` (`urn:riv:informationsecurity:authorization:blocking:4:InformationEntityType`, kardinalitet 1..*).

**Modellanteckning:** Datatyp som representerar den information som behövs vid en kontroll om spärr föreligger."
* informationEntities.informationStartDate ^comment = "TKB-fält: `../informationStartDate` (`dateTime`, kardinalitet 1..1)."
* informationEntities.informationEndDate ^comment = "TKB-fält: `../informationEndDate` (`dateTime`, kardinalitet 1..1)."
* informationEntities.informationCareUnitId ^comment = "TKB-fält: `../informationCareUnitId` (`HsaId`, kardinalitet 1..1)."
* informationEntities.informationCareProviderId ^comment = "TKB-fält: `../informationCareProviderId` (`HsaId`, kardinalitet 1..1)."
* informationEntities.informationType ^comment = "TKB-fält: `../informationType` (`InformationTypeIdValue`, kardinalitet 0..1)."
* informationEntities.rowNumber ^comment = "TKB-fält: `../rowNumber` (`int`, kardinalitet 1..1)."
