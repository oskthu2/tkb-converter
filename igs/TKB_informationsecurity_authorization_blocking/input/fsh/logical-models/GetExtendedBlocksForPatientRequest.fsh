// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetExtendedBlocksForPatient v4.0
// Genererad: 2026-09-26

Logical: GetExtendedBlocksForPatientRequest
Id: getextendedblocksforpatient-request
Title: "GetExtendedBlocksForPatient — Request"
Description: """
  Logisk modell för begäran i GetExtendedBlocksForPatient
  (urn:riv:informationsecurity:authorization:blocking:GetExtendedBlocksForPatientResponder:4, GetExtendedBlocksForPatientType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "4.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för tjänstekonsumentens vårdgivare."
* careProviderId 1..1 string "careProviderId" "careProviderId"
* patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
