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
* success 1..1 boolean "success" "success"
