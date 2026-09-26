// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetHealthcareFacility v2.0
// Genererad: 2026-09-26

Logical: GetHealthcareFacilityRequest
Id: gethealthcarefacility-request
Title: "GetHealthcareFacility — Request"
Description: """
  Logisk modell för begäran i GetHealthcareFacility
  (urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilityResponder:2, GetHealthcareFacilityType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Verksamhetens HSAID på enhetsnivå"
