// Elementen genereras ur GetPersonQueueStatus_1_0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetPersonQueueStatus v1.0
// Namespace: urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1
// Genererad: 2026-03-24

Logical: GetPersonQueueStatus
Id: getpersonqueuestatus
Title: "GetPersonQueueStatus"
Description: """
  Logisk modell för tjänstekontraktet GetPersonQueueStatus (Visa köstatus)
  (RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1).
  Representerar responsens informationsstruktur.
  Hämtar köstatus för en person — returnerar om personen är i kö samt
  vilken vårdenhet köstatusen gäller för.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* queueStatus 1..1 code "queueStatus" "queueStatus Tillåtna värden: inQueue, notInQueue."
* queueStatus from PersonQueueStatusVS (required)
* healthcare_facility 0..1 Base "Facility" "healthcare_facility"
* healthcare_facility.facilityId 1..1 string "facilityId" "facilityId"
* healthcare_facility.hasQueue 0..1 boolean "Indikerar om vårdenheten har kö vid listningar. Kan utelämnas om information inte har någon betydelse i kontexten." "Indikerar om vårdenheten har kö vid listningar. Kan utelämnas om information inte har någon betydelse i kontexten."
* healthcare_facility.supportedListingTypes 0..* string "supportedListingTypes" "Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i."
* healthcare_facility.facilityName 1..1 string "Namn på vårdenheten." "Namn på vårdenheten."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetPersonQueueStatusFieldDescriptions
