// Elementen genereras ur LookupResidentsForProfileResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för masterdata.citizen.citizen v2.0 (Genererad ur scheman i riv.masterdata.citizen.citizen, tagg 2.0; scripts/xsd_to_ig.py)
// Kontrakt: LookupResidentsForProfile v2.0
// Genererad: 2026-09-26

Logical: LookupResidentsForProfileRequest
Id: lookupresidentsforprofile-request
Title: "LookupResidentsForProfile — Request"
Description: """
  Logisk modell för begäran i LookupResidentsForProfile
  (urn:riv:masterdata:citizen:citizen:LookupResidentsForProfileResponder:2, LookupResidentsForProfileType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* personId 1..* Base "PersonalIdentityType" "personId"
* personId.id 1..1 string "id" "id"
* personId.type 1..1 string "type" "type"
* profile 1..1 code "profile" "profile Tillåtna värden: P1, P2, P3, P4, P5, P6, P7, P8, P9, P10."
* profile from LookupProfileVS (required)

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert LookupResidentsForProfileRequestFieldDescriptions
