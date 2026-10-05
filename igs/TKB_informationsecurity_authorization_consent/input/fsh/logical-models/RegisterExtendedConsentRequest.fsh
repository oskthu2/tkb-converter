// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: RegisterExtendedConsent v2.0
// Genererad: 2026-09-26

Logical: RegisterExtendedConsentRequest
Id: registerextendedconsent-request
Title: "RegisterExtendedConsent — Request"
Description: """
  Logisk modell för begäran i RegisterExtendedConsent
  (urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsentResponder:2, RegisterExtendedConsentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "2.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för vårdgivaren som samtycket gäller för."
* assertionId 1..1 string "assertionId" "assertionId"
* assertionType 1..1 code "assertionType" "assertionType"
* assertionType from AssertionTypeVS (required)
* scope 1..1 code "scope" "scope"
* scope from ScopeVS (required)
* patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* careProviderId 1..1 string "careProviderId" "careProviderId"
* careUnitId 1..1 string "careUnitId" "careUnitId"
* employeeId 0..1 string "employeeId" "employeeId"
* startDate 0..1 dateTime "startDate" "startDate"
* endDate 0..1 dateTime "endDate" "endDate"
* representedBy 0..1 BackboneElement "representedBy" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* registrationAction 1..1 BackboneElement "registrationAction" "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext."
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
