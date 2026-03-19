// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Källa: clinicalprocess_activityprescription_prescribe_2.0_enum.xsd
// Genererad: 2026-03-19

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "ResultCode — Svarskod"
Description: "Kodverk för resultatkod i svar (ResultType). Används i samtliga kontrakt."
* ^url = "https://fhir.inera.se/CodeSystem/resultcode"
* ^status = #active
* ^content = #complete
* #OK "OK" "Begäran utförd utan fel."
* #INFO "INFO" "Begäran utförd, informationsmeddelande returneras."
* #ERROR "ERROR" "Begäran misslyckades, felkod i errorCode."
