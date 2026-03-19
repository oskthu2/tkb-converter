// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Källa: clinicalprocess_activityprescription_prescribe_2.0_enum.xsd
// Genererad: 2026-03-19

CodeSystem: DispenseAuthorizationStatusCS
Id: dispenseauthorizationstatus-cs
Title: "DispenseAuthorizationStatus — Status på expedieringsunderlag"
Description: "Kodverk för filterval av expedieringsunderlag baserat på kopplat/okopplat status. Används i GetMedicationDispenseAuthorizations."
* ^url = "https://fhir.inera.se/CodeSystem/dispenseauthorizationstatus"
* ^status = #active
* ^content = #complete
* #ATTACHED "ATTACHED" "Be om endast kopplade (ATTACHED) expedieringsunderlag."
* #NOT_ATTACHED "NOT_ATTACHED" "Be om endast okopplade (NOT_ATTACHED) expedieringsunderlag."
* #ALL "ALL" "Be om både kopplade och okopplade."
