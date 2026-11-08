// Elementen genereras ur HamtaBarnResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaBarn v1.0
// Genererad: 2026-09-26

Logical: HamtaBarn
Id: hamtabarn
Title: "HamtaBarn — Response"
Description: """
  Logisk modell för svaret i HamtaBarn
  (urn:riv:se.apotekensservice:pris:HamtaBarnResponder:1, HamtaBarnResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* barn 1..* string "En lista med personnr för barnen." "En lista med personnr för barnen."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaBarnFieldDescriptions
