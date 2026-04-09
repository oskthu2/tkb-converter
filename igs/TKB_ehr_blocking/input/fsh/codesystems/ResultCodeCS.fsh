// Genererad från TKB ehr:blocking v3.2.2
// Kodverk: ResultCode (urn:riv:ehr:blocking:2)
// Genererad: 2026-04-09

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "ResultCode"
Description: "Svarskoder för spärrtjänsternas operationer enligt urn:riv:ehr:blocking:2. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* ^url = "https://fhir.inera.se/CodeSystem/resultcode-cs"
* ^status = #active
* ^content = #complete
* #OK "OK" "Transaktionen har utförts enligt uppdraget."
* #INFO "Info" "Transaktionen har utförts, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart)."
* #ERROR "Fel" "Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp."
* #VALIDATIONERROR "Valideringsfel" "En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej."
* #ACCESSDENIED "Åtkomst nekad" "Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej."
* #NOTFOUND "Hittades inte" "Angiven artifakt finns ej. Angiven tjänst utfördes ej."
* #ALREADYEXISTS "Finns redan" "Angiven artifakt finns redan. Angiven tjänst utfördes ej."
* #INVALIDSTATE "Ogiltigt tillstånd" "Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd."
