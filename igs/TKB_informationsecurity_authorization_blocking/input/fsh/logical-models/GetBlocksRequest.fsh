// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetBlocks v4.0
// Genererad: 2026-09-26

Logical: GetBlocksRequest
Id: getblocks-request
Title: "GetBlocks — Request"
Description: """
  Logisk modell för begäran i GetBlocks
  (urn:riv:informationsecurity:authorization:blocking:GetBlocksResponder:4, GetBlocksType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst)."
* patientId 0..1 BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* careProviderIds 0..* string "careProviderIds" "careProviderIds"
* createdOnOrAfter 0..1 dateTime "createdOnOrAfter" "createdOnOrAfter"
