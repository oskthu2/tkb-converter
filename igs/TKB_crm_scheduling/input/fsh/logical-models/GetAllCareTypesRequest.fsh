// Elementen genereras ur GetAllCareTypesResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllCareTypes v1.1 — Request
// Genererad: 2026-03-24

Logical: GetAllCareTypesRequest
Id: getallcaretypes-request
Title: "GetAllCareTypes — Request"
Description: "Logisk modell för requestparametrar i GetAllCareTypes."
Characteristics: #can-be-target

* ^version = "1.1"
* healthcare_facility 1..1 string "healthcare_facility" "healthcare_facility"
* timeTypeIDs 0..* string "timeTypeIDs" "timeTypeIDs"
* performer 0..* string "performer" "performer"
* subject_of_care 1..1 string "subject_of_care" "subject_of_care"
* subject_of_care only SubjectOfCareIdType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAllCareTypesRequestFieldDescriptions
