// Elementen genereras ur GetPersonContactInformationResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: GetPersonContactInformation v4.0
// Genererad: 2026-09-26

Logical: GetPersonContactInformationRequest
Id: getpersoncontactinformation-request
Title: "GetPersonContactInformation — Request"
Description: """
  Logisk modell för begäran i GetPersonContactInformation
  (urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationResponder:4, GetPersonContactInformationType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* personId 1..1 IIType "personId" "personId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetPersonContactInformationRequestFieldDescriptions
