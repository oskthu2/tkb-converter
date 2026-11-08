// Elementen genereras ur DeleteLaboratoryReportResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: DeleteLaboratoryReport v1.0
// Genererad: 2026-05-19

Logical: DeleteLaboratoryReportRequest
Id: deletelaboratoryreport-request
Title: "DeleteLaboratoryReport — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet DeleteLaboratoryReport
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteLaboratoryReport:1).
  Raderar information som tidigare registrerats via ProcessLaboratoryReport.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* laboratoryReportId 1..1 IIType "laboratoryReportId" "laboratoryReportId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteLaboratoryReportRequestFieldDescriptions

Logical: DeleteLaboratoryReportResponse
Id: deletelaboratoryreport-response
Title: "DeleteLaboratoryReport — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet DeleteLaboratoryReport
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteLaboratoryReport:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteLaboratoryReportResponseFieldDescriptions
