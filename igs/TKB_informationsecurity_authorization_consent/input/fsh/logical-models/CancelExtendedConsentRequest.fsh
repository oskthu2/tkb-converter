// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CancelExtendedConsent v2.0
// Genererad: 2026-09-26

Logical: CancelExtendedConsentRequest
Id: cancelextendedconsent-request
Title: "CancelExtendedConsent — Request"
Description: """
  Logisk modell för begäran i CancelExtendedConsent
  (urn:riv:informationsecurity:authorization:consent:CancelExtendedConsentResponder:2, CancelExtendedConsentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för vårdgivaren som samtycket gäller för."
* assertionId 1..1 string "assertionId" "assertionId"
* cancellationAction 1..1 BackboneElement "cancellationAction" "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext."
  * requestDate 1..1 dateTime "requestDate" "requestDate"
  * requestedBy 1..1 BackboneElement "requestedBy" "Datatyp som identifierar en medarbetare/person."
    * employeeId 1..1 string "employeeId" "employeeId"
    * assignmentId 0..1 string "assignmentId" "assignmentId"
    * assignmentName 0..1 string "assignmentName" "assignmentName"
  * registrationDate 1..1 dateTime "registrationDate" "registrationDate"
  * registeredBy 1..1 BackboneElement "registeredBy" "Datatyp som identifierar en medarbetare/person."
    * employeeId 1..1 string "employeeId" "employeeId"
    * assignmentId 0..1 string "assignmentId" "assignmentId"
    * assignmentName 0..1 string "assignmentName" "assignmentName"
  * reasonText 0..1 string "reasonText" "reasonText"
