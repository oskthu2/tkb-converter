// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Källa: GenderEnum.xsd (generated_xsd_nod)
// Genererad: 2026-03-19
// ASSUME-PRESC-004: GenderEnum använder engelska koder (Male/Female/Unspecified).
// Överväg att mappa till FHIR AdministrativeGender istället.

CodeSystem: GenderCS
Id: gender-cs
Title: "Gender — Kön"
Description: "Kodverk för patientens kön. Används i PatientInformation-typen i GetMedicationDispenseAuthorizations och RegisterMedicationDispenseAuthorization."
* ^url = "https://fhir.inera.se/CodeSystem/gender"
* ^status = #active
* ^content = #complete
* #Male "Male" "Man."
* #Female "Female" "Kvinna."
* #Unspecified "Unspecified" "Ej angivet."
