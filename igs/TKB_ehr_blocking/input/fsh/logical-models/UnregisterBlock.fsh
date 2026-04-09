// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: UnregisterBlock v2.0 (synchronization)
// Genererad: 2026-04-09

Logical: UnregisterBlock
Id: unregisterblock
Title: "UnregisterBlock"
Description: """
  Logisk modell för tjänstekontraktet UnregisterBlock
  (RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterBlockResponder:2).
  Avregistrerar en spärr från nationell spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av avregistreringen"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
