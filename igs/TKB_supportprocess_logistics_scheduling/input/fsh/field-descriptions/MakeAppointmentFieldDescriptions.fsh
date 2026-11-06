// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: MakeAppointmentFieldDescriptions
* appointmentId ^definition = "Unikt id för nya bokningen. Ska uttryckas som uuid (universally unique identifier)."
* appointmentId ^comment = "TKB-fält: `appointmentId` (`uuidType`, kardinalitet 0..1)."
* resultCode ^definition = "Status för den gjorda bokningen."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum (string)`, kardinalitet 1..1)."
* resultText ^definition = "Ev. meddelande kopplat till resultatkoden."
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
