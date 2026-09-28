// Genererad från XSD för healthcertificate.lifeline v1.0 (scripts/xsd_to_ig.py --codesystems)
// Genererad: 2026-09-26

CodeSystem: ResultCodeEnumCS
Id: lifeline-resultcodeenum-cs
Title: "Resultatkod"
Description: "Koder för ResultCodeEnumType i domänschemat. Visningstexter ur TKB avsnitt 2.2."
* ^url = "https://fhir.inera.se/CodeSystem/lifeline-resultcodeenum-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #OK "OK" "Transaktionen har utförts enligt uppdraget."
* #ERROR "ERROR" "Transaktionen har inte kunnat utföras på grund av logiskt fel. Det finns ett meddelande som konsumenten måste visa upp."
* #INFO "INFO" "Transaktionen har utförts enligt uppdraget, men det finns ett meddelande som tjänstekonsumenten måste visa upp för invånaren."
