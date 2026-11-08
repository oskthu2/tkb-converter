// Elementen genereras ur ReceiveEhrExtractResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för ehr.patientsummary v1.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: ReceiveEhrExtract v1.0
// Genererad: 2026-09-26

Logical: ReceiveEhrExtract
Id: receiveehrextract
Title: "ReceiveEhrExtract — Response"
Description: """
  Logisk modell för svaret i ReceiveEhrExtract
  (urn:riv:ehr:patientsummary:ReceiveEhrExtractResponder:1, ReceiveEhrExtractResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* success 1..1 boolean "success" "success"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ReceiveEhrExtractFieldDescriptions
