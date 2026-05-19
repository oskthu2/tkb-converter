// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RegisterBlock v2.0 (synchronization)
// Genererad: 2026-04-09

Logical: RegisterBlock
Id: registerblock
Title: "RegisterBlock"
Description: """
  Logisk modell för tjänstekontraktet RegisterBlock
  (RIV-TA urn:riv:ehr:blocking:synchronization:RegisterBlockResponder:2).
  Registrerar en grundläggande spärr i nationell spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av registreringen"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
