// Elementen genereras ur CreateListing_1_0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: CreateListing v1.0 — Request
// Namespace: urn:riv:crm:carelisting:CreateListingResponder:1
// Genererad: 2026-03-24

Logical: CreateListingRequest
Id: createlisting-request
Title: "CreateListing — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet CreateListing (Göra tjänsteval).
  (RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* personId 1..1 string "personId" "personId"
* personId only SubjectOfCareIdType
* listingType 1..1 string "Typ av listning som man önskar göra, t.ex BVC." "Typ av listning som man önskar göra, t.ex BVC."
* healthcare_facility 1..1 string "Vårdenhet" "Vårdenhet"
* healthcare_professional 0..1 string "resurs att lista sig på" "resurs att lista sig på"
* addToQueue 1..1 boolean "Anger om personen vill ställa sig i kö om det är kö på vårdenheten/resursen." "Anger om personen vill ställa sig i kö om det är kö på vårdenheten/resursen."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CreateListingRequestFieldDescriptions
