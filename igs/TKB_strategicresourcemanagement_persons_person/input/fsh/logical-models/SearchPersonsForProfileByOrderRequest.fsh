// Elementen genereras ur SearchPersonsForProfileByOrderResponder_5.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: SearchPersonsForProfileByOrder v5.0
// Genererad: 2026-09-26

Logical: SearchPersonsForProfileByOrderRequest
Id: searchpersonsforprofilebyorder-request
Title: "SearchPersonsForProfileByOrder — Request"
Description: """
  Logisk modell för begäran i SearchPersonsForProfileByOrder
  (urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderResponder:5, SearchPersonsForProfileByOrderType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "5.0"
* query 1..1 string "query" "query"
* queryLanguage 1..1 string "queryLanguage" "queryLanguage"
* profile 1..1 code "profile" "profile Tillåtna värden: P1, P2, P3, P4, P5, P6, P7, P8, P9, P10."
* profile from LookupProfileVS (required)

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SearchPersonsForProfileByOrderRequestFieldDescriptions
