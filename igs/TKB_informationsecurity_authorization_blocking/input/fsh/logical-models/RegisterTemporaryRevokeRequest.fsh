// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: RegisterTemporaryRevoke v4.0
// Genererad: 2026-09-26

Logical: RegisterTemporaryRevokeRequest
Id: registertemporaryrevoke-request
Title: "RegisterTemporaryRevoke — Request"
Description: """
  Logisk modell för begäran i RegisterTemporaryRevoke
  (urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryRevokeResponder:4, RegisterTemporaryRevokeType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges SE165565594230-1000."
* temporaryRevokeRegistration 1..1 BackboneElement "temporaryRevokeRegistration" "Datatyp som representerar en registrering av en tillfällig hävning med de attribut som behövs."
  * temporaryRevokeId 1..1 string "temporaryRevokeId" "temporaryRevokeId"
  * blockId 1..1 string "blockId" "blockId"
  * endDate 1..1 dateTime "endDate" "endDate"
  * revokedForCareUnitId 1..1 string "revokedForCareUnitId" "revokedForCareUnitId"
  * revokedForEmployeeId 0..1 string "revokedForEmployeeId" "revokedForEmployeeId"
