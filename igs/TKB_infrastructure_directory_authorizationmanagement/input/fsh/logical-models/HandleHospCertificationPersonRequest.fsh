// Elementen genereras ur HandleHospCertificationPersonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: HandleHospCertificationPerson v1.0 — Request
// Genererad: 2026-05-19

Logical: HandleHospCertificationPersonRequest
Id: handlehospcertificationperson-request
Title: "HandleHospCertificationPerson — Request"
Description: "Logisk modell för requestparametrar i HandleHospCertificationPerson."
Characteristics: #can-be-target

* ^version = "1.0"
* personalIdentityNumber 1..1 string "personalIdentityNumber" "personalIdentityNumber"
* operation 1..1 code "operation" "operation Tillåtna värden: add, remove."
* certificationId 0..1 string "certificationId" "certificationId"
* reason 0..1 string "reason" "reason"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HandleHospCertificationPersonRequestFieldDescriptions
