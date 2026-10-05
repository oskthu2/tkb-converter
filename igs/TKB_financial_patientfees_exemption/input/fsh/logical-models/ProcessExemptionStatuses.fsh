// Genererad från XSD för financial.patientfees.exemption v1.0 (Genererad ur scheman i riv.financial.patientfees.exemption, commit fbd046e11e50; scripts/xsd_to_ig.py)
// Kontrakt: ProcessExemptionStatuses v1.0
// Genererad: 2026-09-26

Logical: ProcessExemptionStatuses
Id: processexemptionstatuses
Title: "ProcessExemptionStatuses — Response"
Description: """
  Logisk modell för svaret i ProcessExemptionStatuses
  (urn:riv:financial:patientfees:exemption:ProcessExemptionStatusesResponder:1, ProcessExemptionStatusesResponseType).
"""
Characteristics: #can-be-target
* ^version = "1.0"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
