// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: UnregisterTemporaryRevoke v2.0 (synchronization)
// Genererad: 2026-04-09

Logical: UnregisterTemporaryRevoke
Id: unregistertemporaryrevoke
Title: "UnregisterTemporaryRevoke"
Description: """
  Logisk modell för tjänstekontraktet UnregisterTemporaryRevoke
  (RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevokeResponder:2).
  Avregistrerar en tillfällig hävning från nationell spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av avregistreringen"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
