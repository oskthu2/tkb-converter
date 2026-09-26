// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (scripts/xsd_to_ig.py --codesystems)
// Genererad: 2026-09-26

CodeSystem: AppointmentStatusCS
Id: scheduling-appointmentstatus-cs
Title: "Bokningens tillstånd (AppointmentStatus)"
Description: "Koder för AppointmentStatusEnum i domänschemat. Visningstexter ur TKB avsnitt 6.3.4 (GetAppointment, appointment.status)."
* ^url = "https://fhir.inera.se/CodeSystem/scheduling-appointmentstatus-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #confirmed "Bekräftad" "Bokningen är bekräftad av patienten (TKB skriver confirm)"
* #preliminary "Preliminär" "Bokningen är ännu inte bekräftad av patienten"
