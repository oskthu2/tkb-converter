// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: GetDispensedDrugsConsent v2.0
// Genererad: 2026-03-19

Logical: GetDispensedDrugsConsent
Id: getdispenseddrugsConsent
Title: "GetDispensedDrugsConsent"
Description: """
  Logisk modell för tjänstekontraktet GetDispensedDrugsConsent
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugsConsent:2).
  Representerar responsens informationsstruktur — hämtar samtycke för åtkomst till uthämtade läkemedel.
"""
Characteristics: #can-be-target

* hasConsent 1..1 boolean "Sant om patienten har aktivt samtycke"
* consentType 0..1 code "Typ av samtycke (om hasConsent=true)"
* consentType from LFConsentVS (required)
* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
