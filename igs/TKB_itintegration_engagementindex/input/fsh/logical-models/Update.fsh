// Elementen genereras ur UpdateResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: Update v1.0
// Genererad: 2026-03-19

Logical: Update
Id: update
Title: "Update"
Description: """
  Logisk modell för tjänstekontraktet Update
  (RIV-TA urn:riv:itintegration:engagementindex:Update:1).
  Representerar responsens informationsstruktur — ett statusbesked
  som anger om uppdateringsoperationen lyckades eller misslyckades.

  Kontraktet används av källsystem för att skapa, uppdatera och radera
  indexposter i ett engagemangsindex.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdateFieldDescriptions
