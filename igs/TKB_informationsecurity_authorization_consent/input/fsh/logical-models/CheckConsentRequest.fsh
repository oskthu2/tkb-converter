// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CheckConsent v2.0
// Genererad: 2026-09-26

Logical: CheckConsentRequest
Id: checkconsent-request
Title: "CheckConsent — Request"
Description: """
  Logisk modell för begäran i CheckConsent
  (urn:riv:informationsecurity:authorization:consent:CheckConsentResponder:2, CheckConsentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för aktörens vårdgivare."
* accessingActor 1..1 BackboneElement "accessingActor" "Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information."
  * employeeId 1..1 string "employeeId" "employeeId"
  * careProviderId 1..1 string "careProviderId" "careProviderId"
  * careUnitId 1..1 string "careUnitId" "careUnitId"
* patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
