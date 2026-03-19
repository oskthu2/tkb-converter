// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Källa: clinicalprocess_activityprescription_prescribe_2.0_enum.xsd
// Genererad: 2026-03-19

CodeSystem: ErrorCodeCS
Id: errorcode-cs
Title: "ErrorCode — Felkod"
Description: "Kodverk för felkod i svar (ResultType.errorCode). Används i samtliga kontrakt."
* ^url = "https://fhir.inera.se/CodeSystem/errorcode"
* ^status = #active
* ^content = #complete
* #VALIDATION_ERROR "VALIDATION_ERROR" "En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej."
* #ACCESS_DENIED "ACCESS_DENIED" "Åtkomst nekad."
* #NOT_FOUND "NOT_FOUND" "Efterfrågad resurs hittades inte."
* #ALREADY_EXISTS "ALREADY_EXISTS" "Resursen finns redan."
* #INVALID_STATE "INVALID_STATE" "Resursen är i ett ogiltigt tillstånd för begärd åtgärd."
* #MAXIMUM_REQUEST_REACHED "MAXIMUM_REQUEST_REACHED" "Varningsnivå uppnådd för maximalt antal anrop."
