// Genererad från XSD för infrastructure.informationstructureservice.terminology v1.0.0 (scripts/xsd_to_ig.py --codesystems)
// Genererad: 2026-09-26

CodeSystem: ResultCodeCS
Id: terminology-resultcode-cs
Title: "Resultatkod"
Description: "Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 7 (fältregler)."
* ^url = "https://fhir.inera.se/CodeSystem/terminology-resultcode-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #OK "OK" "Anropet lyckades utan avvikelser."
* #ERROR "ERROR" "Fel vid hämtningen; felet beskrivs i elementet comment."
* #INFO "INFO" "Information finns; informationen beskrivs i elementet comment."
