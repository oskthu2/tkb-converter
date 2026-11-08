// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: MakeAppointmentFieldDescriptions
* appointmentId ^definition = "Unikt id för nya bokningen. Ska uttryckas som uuid (universally unique identifier)."
* appointmentId ^comment = "TKB-fält: `appointmentId` (`uuidType`, kardinalitet 0..1)."
* resultCode ^definition = "Status för den gjorda bokningen."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum (string)`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultText ^definition = "Ev. meddelande kopplat till resultatkoden."
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
