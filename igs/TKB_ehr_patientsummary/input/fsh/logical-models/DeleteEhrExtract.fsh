// Elementen genereras ur DeleteEhrExtractResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för ehr.patientsummary v1.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: DeleteEhrExtract v1.0
// Genererad: 2026-09-26

Logical: DeleteEhrExtract
Id: deleteehrextract
Title: "DeleteEhrExtract — Response"
Description: """
  Logisk modell för svaret i DeleteEhrExtract
  (urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1, DeleteEhrExtractResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* success 1..1 boolean "success" "success"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteEhrExtractFieldDescriptions
