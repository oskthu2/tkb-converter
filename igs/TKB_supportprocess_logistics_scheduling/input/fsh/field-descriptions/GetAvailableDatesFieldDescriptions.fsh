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
* availableDate.timeType.code ^comment = "TKB-fält: `../../code` (`string`, kardinalitet 1..1)."
* availableDate.timeType.hidden ^comment = "TKB-fält: `../../hidden` (`boolean`, kardinalitet 0..1)."
* availableDate.timeType.careContactCode ^comment = "TKB-fält: `../../careContactCode` (`CVType`, kardinalitet 0..1)."
* availableDate.timeType.healthcareService ^comment = "TKB-fält: `../../healthcareService` (`HealthcareServiceType`, kardinalitet 0..*)."
* availableDate.timeType.healthcareService.code ^comment = "TKB-fält: `../../../code` (`SnomedCtType`, kardinalitet 1..1)."
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
* availableDate.timeType.appointmentRule.type ^comment = "TKB-fält: `../../../type` (`ProcessEnum`, kardinalitet 1..1).

**Modellanteckning:** type Tillåtna värden: NYBOKNING, AVBOKNING, OMBOKNING."
* availableDate.timeType.appointmentRule.reasonTextRequired ^comment = "TKB-fält: `../../../reasonTextRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).

**Modellanteckning:** reasonTextRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* availableDate.timeType.appointmentRule.reasonCodeRequired ^comment = "TKB-fält: `../../../reasonCodeRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).

**Modellanteckning:** reasonCodeRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* availableDate.timeType.appointmentRule.reasonCodes ^comment = "TKB-fält: `../../../reasonCodes` (`CVType`, kardinalitet 0..*)."
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
* availableDate.practitioner.firstName ^comment = "TKB-fält: `../../firstName` (`string`, kardinalitet 1..1)."
* availableDate.practitioner.lastName ^comment = "TKB-fält: `../../lastName` (`string`, kardinalitet 1..1)."
* availableDate.practitioner.title ^comment = "TKB-fält: `../../title` (`string`, kardinalitet 0..1)."
* availableDate.resource ^definition = "Resurs som är relaterad till de lediga tiderna"
* availableDate.resource ^comment = "TKB-fält: `availableDate.resource` (`ResourceType`, kardinalitet 0..1)."
* availableDate.resource.typeOfResource ^comment = "TKB-fält: `../../typeOfResource` (`CVType`, kardinalitet 0..1)."
* availableDate.resource.resourceAttribute ^comment = "TKB-fält: `../../resourceAttribute` (`CVType`, kardinalitet 0..1)."
* availableDate.resource.description ^comment = "TKB-fält: `../../description` (`string`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
