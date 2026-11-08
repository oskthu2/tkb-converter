// Elementen genereras ur GetTerminologySubsetInformationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* SubsetInformation 0..* Base "SubsetInformationType" "SubsetInformation"
* SubsetInformation.SubsetIdentity 1..1 string "Identifierare av urval" "Identifierare av urval (XML-attribut)"
* SubsetInformation.Name 1..1 string "Namn som representerar urval" "Namn som representerar urval (XML-attribut)"
* SubsetInformation.Version 1..1 string "Version för urval" "Version för urval (XML-attribut)"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* ResultCode from ResultCodeVS (required)
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetTerminologySubsetInformationFieldDescriptions
