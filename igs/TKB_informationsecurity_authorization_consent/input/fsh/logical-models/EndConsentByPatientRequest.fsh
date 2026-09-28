// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: EndConsentByPatient v1.0
// Genererad: 2026-09-26

Logical: EndConsentByPatientRequest
Id: endconsentbypatient-request
Title: "EndConsentByPatient — Request"
Description: """
  Logisk modell för begäran i EndConsentByPatient
  (urn:riv:informationsecurity:authorization:consent:EndConsentByPatientResponder:1, EndConsentByPatientType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för vårdgivaren som samtycket gäller för."
* assertionId 1..1 string "assertionId" "assertionId"
* patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* representedById 0..1 BackboneElement "representedById" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* endDateTime 0..1 dateTime "endDateTime" "endDateTime"
