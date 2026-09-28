// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CheckConsent v2.0
// Genererad: 2026-09-26

Logical: CheckConsent
Id: checkconsent
Title: "CheckConsent — Response"
Description: """
  Logisk modell för svaret i CheckConsent
  (urn:riv:informationsecurity:authorization:consent:CheckConsentResponder:2, CheckConsentResponseType).
"""
Characteristics: #can-be-target
* checkResult 1..1 BackboneElement "checkResult" "Datatyp som anger om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör. Datatypen utökar datatypen Result."
  * result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
    * resultCode 1..1 code "resultCode" "resultCode"
    * resultCode from ResultCodeVS (required)
    * resultText 0..1 string "resultText" "resultText"
  * hasConsent 1..1 boolean "hasConsent" "hasConsent"
  * assertionType 0..1 code "assertionType" "assertionType"
  * assertionType from AssertionTypeVS (required)
