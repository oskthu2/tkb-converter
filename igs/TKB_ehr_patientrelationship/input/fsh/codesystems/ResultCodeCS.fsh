// Genererad från TKB ehr:patientrelationship v1.0.1
// Kodverk: ResultCode (patientrelationship:ResultCode)
// Genererad: 2026-05-19

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "ResultCode"
Description: "Svarskoder för tjänstekontrakt i ehr:patientrelationship. Anger status för utförda operationer."
* ^url = "https://fhir.inera.se/CodeSystem/resultcode-cs"
* ^status = #active
* ^content = #complete
* #OK "OK" "Transaktionen har utförts enligt uppdraget."
* #INFO "INFO" "Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart)."
* #ERROR "ERROR" "Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp."
* #VALIDATION_ERROR "VALIDATION_ERROR" "En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej."
* #ACCESSDENIED "ACCESSDENIED" "Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej."
* #NOTFOUND "NOTFOUND" "Angiven artifakt finns ej. Angiven tjänst utfördes ej."
* #ALREADYEXISTS "ALREADYEXISTS" "Angiven artifakt finns redan. Angiven tjänst utfördes ej."
* #INVALIDSTATE "INVALIDSTATE" "Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd."
