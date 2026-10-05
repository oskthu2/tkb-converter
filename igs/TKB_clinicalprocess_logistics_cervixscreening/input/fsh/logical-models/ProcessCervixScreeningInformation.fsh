// Genererad från XSD för clinicalprocess.logistics.cervixscreening v1.0_RC4 (Genererad ur scheman i riv.clinicalprocess.logistics.cervixscreening, tagg 1.0_RC4; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: ProcessCervixScreeningInformation v1.0
// Genererad: 2026-09-26

Logical: ProcessCervixScreeningInformation
Id: processcervixscreeninginformation
Title: "ProcessCervixScreeningInformation — Response"
Description: """
  Logisk modell för svaret i ProcessCervixScreeningInformation
  (urn:riv:clinicalprocess:logistics:cervixscreening:ProcessCervixScreeningInformationResponder:1, ProcessCervixScreeningInformationResponseType).
"""
Characteristics: #can-be-target
* ^version = "1.0"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
