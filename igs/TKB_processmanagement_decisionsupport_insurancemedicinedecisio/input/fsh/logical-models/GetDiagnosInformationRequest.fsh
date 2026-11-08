// Elementen genereras ur GetDiagnosInformationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB processmanagement:decisionsupport:insurancemedicinedecisionsupport v1.0
// Kontrakt: GetDiagnosInformation v1.0 — Request
// Genererad: 2026-05-19

Logical: GetDiagnosInformationRequest
Id: getdiagnosinformation-request
Title: "GetDiagnosInformation — Request"
Description: """
  Logisk modell för requestparametrar i GetDiagnosInformation.
  (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1).
  Anges ej parametern diagnosKod returneras diagnosinformation för alla diagnoskoder.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* informationsId 0..* IIType "informationsId" "informationsId"
* diagnosKod 0..* Base "ICD10SEType" "diagnosKod"
* avenEjAktiva 0..1 boolean "avenEjAktiva" "avenEjAktiva"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetDiagnosInformationRequestFieldDescriptions
