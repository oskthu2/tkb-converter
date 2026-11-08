// Elementen genereras ur CreateListing_1_0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: CreateListing v1.0
// Namespace: urn:riv:crm:carelisting:CreateListingResponder:1
// Genererad: 2026-03-24

Logical: CreateListing
Id: createlisting
Title: "CreateListing"
Description: """
  Logisk modell för tjänstekontraktet CreateListing (Göra tjänsteval)
  (RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1).
  Representerar responsens informationsstruktur.
  Skapar en ny listning — kopplar ett personId till en vårdenhet.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* success 1..1 boolean "success" "True if the requested listing was successfully completed, else false. False indicates that the user needs to try another option for listing."
* comment 0..1 string "Information som kompletterar angiven status." "Information som kompletterar angiven status."
* systemCode 0..1 string "systemCode" "Kod från underliggande listningssystem, i syfte att användas i dialog med respektive listningssystems förvaltning. Tjänstekonsumenten får inte binda logik till värden på dessa koder."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CreateListingFieldDescriptions
