// Elementen genereras ur DeletePrescriptionResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: DeletePrescription v1.0
// Genererad: 2026-05-19

Logical: DeletePrescriptionRequest
Id: deleteprescription-request
Title: "DeletePrescription — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet DeletePrescription
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescription:1).
  Raderar information om en ordination som tidigare registrerats via ProcessPrescriptionReason.
  Ordinationsorsaken för ordinationen tas inte bort.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* prescriptionId 1..1 IIType "prescriptionId" "prescriptionId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeletePrescriptionRequestFieldDescriptions

Logical: DeletePrescriptionResponse
Id: deleteprescription-response
Title: "DeletePrescription — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet DeletePrescription
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescription:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeletePrescriptionResponseFieldDescriptions
