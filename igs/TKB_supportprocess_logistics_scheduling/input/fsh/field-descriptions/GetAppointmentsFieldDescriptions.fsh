// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAppointmentsFieldDescriptions
* appointment ^definition = "Lista med tidbokningar per vårdenhet. Svaret innehåller en lista där endast den unika identifieraren för tidbokningen samt HSAId för vårdenheten returneras."
* appointment ^comment = "TKB-fält: `appointment` (`AppointmentPerHealthcareFacilityType`, kardinalitet 0..*)."
* appointment.appointmentId ^definition = "Unikt id för bokningen. Ska uttryckas som uuid (universally unique identifier)."
* appointment.appointmentId ^comment = "TKB-fält: `appointment.appointmentId` (`uuidType`, kardinalitet 1..1)."
* appointment.healthcareFacilityId ^comment = "TKB-fält: `../healthcareFacilityId` (`HSAIdType`, kardinalitet 1..1)."
* appointment.healthcareFacilityId.root ^comment = "TKB-fält: `../../root` (`string`, kardinalitet 1..1)."
* appointment.healthcareFacilityId.hSAIdExtension ^comment = "TKB-fält: `../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** hSAIdExtension Heter extension i schemat."
