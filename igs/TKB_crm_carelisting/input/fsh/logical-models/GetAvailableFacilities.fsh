// Elementen genereras ur GetAvailableFacilities_1_0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetAvailableFacilities v1.0
// Namespace: urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1
// Genererad: 2026-03-24

Logical: GetAvailableFacilities
Id: getavailablefacilities
Title: "GetAvailableFacilities"
Description: """
  Logisk modell för tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare)
  (RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1).
  Representerar responsens informationsstruktur.
  Hämtar lista med tillgängliga vårdenheter (tjänsteutövare) inom en region.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* healthcare_facilities 1..* Base "Facility" "healthcare_facilities"
* healthcare_facilities.facilityId 1..1 string "facilityId" "facilityId"
* healthcare_facilities.hasQueue 0..1 boolean "Indikerar om vårdenheten har kö vid listningar. Kan utelämnas om information inte har någon betydelse i kontexten." "Indikerar om vårdenheten har kö vid listningar. Kan utelämnas om information inte har någon betydelse i kontexten."
* healthcare_facilities.supportedListingTypes 0..* string "supportedListingTypes" "Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i."
* healthcare_facilities.facilityName 1..1 string "Namn på vårdenheten." "Namn på vårdenheten."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAvailableFacilitiesFieldDescriptions
