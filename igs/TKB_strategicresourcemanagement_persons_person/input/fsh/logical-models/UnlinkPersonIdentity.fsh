// Elementen genereras ur UnlinkPersonIdentityResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: UnlinkPersonIdentity v4.0
// Genererad: 2026-09-26

Logical: UnlinkPersonIdentity
Id: unlinkpersonidentity
Title: "UnlinkPersonIdentity — Response"
Description: """
  Logisk modell för svaret i UnlinkPersonIdentity
  (urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityResponseType).
"""
Characteristics: #can-be-target

* ^version = "4.0"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR."
* result.resultCode from ResultCodeVS (required)
* result.resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UnlinkPersonIdentityFieldDescriptions
