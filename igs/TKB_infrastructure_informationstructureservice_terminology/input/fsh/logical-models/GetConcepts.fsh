// Elementen genereras ur GetConceptsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* Subset 0..1 Base "SubsetType" "Subset"
* Subset.SubsetInformation 1..1 Base "SubsetInformationType" "Information om urval"
* Subset.SubsetInformation.SubsetIdentity 1..1 string "Identifierare av urval" "Identifierare av urval (XML-attribut)"
* Subset.SubsetInformation.Name 1..1 string "Namn som representerar urval" "Namn som representerar urval (XML-attribut)"
* Subset.SubsetInformation.Version 1..1 string "Version för urval" "Version för urval (XML-attribut)"
* Subset.Concept 0..* Base "ConceptType" "Lista med concepts"
* Subset.Concept.Metadata 0..* Base "MetadataType" "0..* Metadata"
* Subset.Concept.Metadata.Name 1..1 string "Identifierar typ av metadata" "Identifierar typ av metadata (XML-attribut)"
* Subset.Concept.Metadata.Value 1..1 string "Metadatavärde" "Metadatavärde (XML-attribut)"
* Subset.Concept.Metadata.LocalOrganizationExtensionId 0..1 string "Id för system eller organisation" "Id för system eller organisation (XML-attribut)"
* Subset.Concept.CodeSystem 1..1 string "Identifierare av kodsystem" "Identifierare av kodsystem (XML-attribut)"
* Subset.Concept.Code 1..1 string "Kod för val i listan" "Kod för val i listan (XML-attribut)"
* Subset.Concept.Term 1..1 string "Term som visas upp i vallistan" "Term som visas upp i vallistan (XML-attribut)"
* Subset.Concept.LocalOrganizationExtensionId 0..1 string "Id för system eller organisation" "Id för system eller organisation (XML-attribut)"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* ResultCode from ResultCodeVS (required)
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetConceptsFieldDescriptions
