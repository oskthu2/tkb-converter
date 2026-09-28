// Genererad från XSD för infrastructure.itintegration.messagebox v1.0.0 (scripts/xsd_to_ig.py --codesystems)
// Genererad: 2026-09-26

CodeSystem: ResultCodeCS
Id: messagebox-resultcode-cs
Title: "Resultatkod"
Description: "Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 4.2."
* ^url = "https://fhir.inera.se/CodeSystem/messagebox-resultcode-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #OK "OK" "Anropet lyckades."
* #ERROR "ERROR" "Anropet misslyckades; typen av fel anges i errorId."
* #INFO "INFO" "Anropet ansågs lyckat, men det finns mer information om under vilka omständigheter."
