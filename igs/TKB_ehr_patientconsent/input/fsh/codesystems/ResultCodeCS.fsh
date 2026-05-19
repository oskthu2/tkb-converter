// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Domänspecifikt kodverk: ResultCodeCS
// Genererad: 2026-04-22

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "ResultCode"
Description: "Svarskoder för samtycketjänstens operationer."
* ^url = "https://fhir.inera.se/CodeSystem/resultcode-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #OK "OK" "Transaktionen har utförts enligt uppdraget."
* #INFO "INFO" "Transaktionen har utförts men med meddelande till konsumenten."
* #ERROR "ERROR" "Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel."
* #VALIDATION_ERROR "VALIDATION_ERROR" "En eller flera inparametrar innehåller felaktiga värden."
* #ACCESSDENIED "ACCESSDENIED" "Behörighet saknas för att utföra begärd tjänst."
* #NOTFOUND "NOTFOUND" "Angiven artifakt finns ej."
* #ALREADYEXISTS "ALREADYEXISTS" "Angiven artifakt finns redan."
* #INVALIDSTATE "INVALIDSTATE" "Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd."
