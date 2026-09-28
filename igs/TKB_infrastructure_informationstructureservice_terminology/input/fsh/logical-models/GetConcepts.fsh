// Genererad från XSD för infrastructure.informationstructureservice.terminology v1.0.0 (fält ur XSD, se TKB avsnitt 6 och 7; scripts/xsd_to_ig.py)
// Kontrakt: GetConcepts v1.0
// Genererad: 2026-09-26

Logical: GetConcepts
Id: getconcepts
Title: "GetConcepts — Response"
Description: """
  Logisk modell för svaret i GetConcepts
  (urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1, GetConceptsResponseType).
"""
Characteristics: #can-be-target
* Subset 0..1 BackboneElement "Subset" "Subset"
  * SubsetInformation 1..1 BackboneElement "SubsetInformation" "Information om urval"
    * SubsetIdentity 1..1 string "SubsetIdentity" "Identifierare av urval (XML-attribut.)"
    * Name 1..1 string "Name" "Namn som representerar urval (XML-attribut.)"
    * Version 1..1 string "Version" "Version för urval (XML-attribut.)"
  * Concept 0..* BackboneElement "Concept" "Lista med concepts"
    * Metadata 0..* BackboneElement "Metadata" "0..* Metadata"
      * Name 1..1 string "Name" "Identifierar typ av metadata (XML-attribut.)"
      * Value 1..1 string "Value" "Metadatavärde (XML-attribut.)"
      * LocalOrganizationExtensionId 0..1 string "LocalOrganizationExtensionId" "Id för system eller organisation (XML-attribut.)"
    * CodeSystem 1..1 string "CodeSystem" "Identifierare av kodsystem (XML-attribut.)"
    * Code 1..1 string "Code" "Kod för val i listan (XML-attribut.)"
    * Term 1..1 string "Term" "Term som visas upp i vallistan (XML-attribut.)"
    * LocalOrganizationExtensionId 0..1 string "LocalOrganizationExtensionId" "Id för system eller organisation (XML-attribut.)"
* ResultCode 1..1 code "ResultCode" "ResultCode"
* ResultCode from ResultCodeVS (required)
* comment 0..1 string "comment" "comment"
