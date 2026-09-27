// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: EndConsentByPatient v1.0
// Genererad: 2026-09-26

Logical: EndConsentByPatient
Id: endconsentbypatient
Title: "EndConsentByPatient — Response"
Description: """
  Logisk modell för svaret i EndConsentByPatient
  (urn:riv:informationsecurity:authorization:consent:EndConsentByPatientResponder:1, EndConsentByPatientResponseType).
"""
Characteristics: #can-be-target
* result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
  * resultCode 1..1 code "resultCode" "resultCode"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "resultText" "resultText"
