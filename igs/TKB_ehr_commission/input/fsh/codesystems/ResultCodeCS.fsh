// Genererad från TKB ehr:commission v1.0 RC1
// Kodverk: ResultCode (commissionservice:ResultCode)
// Genererad: 2026-04-09

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "ResultCode"
Description: """
  Enumerationsvärden för svarskoder som används i ehr:commission-tjänsterna.
  Kodverket definierar möjliga utfall av ett tjänsteanrop (ResultType.ResultCode).
  Källa: TKB ehr:commission v1.0, avsnitt Datatyper — commissionservice:ResultCode.
  XSD: urn:riv:ehr:commission:1, typ ResultCodeType.
"""
* ^url = "https://fhir.inera.se/CodeSystem/resultcode-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #OK "OK" "Transaktionen har utförts enligt uppdraget."
* #INFO "INFO" "Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel: uppdrag ej valt."
* #ERROR "ERROR" "Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel: personen finns inte i HSA."
* #VALIDATION_ERROR "VALIDATION_ERROR" "En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej."
* #ACCESSDENIED "ACCESSDENIED" "Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej."
