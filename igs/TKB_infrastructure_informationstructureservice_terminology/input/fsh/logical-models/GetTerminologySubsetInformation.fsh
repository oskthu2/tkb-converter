// Genererad från XSD för infrastructure.informationstructureservice.terminology v1.0.0 (fält ur XSD, se TKB avsnitt 6 och 7; scripts/xsd_to_ig.py)
// Kontrakt: GetTerminologySubsetInformation v1.0
// Genererad: 2026-09-26

Logical: GetTerminologySubsetInformation
Id: getterminologysubsetinformation
Title: "GetTerminologySubsetInformation — Response"
Description: """
  Logisk modell för svaret i GetTerminologySubsetInformation
  (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetInformationResponder:1, GetTerminologySubsetInformationResponseType).
"""
Characteristics: #can-be-target
* SubsetInformation 0..* BackboneElement "SubsetInformation" "SubsetInformation"
  * SubsetIdentity 1..1 string "SubsetIdentity" "Identifierare av urval (XML-attribut.)"
  * Name 1..1 string "Name" "Namn som representerar urval (XML-attribut.)"
  * Version 1..1 string "Version" "Version för urval (XML-attribut.)"
* ResultCode 1..1 code "ResultCode" "ResultCode"
* ResultCode from ResultCodeVS (required)
* comment 0..1 string "comment" "comment"
