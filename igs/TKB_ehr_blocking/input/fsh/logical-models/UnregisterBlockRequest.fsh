// Elementen genereras ur UnregisterBlockResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: UnregisterBlock v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: UnregisterBlockRequest
Id: unregisterblock-request
Title: "UnregisterBlock — Request"
Description: "Logisk modell för requestparametrar i UnregisterBlock."
Characteristics: #can-be-target

* ^version = "2.0"
* blockId 1..1 string "Unik identifierare (UUID) för den spärr som skall avregistreras."

* insert UnregisterBlockRequestFieldDescriptions
