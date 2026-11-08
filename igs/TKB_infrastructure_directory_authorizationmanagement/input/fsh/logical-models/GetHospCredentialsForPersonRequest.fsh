// Elementen genereras ur GetHospCredentialsForPersonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetHospCredentialsForPerson v1.0 — Request
// Genererad: 2026-05-19

Logical: GetHospCredentialsForPersonRequest
Id: gethospcredentialsforperson-request
Title: "GetHospCredentialsForPerson — Request"
Description: "Logisk modell för requestparametrar i GetHospCredentialsForPerson."
Characteristics: #can-be-target

* ^version = "1.0"
* personalIdentityNumber 1..1 string "personalIdentityNumber" "personalIdentityNumber"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHospCredentialsForPersonRequestFieldDescriptions
