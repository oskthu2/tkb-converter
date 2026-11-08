// Elementen genereras ur ProcessCervixScreeningInformationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för clinicalprocess.logistics.cervixscreening v1.0_RC4 (Genererad ur scheman i riv.clinicalprocess.logistics.cervixscreening, tagg 1.0_RC4; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: ProcessCervixScreeningInformation v1.0
// Genererad: 2026-09-26

Logical: ProcessCervixScreeningInformation
Id: processcervixscreeninginformation
Title: "ProcessCervixScreeningInformation — Response"
Description: """
  Logisk modell för svaret i ProcessCervixScreeningInformation
  (urn:riv:clinicalprocess:logistics:cervixscreening:ProcessCervixScreeningInformationResponder:1, ProcessCervixScreeningInformationResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessCervixScreeningInformationFieldDescriptions
