// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RevokeExtendedBlock v2.0 (administration)
// Genererad: 2026-04-09

Logical: RevokeExtendedBlock
Id: revokeextendedblock
Title: "RevokeExtendedBlock"
Description: """
  Logisk modell för tjänstekontraktet RevokeExtendedBlock
  (RIV-TA urn:riv:ehr:blocking:administration:RevokeExtendedBlockResponder:2).
  Häver en spärr permanent i lokal spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av hävningen"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
