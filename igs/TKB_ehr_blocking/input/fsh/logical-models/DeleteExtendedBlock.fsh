// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: DeleteExtendedBlock v2.0 (administration)
// Genererad: 2026-04-09

Logical: DeleteExtendedBlock
Id: deleteextendedblock
Title: "DeleteExtendedBlock"
Description: """
  Logisk modell för tjänstekontraktet DeleteExtendedBlock
  (RIV-TA urn:riv:ehr:blocking:administration:DeleteExtendedBlockResponder:2).
  Makulerar (tar bort) en spärr i lokal spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av makuleringen"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
