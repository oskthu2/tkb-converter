// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RegisterExtendedBlock v2.0 (administration)
// Genererad: 2026-04-09

Logical: RegisterExtendedBlock
Id: registerextendedblock
Title: "RegisterExtendedBlock"
Description: """
  Logisk modell för tjänstekontraktet RegisterExtendedBlock
  (RIV-TA urn:riv:ehr:blocking:administration:RegisterExtendedBlockResponder:2).
  Registrerar en spärr med utökad information (aktörsdata, tidsstämplar m.m.) i lokal spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av registreringen"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
