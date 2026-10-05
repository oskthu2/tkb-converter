// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: RegisterBlock v4.0
// Genererad: 2026-09-26

Logical: RegisterBlockRequest
Id: registerblock-request
Title: "RegisterBlock — Request"
Description: """
  Logisk modell för begäran i RegisterBlock
  (urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4, RegisterBlockType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "4.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges SE165565594230-1000."
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
* temporaryRevokeRegistration 0..* BackboneElement "temporaryRevokeRegistration" "Datatyp som representerar en registrering av en tillfällig hävning med de attribut som behövs."
  * temporaryRevokeId 1..1 string "temporaryRevokeId" "temporaryRevokeId"
  * blockId 1..1 string "blockId" "blockId"
  * endDate 1..1 dateTime "endDate" "endDate"
  * revokedForCareUnitId 1..1 string "revokedForCareUnitId" "revokedForCareUnitId"
  * revokedForEmployeeId 0..1 string "revokedForEmployeeId" "revokedForEmployeeId"
