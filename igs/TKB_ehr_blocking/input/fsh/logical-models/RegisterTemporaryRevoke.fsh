// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RegisterTemporaryRevoke v2.0 (synchronization)
// Genererad: 2026-04-09

Logical: RegisterTemporaryRevoke
Id: registertemporaryrevoke
Title: "RegisterTemporaryRevoke"
Description: """
  Logisk modell för tjänstekontraktet RegisterTemporaryRevoke
  (RIV-TA urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2).
  Registrerar en tillfällig hävning av en spärr i nationell spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av registreringen"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
