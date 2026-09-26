// Genererad från XSD för ehr.patientsummary v1.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: ReceiveEhrExtractStatus v1.0
// Genererad: 2026-09-26

Logical: ReceiveEhrExtractStatus
Id: receiveehrextractstatus
Title: "ReceiveEhrExtractStatus — Response"
Description: """
  Logisk modell för svaret i ReceiveEhrExtractStatus
  (urn:riv:ehr:patientsummary:ReceiveEhrExtractInitiator:1, ReceiveEhrExtractStatusResponseType).
"""
Characteristics: #can-be-target
* success 1..1 boolean "success" "success"
