// Elementen genereras ur GetPersonQueueStatus_1_0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetPersonQueueStatus v1.0 — Request
// Namespace: urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1
// Genererad: 2026-03-24

Logical: GetPersonQueueStatusRequest
Id: getpersonqueuestatus-request
Title: "GetPersonQueueStatus — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetPersonQueueStatus (Visa köstatus).
  (RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* personId 1..1 string "personId" "personId"
* personId only SubjectOfCareIdType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetPersonQueueStatusRequestFieldDescriptions
