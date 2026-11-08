// Elementen genereras ur UpdatePatientContactInformationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för masterdata.citizen.patient v1.0 (Genererad ur scheman i riv.masterdata.citizen.patient (master, commit efa4099dabb2); scripts/xsd_to_ig.py)
// Kontrakt: UpdatePatientContactInformation v1.0
// Genererad: 2026-09-26

Logical: UpdatePatientContactInformation
Id: updatepatientcontactinformation
Title: "UpdatePatientContactInformation — Response"
Description: """
  Logisk modell för svaret i UpdatePatientContactInformation
  (urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1, UpdatePatientContactInformationResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* message 0..1 string "message" "message"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* resultCode from ResultCodeEnumVS (required)

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdatePatientContactInformationFieldDescriptions
