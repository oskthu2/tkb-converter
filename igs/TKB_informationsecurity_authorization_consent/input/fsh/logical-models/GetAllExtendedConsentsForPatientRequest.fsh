// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetAllExtendedConsentsForPatient v1.0
// Genererad: 2026-09-26

Logical: GetAllExtendedConsentsForPatientRequest
Id: getallextendedconsentsforpatient-request
Title: "GetAllExtendedConsentsForPatient — Request"
Description: """
  Logisk modell för begäran i GetAllExtendedConsentsForPatient
  (urn:riv:informationsecurity:authorization:consent:GetAllExtendedConsentsForPatientResponder:1, GetAllExtendedConsentsForPatientType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "1.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för aktörens vårdgivare."
* patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* getCancelledFlag 1..1 boolean "getCancelledFlag" "getCancelledFlag"
