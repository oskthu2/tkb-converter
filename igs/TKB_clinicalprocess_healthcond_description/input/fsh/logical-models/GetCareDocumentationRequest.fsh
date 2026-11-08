// Elementen genereras ur GetCareDocumentationResponder_3.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:description v3.0.6
// Kontrakt: GetCareDocumentation v3.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3
// Genererad: 2026-03-19

Logical: GetCareDocumentationRequest
Id: getcaredocumentation-request
Title: "GetCareDocumentation — Request"
Description: """
  Logisk modell för requestparametrar i GetCareDocumentation
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3).
  Söker journalanteckningar för en patient med valfri filtrering.
"""
Characteristics: #can-be-target

* ^version = "3.0"
* careUnit 0..* IIType "careUnit" "careUnit"
* healthcareProvider 0..* IIType "healthcareProvider" "healthcareProvider"
* patientId 1..1 IIType "patientId" "patientId"
* datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* sourceSystemId 0..1 IIType "sourceSystemId" "sourceSystemId"
* hasMoreReference 0..1 string "hasMoreReference" "hasMoreReference"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareDocumentationRequestFieldDescriptions
