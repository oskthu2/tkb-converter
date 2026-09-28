// Genererad från XSD för infrastructure.informationstructureservice.terminology v1.0.0 (fält ur XSD, se TKB avsnitt 6 och 7; scripts/xsd_to_ig.py)
// Kontrakt: GetConcepts v1.0
// Genererad: 2026-09-26

Logical: GetConceptsRequest
Id: getconcepts-request
Title: "GetConcepts — Request"
Description: """
  Logisk modell för begäran i GetConcepts
  (urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1, GetConceptsRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. HSA-id for the entity responsible for the subset"
* SubsetIdentity 1..1 string "SubsetIdentity" "Identifierare som representerar urvalet"
* LocalOrganizationExtensionId 0..1 string "LocalOrganizationExtensionId" "Id för system eller organisation"
* CodeSystem 0..1 string "CodeSystem" "Kodsystem som sökt concept tillhör"
* Code 0..1 string "Code" "Kod för sökt concept"
* Term 0..1 string "Term" "Term för sökt concept"
* ConceptsResponseThreshold 0..1 integer "ConceptsResponseThreshold" "Antal concepts som maximalt returneras i svaret"
* TermType 1..1 string "TermType" "Type of term"
