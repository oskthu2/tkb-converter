// Elementen genereras ur GetListingTypes_1_0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetListingTypes v1.0 — Request
// Namespace: urn:riv:crm:carelisting:GetListingTypesResponder:1
// Genererad: 2026-03-24

Logical: GetListingTypesRequest
Id: getlistingtypes-request
Title: "GetListingTypes — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetListingTypes (Visa listningstyp).
  (RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* personId 1..1 string "Anger person ID som det önskas möjliga typer av listningar för." "Anger person ID som det önskas möjliga typer av listningar för."
* personId only SubjectOfCareIdType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetListingTypesRequestFieldDescriptions
