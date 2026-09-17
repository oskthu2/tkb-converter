// Genererad från TKB processdevelopment:infections v1.0.2
// Delat kodverk: ResultCode (används i samtliga 11 tjänstekontrakts svar)
// Genererad: 2026-09-17

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "ResultCode"
Description: "Resultatkod för registrerings-/raderingsoperationer i Infektionsverktyget. Anger utfallet av anropet."
* ^url = "https://fhir.inera.se/CodeSystem/resultcode-cs"
* ^status = #active
* ^content = #complete
* #OK "OK" "Registrering/radering genomförd."
* #ERROR "ERROR" "Fel vid registrering/radering. Felet beskrivs i elementet comment."
* #INFO "INFO" "Information finns om registreringen/raderingen. Informationen beskrivs i elementet comment."
