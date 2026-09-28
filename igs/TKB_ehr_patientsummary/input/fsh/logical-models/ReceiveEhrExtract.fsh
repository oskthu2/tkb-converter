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
* success 1..1 boolean "success" "success"
