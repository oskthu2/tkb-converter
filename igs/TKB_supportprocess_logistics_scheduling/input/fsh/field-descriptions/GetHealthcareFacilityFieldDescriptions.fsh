// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHealthcareFacilityFieldDescriptions
* healthcareFacility ^definition = "Detaljer om vårdenheten."
* healthcareFacility ^comment = "TKB-fält: `healthcareFacility` (`OrgUnitType`, kardinalitet 1..1)."
* healthcareFacility.HSAId ^comment = "TKB-fält: `../HSAId` (`HSAIdType`, kardinalitet 1..1)."
* healthcareFacility.name ^comment = "TKB-fält: `../name` (`string`, kardinalitet 0..1)."
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
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
