// Elementen genereras ur GetFilesForOrderIdResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: GetFilesForOrderId v4.0
// Genererad: 2026-09-26

Logical: GetFilesForOrderIdRequest
Id: getfilesfororderid-request
Title: "GetFilesForOrderId — Request"
Description: """
  Logisk modell för begäran i GetFilesForOrderId
  (urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4, GetFilesForOrderIdType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* orderId 1..1 string "orderId" "orderId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetFilesForOrderIdRequestFieldDescriptions
