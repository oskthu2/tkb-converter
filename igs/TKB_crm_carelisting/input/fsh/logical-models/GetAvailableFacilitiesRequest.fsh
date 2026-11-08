// Elementen genereras ur GetAvailableFacilities_1_0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetAvailableFacilities v1.0 — Request
// Namespace: urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1
// Genererad: 2026-03-24

Logical: GetAvailableFacilitiesRequest
Id: getavailablefacilities-request
Title: "GetAvailableFacilities — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare).
  (RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* countyCode 1..1 string "countyCode" "countyCode"
* healthcare_facilities 0..* string "healthcare_facilities" "Lista med Vårdenheter som man önskar information om eller tom sträng \"\" om information om alla tillgängliga vårdenehter ska hämtas."
* listingType 0..* string "Anger vilka typer av vårdenheter som skall sökas fram. Om inget anges så hämtas alla." "Anger vilka typer av vårdenheter som skall sökas fram. Om inget anges så hämtas alla."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAvailableFacilitiesRequestFieldDescriptions
