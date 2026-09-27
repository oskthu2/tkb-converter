// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: DeleteExtendedBlock v4.0
// Genererad: 2026-09-26

Logical: DeleteExtendedBlockRequest
Id: deleteextendedblock-request
Title: "DeleteExtendedBlock — Request"
Description: """
  Logisk modell för begäran i DeleteExtendedBlock
  (urn:riv:informationsecurity:authorization:blocking:DeleteExtendedBlockResponder:4, DeleteExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för vårdgivaren som spärren gäller för."
* blockId 1..1 string "blockId" "blockId"
* deleteAction 1..1 BackboneElement "deleteAction" "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext."
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
* deleteReasonText 0..1 string "deleteReasonText" "deleteReasonText"
* replicationTimeout 1..1 integer "replicationTimeout" "replicationTimeout"
