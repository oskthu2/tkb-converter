// Elementen genereras ur GetPersonContactInformationUnrestrictedResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: GetPersonContactInformationUnrestricted v4.0
// Genererad: 2026-09-26

Logical: GetPersonContactInformationUnrestrictedRequest
Id: getpersoncontactinformationunrestricted-request
Title: "GetPersonContactInformationUnrestricted — Request"
Description: """
  Logisk modell för begäran i GetPersonContactInformationUnrestricted
  (urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestrictedResponder:4, GetPersonContactInformationUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* personId 1..1 IIType "personId" "personId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetPersonContactInformationUnrestrictedRequestFieldDescriptions
