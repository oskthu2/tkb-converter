// Elementen genereras ur LookupResidentForFullProfileResponder_1.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB population:residentmaster v1.2
// Kontrakt: LookupResidentForFullProfile v1.2
// Genererad: 2026-09-17

Logical: LookupResidentForFullProfileRequest
Id: lookupresidentforfullprofile-request
Title: "LookupResidentForFullProfile — Request"
Description: """
  Logisk modell för requestparametrar i LookupResidentForFullProfile
  (RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1).
"""
Characteristics: #can-be-target

* ^version = "1.2"
* personId 1..* string "personId" "personId"
* lookUpSpecification 1..1 Base "LookUpSpecificationType" "lookUpSpecification"
* lookUpSpecification.Avregistreringsorsak 0..* string "Avregistreringsorsak" "Avregistreringsorsak"
* lookUpSpecification.Sekretessmarkering 0..1 code "Sekretessmarkering" "Sekretessmarkering Tillåtna värden: J, N."
* lookUpSpecification.SenasteAndringFolkbokforing 0..1 string "SenasteAndringFolkbokforing" "SenasteAndringFolkbokforing"
* lookUpSpecification.SenasteAndringFolkbokforing only DT
* lookUpSpecification.historiskTidpunkt 0..1 string "historiskTidpunkt" "historiskTidpunkt"
* lookUpSpecification.historiskTidpunkt only TS

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert LookupResidentForFullProfileRequestFieldDescriptions
