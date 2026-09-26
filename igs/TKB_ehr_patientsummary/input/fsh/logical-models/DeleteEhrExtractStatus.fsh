// Genererad från XSD för ehr.patientsummary v1.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: DeleteEhrExtractStatus v1.0
// Genererad: 2026-09-26

Logical: DeleteEhrExtractStatus
Id: deleteehrextractstatus
Title: "DeleteEhrExtractStatus — Response"
Description: """
  Logisk modell för svaret i DeleteEhrExtractStatus
  (urn:riv:ehr:patientsummary:DeleteEhrExtractInitiator:1, DeleteEhrExtractStatusResponseType).
"""
Characteristics: #can-be-target
* success 1..1 boolean "success" "success"
