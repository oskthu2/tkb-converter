// Genererad från TKB ehr:blocking v3.2.2
// Kodverk: TemporaryRevokeReason (urn:riv:ehr:blocking:2)
// Genererad: 2026-04-09

CodeSystem: TemporaryRevokeReasonCS
Id: temporaryrevokereason-cs
Title: "TemporaryRevokeReason"
Description: "Orsak till tillfällig hävning av spärr enligt urn:riv:ehr:blocking:2."
* ^url = "https://fhir.inera.se/CodeSystem/temporaryrevokereason-cs"
* ^status = #active
* ^content = #complete
* #PatientsConsent "Patientens samtycke" "Patienten har givit sitt samtycke till en tillfällig hävning."
* #Emergency "Nödsituation" "Nödsituation föreligger. Patientens samtycke för en tillfällig hävning kunde ej inhämtas."
