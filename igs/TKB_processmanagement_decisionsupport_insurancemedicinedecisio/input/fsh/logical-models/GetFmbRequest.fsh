// Elementen genereras ur GetFmbResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB processmanagement:decisionsupport:insurancemedicinedecisionsupport v1.0
// Kontrakt: GetFmb v1.0 — Request
// Genererad: 2026-05-19

Logical: GetFmbRequest
Id: getfmb-request
Title: "GetFmb — Request"
Description: """
  Logisk modell för requestparametrar i GetFmb.
  (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1).
  Anges inga parametrar returneras samtliga aktiva underlag.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* underlagsId 0..* IIType "underlagsId" "underlagsId"
* diagnosKod 0..* Base "ICD10SEType" "diagnosKod"
* avenEjAktiva 0..1 boolean "avenEjAktiva" "avenEjAktiva"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetFmbRequestFieldDescriptions
