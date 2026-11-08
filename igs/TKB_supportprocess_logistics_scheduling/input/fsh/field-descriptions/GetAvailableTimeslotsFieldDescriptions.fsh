// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableTimeslotsFieldDescriptions
* timeslot ^definition = "List med lediga tider"
* timeslot ^comment = "TKB-fält: `timeslot` (`TimeslotType`, kardinalitet 0..*)."
* timeslot.timeslotId ^definition = "Unikt id för tidsluckan. Ska uttryckas som uuid (universally unique identifier)."
* timeslot.timeslotId ^comment = "TKB-fält: `timeslot.timeslotId` (`uuidType`, kardinalitet 1..1)."
* timeslot.timeType ^definition = "Typ av tid som uttrycker var bokningen/besöket avser. Se datatypen TimeTypeType för vidare information."
* timeslot.timeType ^comment = "TKB-fält: `timeslot.timeType` (`TimeTypeType`, kardinalitet 1..1)."
* timeslot.timeType.code ^comment = "TKB-fält: `../../code` (`string`, kardinalitet 1..1)."
* timeslot.timeType.hidden ^comment = "TKB-fält: `../../hidden` (`boolean`, kardinalitet 0..1)."
* timeslot.timeType.careContactCode ^comment = "TKB-fält: `../../careContactCode` (`CVType`, kardinalitet 0..1)."
* timeslot.timeType.healthcareService ^comment = "TKB-fält: `../../healthcareService` (`HealthcareServiceType`, kardinalitet 0..*)."
* timeslot.timeType.healthcareService.code ^comment = "TKB-fält: `../../../code` (`SnomedCtType`, kardinalitet 1..1)."
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
* timeslot.timeType.appointmentRule.type ^comment = "TKB-fält: `../../../type` (`ProcessEnum`, kardinalitet 1..1).

**Modellanteckning:** type Tillåtna värden: NYBOKNING, AVBOKNING, OMBOKNING."
* timeslot.timeType.appointmentRule.reasonTextRequired ^comment = "TKB-fält: `../../../reasonTextRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).

**Modellanteckning:** reasonTextRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* timeslot.timeType.appointmentRule.reasonCodeRequired ^comment = "TKB-fält: `../../../reasonCodeRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).

**Modellanteckning:** reasonCodeRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* timeslot.timeType.appointmentRule.reasonCodes ^comment = "TKB-fält: `../../../reasonCodes` (`CVType`, kardinalitet 0..*)."
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
* timeslot.practitioner ^definition = "HoS-person som besöket är bokat hos. Se datatypen PractitionerType för vidare information."
* timeslot.practitioner ^comment = "TKB-fält: `timeslot.practitioner` (`PractitionerType`, kardinalitet 0..*)."
* timeslot.practitioner.HSAId ^comment = "TKB-fält: `../../HSAId` (`HSAIdType`, kardinalitet 1..1)."
* timeslot.practitioner.firstName ^comment = "TKB-fält: `../../firstName` (`string`, kardinalitet 1..1)."
* timeslot.practitioner.lastName ^comment = "TKB-fält: `../../lastName` (`string`, kardinalitet 1..1)."
* timeslot.practitioner.title ^comment = "TKB-fält: `../../title` (`string`, kardinalitet 0..1)."
* timeslot.resource ^definition = "En resurs är något som kan tas i anspråk för eller krävs för genomförande av aktiviteter eller processer inom vård och omsorg och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter inom hälso- och sjukvård och pengar som betalas ut till brukaren inom socialtjänst.

Se datatypen ResourceType för vidare information."
* timeslot.resource ^comment = "TKB-fält: `timeslot.resource` (`ResourceType`, kardinalitet 0..1).

Obs: modellen anger 0..* där TKB:n anger 0..1."
* timeslot.resource.typeOfResource ^comment = "TKB-fält: `../../typeOfResource` (`CVType`, kardinalitet 0..1)."
* timeslot.resource.resourceAttribute ^comment = "TKB-fält: `../../resourceAttribute` (`CVType`, kardinalitet 0..1)."
* timeslot.resource.description ^comment = "TKB-fält: `../../description` (`string`, kardinalitet 0..1)."
* timeslot.withinCareGuarantee ^definition = "Flagga som visar huruvida denna tidslucka ligger inom Vårdgarantin. Flaggan är intressant att förmedla i samband med exempelvis ett nybokningsflöde, då invånaren söker efter lediga tider. Flaggan relaterar således till den tidpunkt då invånaren begärde att söka efter lediga tider. Om attributet utesluts kan en konsument inte dra slutsatser huruvida den erbjudna lediga tiden ligger inom eller utom vårdgarantin."
* timeslot.withinCareGuarantee ^comment = "TKB-fält: `timeslot.withinCareGuarantee` (`boolean`, kardinalitet 0..1)."
* timeslot.alternativeLocation ^comment = "TKB-fält: `../alternativeLocation` (`string`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
