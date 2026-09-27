// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: RegisterExtendedBlock v4.0
// Genererad: 2026-09-26

Logical: RegisterExtendedBlockRequest
Id: registerextendedblock-request
Title: "RegisterExtendedBlock — Request"
Description: """
  Logisk modell för begäran i RegisterExtendedBlock
  (urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4, RegisterExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för vårdgivaren som spärren gäller för."
* blockId 1..1 string "blockId" "blockId"
* blockType 1..1 code "blockType" "blockType"
* blockType from BlockTypeVS (required)
* patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* informationStartDate 0..1 dateTime "informationStartDate" "informationStartDate"
* informationEndDate 0..1 dateTime "informationEndDate" "informationEndDate"
* informationCareUnitId 0..1 string "informationCareUnitId" "informationCareUnitId"
* informationCareProviderId 1..1 string "informationCareProviderId" "informationCareProviderId"
* excludedInformationTypes 0..* string "excludedInformationTypes" "excludedInformationTypes"
* registerAction 1..1 BackboneElement "registerAction" "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext."
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
* replicationTimeout 1..1 integer "replicationTimeout" "replicationTimeout"
