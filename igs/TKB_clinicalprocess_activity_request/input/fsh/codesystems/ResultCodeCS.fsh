// Genererad från TKB clinicalprocess:activity:request v2.2
// Domängemensamt kodverk (ResultCodeEnum)
// Genererad: 2026-09-26

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "ResultCodeEnum"
Description: "Resultatkod för anropet (clinicalprocess_activity_request_2.2.xsd ResultCodeEnum)."
* ^url = "https://fhir.inera.se/CodeSystem/resultcode-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #OK "OK" "Begäran gick bra."
* #INFO "INFO" "Begäran gick bra, med information i message."
* #ERROR "ERROR" "Begäran misslyckades; se errorCode."
