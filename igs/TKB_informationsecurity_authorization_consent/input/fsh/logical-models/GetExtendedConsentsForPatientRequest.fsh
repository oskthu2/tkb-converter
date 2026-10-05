// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetExtendedConsentsForPatient v2.0
// Genererad: 2026-09-26

Logical: GetExtendedConsentsForPatientRequest
Id: getextendedconsentsforpatient-request
Title: "GetExtendedConsentsForPatient — Request"
Description: """
  Logisk modell för begäran i GetExtendedConsentsForPatient
  (urn:riv:informationsecurity:authorization:consent:GetExtendedConsentsForPatientResponder:2, GetExtendedConsentsForPatientType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "2.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för aktörens vårdgivare."
* careProviderId 1..1 string "careProviderId" "careProviderId"
* patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* getCancelledFlag 1..1 boolean "getCancelledFlag" "getCancelledFlag"
