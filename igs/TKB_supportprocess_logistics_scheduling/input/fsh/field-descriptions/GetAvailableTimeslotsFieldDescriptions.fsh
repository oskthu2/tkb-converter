// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableTimeslotsFieldDescriptions
* timeslot ^definition = "List med lediga tider"
* timeslot ^comment = "TKB-fält: `timeslot` (`TimeslotType`, kardinalitet 0..*)."
* timeslot.timeslotId ^definition = "Unikt id för tidsluckan. Ska uttryckas som uuid (universally unique identifier)."
* timeslot.timeslotId ^comment = "TKB-fält: `timeslot.timeslotId` (`uuidType`, kardinalitet 1..1)."
* timeslot.timeType ^definition = "Typ av tid som uttrycker var bokningen/besöket avser. Se datatypen TimeTypeType för vidare information."
* timeslot.timeType ^comment = "TKB-fält: `timeslot.timeType` (`TimeTypeType`, kardinalitet 1..1)."
* timeslot.timeType.hidden ^comment = "TKB-fält: `../../hidden` (`boolean`, kardinalitet 0..1)."
* timeslot.timeType.careContactCode ^comment = "TKB-fält: `../../careContactCode` (`CVType`, kardinalitet 0..1)."
* timeslot.timeType.careContactCode.cvCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* timeslot.timeType.careContactCode.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1)."
* timeslot.timeType.careContactCode.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* timeslot.timeType.careContactCode.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* timeslot.timeType.careContactCode.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* timeslot.timeType.careContactCode.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* timeslot.timeType.healthcareService ^comment = "TKB-fält: `../../healthcareService` (`HealthcareServiceType`, kardinalitet 0..*)."
* timeslot.timeType.healthcareService.healthcareServiceCode ^comment = "TKB-fält: `../../../code` (`SnomedCtType`, kardinalitet 1..1).

**Modellanteckning:** healthcareServiceCode Heter code i schemat."
* timeslot.timeType.healthcareService.healthcareServiceCode.snomedCtCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** snomedCtCode Heter code i schemat."
* timeslot.timeType.healthcareService.healthcareServiceCode.codeSystem ^definition = "Tillåtna värden: 1.2.752.116.2.1.1."
* timeslot.timeType.healthcareService.healthcareServiceCode.codeSystem ^comment = "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1)."
* timeslot.timeType.healthcareService.healthcareServiceCode.codeSystemName ^comment = "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* timeslot.timeType.healthcareService.healthcareServiceCode.codeSystemVersion ^comment = "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* timeslot.timeType.healthcareService.healthcareServiceCode.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1)."
* timeslot.timeType.healthcareService.healthcareServiceCode.originalText ^comment = "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1)."
* timeslot.timeType.healthcareService.information ^comment = "TKB-fält: `../../../information` (`InformationType`, kardinalitet 0..*)."
* timeslot.timeType.healthcareService.information.header ^comment = "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1)."
* timeslot.timeType.healthcareService.information.description ^comment = "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1)."
* timeslot.timeType.healthcareService.information.link ^comment = "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1)."
* timeslot.timeType.healthcareService.conditionsToConfirm ^comment = "TKB-fält: `../../../conditionsToConfirm` (`InformationType`, kardinalitet 0..*)."
* timeslot.timeType.healthcareService.conditionsToConfirm.header ^comment = "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1)."
* timeslot.timeType.healthcareService.conditionsToConfirm.description ^comment = "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1)."
* timeslot.timeType.healthcareService.conditionsToConfirm.link ^comment = "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1)."
* timeslot.timeType.healthcareTeam ^comment = "TKB-fält: `../../healthcareTeam` (`boolean`, kardinalitet 0..1)."
* timeslot.timeType.patientGroup ^comment = "TKB-fält: `../../patientGroup` (`boolean`, kardinalitet 0..1)."
* timeslot.timeType.cancelAppointmentAllowed ^comment = "TKB-fält: `../../cancelAppointmentAllowed` (`boolean`, kardinalitet 1..1)."
* timeslot.timeType.updateAppointmentAllowed ^comment = "TKB-fält: `../../updateAppointmentAllowed` (`boolean`, kardinalitet 1..1)."
* timeslot.timeType.appointmentRule ^comment = "TKB-fält: `../../appointmentRule` (`TimeTypeRulesType`, kardinalitet 0..3)."
* timeslot.timeType.appointmentRule.timeTypeRulesType ^comment = "TKB-fält: `../../../type` (`ProcessEnum`, kardinalitet 1..1).

**Modellanteckning:** timeTypeRulesType Heter type i schemat."
* timeslot.timeType.appointmentRule.reasonTextRequired ^comment = "TKB-fält: `../../../reasonTextRequired` (`ReasonRequiredEnum`, kardinalitet 1..1)."
* timeslot.timeType.appointmentRule.reasonCodeRequired ^comment = "TKB-fält: `../../../reasonCodeRequired` (`ReasonRequiredEnum`, kardinalitet 1..1)."
* timeslot.timeType.appointmentRule.reasonCodes ^comment = "TKB-fält: `../../../reasonCodes` (`CVType`, kardinalitet 0..*)."
* timeslot.timeType.appointmentRule.reasonCodes.cvCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* timeslot.timeType.appointmentRule.reasonCodes.codeSystem ^comment = "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1)."
* timeslot.timeType.appointmentRule.reasonCodes.codeSystemName ^comment = "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* timeslot.timeType.appointmentRule.reasonCodes.codeSystemVersion ^comment = "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* timeslot.timeType.appointmentRule.reasonCodes.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1)."
* timeslot.timeType.appointmentRule.reasonCodes.originalText ^comment = "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1)."
* timeslot.timeType.appointmentRule.information ^comment = "TKB-fält: `../../../information` (`InformationType`, kardinalitet 0..*)."
* timeslot.timeType.appointmentRule.information.header ^comment = "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1)."
* timeslot.timeType.appointmentRule.information.description ^comment = "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1)."
* timeslot.timeType.appointmentRule.information.link ^comment = "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1)."
* timeslot.timeType.appointmentRule.conditionToConfirm ^comment = "TKB-fält: `../../../conditionToConfirm` (`InformationType`, kardinalitet 0..*)."
* timeslot.timeType.appointmentRule.conditionToConfirm.header ^comment = "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1)."
* timeslot.timeType.appointmentRule.conditionToConfirm.description ^comment = "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1)."
* timeslot.timeType.appointmentRule.conditionToConfirm.link ^comment = "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1)."
* timeslot.startTime ^definition = "Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss."
* timeslot.startTime ^comment = "TKB-fält: `timeslot.startTime` (`TS (string)`, kardinalitet 1..1)."
* timeslot.endTime ^definition = "Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss."
* timeslot.endTime ^comment = "TKB-fält: `timeslot.endTime` (`TS (string)`, kardinalitet 0..1)."
* timeslot.timeLength ^definition = "Längd på besöket i minuter"
* timeslot.timeLength ^comment = "TKB-fält: `timeslot.timeLength` (`double`, kardinalitet 0..1)."
* timeslot.healthcareFacilityHSAId ^definition = "HSAId för vårdenheten som bokningen gäller hos."
* timeslot.healthcareFacilityHSAId ^comment = "TKB-fält: `timeslot.healthcareFacilityHSAId` (`HSAIdType`, kardinalitet 1..1)."
* timeslot.healthcareFacilityHSAId.root ^comment = "TKB-fält: `../../root` (`string`, kardinalitet 1..1)."
* timeslot.healthcareFacilityHSAId.hSAIdExtension ^comment = "TKB-fält: `../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** hSAIdExtension Heter extension i schemat."
* timeslot.practitioner ^definition = "HoS-person som besöket är bokat hos. Se datatypen PractitionerType för vidare information."
* timeslot.practitioner ^comment = "TKB-fält: `timeslot.practitioner` (`PractitionerType`, kardinalitet 0..*)."
* timeslot.practitioner.HSAId ^comment = "TKB-fält: `../../HSAId` (`HSAIdType`, kardinalitet 1..1)."
* timeslot.practitioner.HSAId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* timeslot.practitioner.HSAId.hSAIdExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** hSAIdExtension Heter extension i schemat."
* timeslot.practitioner.firstName ^comment = "TKB-fält: `../../firstName` (`string`, kardinalitet 1..1)."
* timeslot.practitioner.lastName ^comment = "TKB-fält: `../../lastName` (`string`, kardinalitet 1..1)."
* timeslot.practitioner.title ^comment = "TKB-fält: `../../title` (`string`, kardinalitet 0..1)."
* timeslot.resource ^definition = "En resurs är något som kan tas i anspråk för eller krävs för genomförande av aktiviteter eller processer inom vård och omsorg och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter inom hälso- och sjukvård och pengar som betalas ut till brukaren inom socialtjänst.

Se datatypen ResourceType för vidare information."
* timeslot.resource ^comment = "TKB-fält: `timeslot.resource` (`ResourceType`, kardinalitet 0..1).

Obs: modellen anger 0..* där TKB:n anger 0..1."
* timeslot.resource.typeOfResource ^comment = "TKB-fält: `../../typeOfResource` (`CVType`, kardinalitet 0..1)."
* timeslot.resource.typeOfResource.cvCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* timeslot.resource.typeOfResource.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1)."
* timeslot.resource.typeOfResource.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* timeslot.resource.typeOfResource.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* timeslot.resource.typeOfResource.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* timeslot.resource.typeOfResource.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* timeslot.resource.resourceAttribute ^comment = "TKB-fält: `../../resourceAttribute` (`CVType`, kardinalitet 0..1)."
* timeslot.resource.resourceAttribute.cvCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* timeslot.resource.resourceAttribute.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1)."
* timeslot.resource.resourceAttribute.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* timeslot.resource.resourceAttribute.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* timeslot.resource.resourceAttribute.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* timeslot.resource.resourceAttribute.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* timeslot.resource.description ^comment = "TKB-fält: `../../description` (`string`, kardinalitet 0..1)."
* timeslot.withinCareGuarantee ^definition = "Flagga som visar huruvida denna tidslucka ligger inom Vårdgarantin. Flaggan är intressant att förmedla i samband med exempelvis ett nybokningsflöde, då invånaren söker efter lediga tider. Flaggan relaterar således till den tidpunkt då invånaren begärde att söka efter lediga tider. Om attributet utesluts kan en konsument inte dra slutsatser huruvida den erbjudna lediga tiden ligger inom eller utom vårdgarantin."
* timeslot.withinCareGuarantee ^comment = "TKB-fält: `timeslot.withinCareGuarantee` (`boolean`, kardinalitet 0..1)."
* timeslot.alternativeLocation ^comment = "TKB-fält: `../alternativeLocation` (`string`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
