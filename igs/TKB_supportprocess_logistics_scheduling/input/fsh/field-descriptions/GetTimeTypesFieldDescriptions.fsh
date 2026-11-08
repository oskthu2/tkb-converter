// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetTimeTypesFieldDescriptions
* timeType ^definition = "Lista med tidstyper."
* timeType ^comment = "TKB-fält: `timeType` (`TimeTypeType`, kardinalitet 0..*)."
* timeType.code ^definition = "Kod för tidstypen"
* timeType.code ^comment = "TKB-fält: `timeType.code` (`string`, kardinalitet 1..1)."
* timeType.hidden ^definition = "Visar huruvida tidstypen är märkt som skyddad av verksamheten – hidden=TRUE.

En skyddad tidstyp ska inte vara valbar för invånare från en lista med tidstyper som vårdcentralen erbjuder, t ex vid ett nybokningsflöde. Skyddade tidstyper ska bara kunna bokas av invånare om verksamheten tilldelat tidstypen till invånaren, t ex genom en digital kallelse eller om invånare blivit triagerad i ett försteg och resultatet därifrån resulterat i tidstypen.

Om attributet utelämnas ska tidstypen anses vara ”ej skyddad”."
* timeType.hidden ^comment = "TKB-fält: `timeType.hidden` (`boolean`, kardinalitet 0..1)."
* timeType.careContactCode ^definition = "Anger vilken typ av vårdkontakt som bokningen avser. Se Kv kontakttyp för vidare information (https://inera.atlassian.net/wiki/download/attachments/2648506471/kv_kontakttyp.xlsx?api=v2)."
* timeType.careContactCode ^comment = "TKB-fält: `timeType.careContactCode` (`CVType`, kardinalitet 0..1)."
* timeType.healthcareService ^definition = "Anger vilken typ av vårdtjänst"
* timeType.healthcareService ^comment = "TKB-fält: `timeType.healthcareService` (`boolean`, kardinalitet 0..*)."
* timeType.healthcareService.code ^comment = "TKB-fält: `../../code` (`SnomedCtType`, kardinalitet 1..1)."
* timeType.healthcareService.information ^comment = "TKB-fält: `../../information` (`InformationType`, kardinalitet 0..*)."
* timeType.healthcareService.information.header ^comment = "TKB-fält: `../../../header` (`string`, kardinalitet 1..1)."
* timeType.healthcareService.information.description ^comment = "TKB-fält: `../../../description` (`string`, kardinalitet 0..1)."
* timeType.healthcareService.information.link ^comment = "TKB-fält: `../../../link` (`anyURI`, kardinalitet 0..1)."
* timeType.healthcareService.conditionsToConfirm ^comment = "TKB-fält: `../../conditionsToConfirm` (`InformationType`, kardinalitet 0..*)."
* timeType.healthcareService.conditionsToConfirm.header ^comment = "TKB-fält: `../../../header` (`string`, kardinalitet 1..1)."
* timeType.healthcareService.conditionsToConfirm.description ^comment = "TKB-fält: `../../../description` (`string`, kardinalitet 0..1)."
* timeType.healthcareService.conditionsToConfirm.link ^comment = "TKB-fält: `../../../link` (`anyURI`, kardinalitet 0..1)."
* timeType.healthcareTeam ^definition = "Anger huruvida patienten möter ett team av personal vid besöket. Om attributet utelämnas anses besöket ej vara av typen teambokning."
* timeType.healthcareTeam ^comment = "TKB-fält: `timeType.healthcareTeam` (`boolean`, kardinalitet 0..1)."
* timeType.patientGroup ^definition = "Bokning av tid där flera personer/patienter i grupp möter vården för samma typ av vårdtjänst. Om attributet utelämnas anses besöket ej vara av typen gruppbokning."
* timeType.patientGroup ^comment = "TKB-fält: `timeType.patientGroup` (`boolean`, kardinalitet 0..1)."
* timeType.cancelAppointmentAllowed ^definition = "Anger huruvida invånaren tillåts att avboka bokningen via e-tjänst"
* timeType.cancelAppointmentAllowed ^comment = "TKB-fält: `timeType.cancelAppointmentAllowed` (`boolean`)."
* timeType.updateAppointmentAllowed ^definition = "Anger huruvida invånaren tillåts att omboka bokningen via e-tjänst"
* timeType.updateAppointmentAllowed ^comment = "TKB-fält: `timeType.updateAppointmentAllowed` (`boolean`)."
* timeType.appointmentRule ^comment = "TKB-fält: `../appointmentRule` (`TimeTypeRulesType`, kardinalitet 0..3)."
* timeType.appointmentRule.type ^comment = "TKB-fält: `../../type` (`ProcessEnum`, kardinalitet 1..1).

**Modellanteckning:** type Tillåtna värden: NYBOKNING, AVBOKNING, OMBOKNING."
* timeType.appointmentRule.reasonTextRequired ^comment = "TKB-fält: `../../reasonTextRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).

**Modellanteckning:** reasonTextRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* timeType.appointmentRule.reasonCodeRequired ^comment = "TKB-fält: `../../reasonCodeRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).

**Modellanteckning:** reasonCodeRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* timeType.appointmentRule.reasonCodes ^comment = "TKB-fält: `../../reasonCodes` (`CVType`, kardinalitet 0..*)."
* timeType.appointmentRule.information ^comment = "TKB-fält: `../../information` (`InformationType`, kardinalitet 0..*)."
* timeType.appointmentRule.information.header ^comment = "TKB-fält: `../../../header` (`string`, kardinalitet 1..1)."
* timeType.appointmentRule.information.description ^comment = "TKB-fält: `../../../description` (`string`, kardinalitet 0..1)."
* timeType.appointmentRule.information.link ^comment = "TKB-fält: `../../../link` (`anyURI`, kardinalitet 0..1)."
* timeType.appointmentRule.conditionToConfirm ^comment = "TKB-fält: `../../conditionToConfirm` (`InformationType`, kardinalitet 0..*)."
* timeType.appointmentRule.conditionToConfirm.header ^comment = "TKB-fält: `../../../header` (`string`, kardinalitet 1..1)."
* timeType.appointmentRule.conditionToConfirm.description ^comment = "TKB-fält: `../../../description` (`string`, kardinalitet 0..1)."
* timeType.appointmentRule.conditionToConfirm.link ^comment = "TKB-fält: `../../../link` (`anyURI`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
