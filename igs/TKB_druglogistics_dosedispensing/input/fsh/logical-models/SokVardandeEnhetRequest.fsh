// Elementen genereras ur SokVardandeEnhetResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SokVardandeEnhet v1.0
// Genererad: 2026-09-26

Logical: SokVardandeEnhetRequest
Id: sokvardandeenhet-request
Title: "SokVardandeEnhet — Request"
Description: """
  Logisk modell för begäran i SokVardandeEnhet
  (urn:riv:druglogistics:dosedispensing:SokVardandeEnhetResponder:1, SokVardandeEnhetType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* glnkod 1..1 string "glnkod" "glnkod"
* dosaktor 1..1 string "dosaktor" "dosaktor"
* vardandeenhetnamn 1..1 string "vardandeenhetnamn" "vardandeenhetnamn"
* vardandeenhetort 1..1 string "vardandeenhetort" "vardandeenhetort"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SokVardandeEnhetRequestFieldDescriptions
