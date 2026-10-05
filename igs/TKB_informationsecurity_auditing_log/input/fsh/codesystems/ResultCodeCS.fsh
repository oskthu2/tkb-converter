// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (scripts/xsd_to_ig.py --codesystems)
// Genererad: 2026-09-26

CodeSystem: ResultCodeCS
Id: auditing-log-resultcode-cs
Title: "ResultCode"
Description: "Koder för ResultCodeType i domänschemat."
* ^version = "2.0.8"
* ^url = "https://fhir.inera.se/CodeSystem/auditing-log-resultcode-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #OK "OK"
* #INFO "INFO"
* #ERROR "ERROR"
* #VALIDATION_ERROR "VALIDATION_ERROR"
* #ACCESSDENIED "ACCESSDENIED"
* #REPORT_ON_QUEUE "REPORT_ON_QUEUE"
* #REPORT_IN_PROCESS "REPORT_IN_PROCESS"
* #REPORT_NOT_FOUND "REPORT_NOT_FOUND"
* #MAX_QUERY_RESULT_EXCEEDED "MAX_QUERY_RESULT_EXCEEDED"
