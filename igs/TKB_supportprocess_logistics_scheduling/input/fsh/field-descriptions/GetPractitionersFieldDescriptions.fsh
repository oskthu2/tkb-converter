// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPractitionersFieldDescriptions
* practitioner ^definition = "Information om bokningsbar vårdpersonal."
* practitioner ^comment = "TKB-fält: `practitioner` (`PractitionerType`, kardinalitet 0..*)."
* practitioner.HSAId ^definition = "Bokningsbar vårdpersonals HsaId"
* practitioner.HSAId ^comment = "TKB-fält: `practitioner.HSAId` (`HSAIdType`)."
* practitioner.firstName ^definition = "Vårdpersonals förnamn."
* practitioner.firstName ^comment = "TKB-fält: `practitioner.firstName` (`string`, kardinalitet 1..1)."
* practitioner.lastName ^definition = "Vårdpersonals efternamn."
* practitioner.lastName ^comment = "TKB-fält: `practitioner.lastName` (`string`, kardinalitet 1..1)."
* practitioner.title ^definition = "Vårdpersonals titel."
* practitioner.title ^comment = "TKB-fält: `practitioner.title` (`string`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
