// Elementen genereras ur GetPatientIdsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: GetPatientIds v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: GetPatientIdsRequest
Id: getpatientids-request
Title: "GetPatientIds — Request"
Description: "Logisk modell för requestparametrar i GetPatientIds."
Characteristics: #can-be-target

* ^version = "2.0"
* careProviderId 1..1 string "HSA-id på den vårdgivare vars spärrade patienter skall hämtas."

* insert GetPatientIdsRequestFieldDescriptions
