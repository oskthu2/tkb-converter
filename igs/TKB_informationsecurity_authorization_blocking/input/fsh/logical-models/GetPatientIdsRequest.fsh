// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetPatientIds v4.0
// Genererad: 2026-09-26

Logical: GetPatientIdsRequest
Id: getpatientids-request
Title: "GetPatientIds — Request"
Description: """
  Logisk modell för begäran i GetPatientIds
  (urn:riv:informationsecurity:authorization:blocking:GetPatientIdsResponder:4, GetPatientIdsType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "4.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för tjänstekonsumentens vårdgivare."
* careProviderId 1..1 string "careProviderId" "careProviderId"
