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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. http://tempuri.org"
* query 1..1 string "query" "query"
* queryLanguage 1..1 string "queryLanguage" "queryLanguage"
* profile 1..1 code "profile" "profile"
* profile from LookupProfileVS (required)
