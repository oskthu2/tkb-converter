// Elementen genereras ur GetTerminologySubsetResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för infrastructure.informationstructureservice.terminology v1.0.0 (fält ur XSD, se TKB avsnitt 6 och 7; scripts/xsd_to_ig.py)
// Kontrakt: GetTerminologySubset v1.0
// Genererad: 2026-09-26

Logical: GetTerminologySubsetRequest
Id: getterminologysubset-request
Title: "GetTerminologySubset — Request"
Description: """
  Logisk modell för begäran i GetTerminologySubset
  (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1, GetTerminologySubsetRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* SubsetIdentity 1..1 string "Identifierare som representerar urvalet" "Identifierare som representerar urvalet"
* LocalOrganizationExtensionId 0..1 string "Id för system eller organisation" "Id för system eller organisation"
* TermType 1..1 string "Type of term" "Type of term"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetTerminologySubsetRequestFieldDescriptions
