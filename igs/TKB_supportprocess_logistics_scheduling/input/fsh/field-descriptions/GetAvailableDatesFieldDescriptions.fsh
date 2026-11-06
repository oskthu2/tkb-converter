// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableDatesFieldDescriptions
* availableDate ^definition = "Lista med datum där det finns lediga tider"
* availableDate ^comment = "TKB-fält: `availableDate` (`AvailableDateType`, kardinalitet 0..*)."
* availableDate.date ^definition = "Ledigt datum."
* availableDate.date ^comment = "TKB-fält: `availableDate .date` (`DT`, kardinalitet 1..1)."
* availableDate.noOfTimeslots ^definition = "Antal lediga tider som finns på datumet"
* availableDate.noOfTimeslots ^comment = "TKB-fält: `availableDate.noOfTimeslots` (`integer`, kardinalitet 1..1)."
* availableDate.timeType ^definition = "Tidstyp som de lediga tiderna gäller"
* availableDate.timeType ^comment = "TKB-fält: `availableDate.timeType` (`TimeTypeType`, kardinalitet 1..1)."
* availableDate.timeType.hidden ^comment = "TKB-fält: `../../hidden` (`boolean`, kardinalitet 0..1)."
* availableDate.timeType.careContactCode ^comment = "TKB-fält: `../../careContactCode` (`CVType`, kardinalitet 0..1)."
* availableDate.timeType.careContactCode.cvCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* availableDate.timeType.careContactCode.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1)."
* availableDate.timeType.careContactCode.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* availableDate.timeType.careContactCode.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* availableDate.timeType.careContactCode.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* availableDate.timeType.careContactCode.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* availableDate.timeType.healthcareService ^comment = "TKB-fält: `../../healthcareService` (`HealthcareServiceType`, kardinalitet 0..*)."
* availableDate.timeType.healthcareService.healthcareServiceCode ^comment = "TKB-fält: `../../../code` (`SnomedCtType`, kardinalitet 1..1).

**Modellanteckning:** healthcareServiceCode Heter code i schemat."
* availableDate.timeType.healthcareService.healthcareServiceCode.snomedCtCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** snomedCtCode Heter code i schemat."
* availableDate.timeType.healthcareService.healthcareServiceCode.codeSystem ^definition = "Tillåtna värden: 1.2.752.116.2.1.1."
* availableDate.timeType.healthcareService.healthcareServiceCode.codeSystem ^comment = "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1)."
* availableDate.timeType.healthcareService.healthcareServiceCode.codeSystemName ^comment = "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* availableDate.timeType.healthcareService.healthcareServiceCode.codeSystemVersion ^comment = "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* availableDate.timeType.healthcareService.healthcareServiceCode.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1)."
* availableDate.timeType.healthcareService.healthcareServiceCode.originalText ^comment = "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1)."
* availableDate.timeType.healthcareService.information ^comment = "TKB-fält: `../../../information` (`InformationType`, kardinalitet 0..*)."
* availableDate.timeType.healthcareService.information.header ^comment = "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1)."
* availableDate.timeType.healthcareService.information.description ^comment = "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1)."
* availableDate.timeType.healthcareService.information.link ^comment = "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1)."
* availableDate.timeType.healthcareService.conditionsToConfirm ^comment = "TKB-fält: `../../../conditionsToConfirm` (`InformationType`, kardinalitet 0..*)."
* availableDate.timeType.healthcareService.conditionsToConfirm.header ^comment = "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1)."
* availableDate.timeType.healthcareService.conditionsToConfirm.description ^comment = "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1)."
* availableDate.timeType.healthcareService.conditionsToConfirm.link ^comment = "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1)."
* availableDate.timeType.healthcareTeam ^comment = "TKB-fält: `../../healthcareTeam` (`boolean`, kardinalitet 0..1)."
* availableDate.timeType.patientGroup ^comment = "TKB-fält: `../../patientGroup` (`boolean`, kardinalitet 0..1)."
* availableDate.timeType.cancelAppointmentAllowed ^comment = "TKB-fält: `../../cancelAppointmentAllowed` (`boolean`, kardinalitet 1..1)."
* availableDate.timeType.updateAppointmentAllowed ^comment = "TKB-fält: `../../updateAppointmentAllowed` (`boolean`, kardinalitet 1..1)."
* availableDate.timeType.appointmentRule ^comment = "TKB-fält: `../../appointmentRule` (`TimeTypeRulesType`, kardinalitet 0..3)."
* availableDate.timeType.appointmentRule.timeTypeRulesType ^comment = "TKB-fält: `../../../type` (`ProcessEnum`, kardinalitet 1..1).

**Modellanteckning:** timeTypeRulesType Heter type i schemat."
* availableDate.timeType.appointmentRule.reasonTextRequired ^comment = "TKB-fält: `../../../reasonTextRequired` (`ReasonRequiredEnum`, kardinalitet 1..1)."
* availableDate.timeType.appointmentRule.reasonCodeRequired ^comment = "TKB-fält: `../../../reasonCodeRequired` (`ReasonRequiredEnum`, kardinalitet 1..1)."
* availableDate.timeType.appointmentRule.reasonCodes ^comment = "TKB-fält: `../../../reasonCodes` (`CVType`, kardinalitet 0..*)."
* availableDate.timeType.appointmentRule.reasonCodes.cvCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* availableDate.timeType.appointmentRule.reasonCodes.codeSystem ^comment = "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1)."
* availableDate.timeType.appointmentRule.reasonCodes.codeSystemName ^comment = "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* availableDate.timeType.appointmentRule.reasonCodes.codeSystemVersion ^comment = "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* availableDate.timeType.appointmentRule.reasonCodes.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1)."
* availableDate.timeType.appointmentRule.reasonCodes.originalText ^comment = "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1)."
* availableDate.timeType.appointmentRule.information ^comment = "TKB-fält: `../../../information` (`InformationType`, kardinalitet 0..*)."
* availableDate.timeType.appointmentRule.information.header ^comment = "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1)."
* availableDate.timeType.appointmentRule.information.description ^comment = "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1)."
* availableDate.timeType.appointmentRule.information.link ^comment = "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1)."
* availableDate.timeType.appointmentRule.conditionToConfirm ^comment = "TKB-fält: `../../../conditionToConfirm` (`InformationType`, kardinalitet 0..*)."
* availableDate.timeType.appointmentRule.conditionToConfirm.header ^comment = "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1)."
* availableDate.timeType.appointmentRule.conditionToConfirm.description ^comment = "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1)."
* availableDate.timeType.appointmentRule.conditionToConfirm.link ^comment = "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1)."
* availableDate.practitioner ^definition = "Personal som är relaterad till de lediga tiderna"
* availableDate.practitioner ^comment = "TKB-fält: `availableDate.practitioner` (`PractionerType`, kardinalitet 0..1)."
* availableDate.practitioner.HSAId ^comment = "TKB-fält: `../../HSAId` (`HSAIdType`, kardinalitet 1..1)."
* availableDate.practitioner.HSAId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* availableDate.practitioner.HSAId.hSAIdExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** hSAIdExtension Heter extension i schemat."
* availableDate.practitioner.firstName ^comment = "TKB-fält: `../../firstName` (`string`, kardinalitet 1..1)."
* availableDate.practitioner.lastName ^comment = "TKB-fält: `../../lastName` (`string`, kardinalitet 1..1)."
* availableDate.practitioner.title ^comment = "TKB-fält: `../../title` (`string`, kardinalitet 0..1)."
* availableDate.resource ^definition = "Resurs som är relaterad till de lediga tiderna"
* availableDate.resource ^comment = "TKB-fält: `availableDate.resource` (`ResourceType`, kardinalitet 0..1)."
* availableDate.resource.typeOfResource ^comment = "TKB-fält: `../../typeOfResource` (`CVType`, kardinalitet 0..1)."
* availableDate.resource.typeOfResource.cvCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* availableDate.resource.typeOfResource.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1)."
* availableDate.resource.typeOfResource.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* availableDate.resource.typeOfResource.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* availableDate.resource.typeOfResource.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* availableDate.resource.typeOfResource.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* availableDate.resource.resourceAttribute ^comment = "TKB-fält: `../../resourceAttribute` (`CVType`, kardinalitet 0..1)."
* availableDate.resource.resourceAttribute.cvCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* availableDate.resource.resourceAttribute.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1)."
* availableDate.resource.resourceAttribute.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* availableDate.resource.resourceAttribute.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* availableDate.resource.resourceAttribute.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* availableDate.resource.resourceAttribute.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* availableDate.resource.description ^comment = "TKB-fält: `../../description` (`string`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
