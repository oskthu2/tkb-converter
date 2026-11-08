// Elementen genereras ur SearchPersonsForProfileByOrderUnrestrictedResponder_5.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: SearchPersonsForProfileByOrderUnrestricted v5.0
// Genererad: 2026-09-26

Logical: SearchPersonsForProfileByOrderUnrestricted
Id: searchpersonsforprofilebyorderunrestricted
Title: "SearchPersonsForProfileByOrderUnrestricted — Response"
Description: """
  Logisk modell för svaret i SearchPersonsForProfileByOrderUnrestricted
  (urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestrictedResponder:5, SearchPersonsForProfileByOrderUnrestrictedResponseType).
"""
Characteristics: #can-be-target

* ^version = "5.0"
* orderId 0..1 string "orderId" "orderId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SearchPersonsForProfileByOrderUnrestrictedFieldDescriptions
