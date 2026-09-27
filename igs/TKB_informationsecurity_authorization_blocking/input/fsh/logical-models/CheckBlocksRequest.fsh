// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CheckBlocks v4.0
// Genererad: 2026-09-26

Logical: CheckBlocksRequest
Id: checkblocks-request
Title: "CheckBlocks — Request"
Description: """
  Logisk modell för begäran i CheckBlocks
  (urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst)."
* accessingActor 1..1 BackboneElement "accessingActor" "Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information."
  * employeeId 1..1 string "employeeId" "employeeId"
  * careProviderId 1..1 string "careProviderId" "careProviderId"
  * careUnitId 1..1 string "careUnitId" "careUnitId"
* patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* informationEntities 1..* BackboneElement "informationEntities" "Datatyp som representerar den information som behövs vid en kontroll om spärr föreligger."
  * informationStartDate 1..1 dateTime "informationStartDate" "informationStartDate"
  * informationEndDate 1..1 dateTime "informationEndDate" "informationEndDate"
  * informationCareUnitId 1..1 string "informationCareUnitId" "informationCareUnitId"
  * informationCareProviderId 1..1 string "informationCareProviderId" "informationCareProviderId"
  * informationType 0..1 string "informationType" "informationType"
  * rowNumber 1..1 integer "rowNumber" "rowNumber"
