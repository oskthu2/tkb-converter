// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RegisterTemporaryExtendedRevoke v2.0 (administration)
// Genererad: 2026-04-09

Logical: RegisterTemporaryExtendedRevoke
Id: registertemporaryextendedrevoke
Title: "RegisterTemporaryExtendedRevoke"
Description: """
  Logisk modell för tjänstekontraktet RegisterTemporaryExtendedRevoke
  (RIV-TA urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevokeResponder:2).
  Registrerar en tillfällig hävning med utökad information i lokal spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av registreringen"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
