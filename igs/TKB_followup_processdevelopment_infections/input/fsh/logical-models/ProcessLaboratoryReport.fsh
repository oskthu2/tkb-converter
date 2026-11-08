// Elementen genereras ur ProcessLaboratoryReportResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: ProcessLaboratoryReport v1.0
// Genererad: 2026-05-19

Logical: ProcessLaboratoryReportRequest
Id: processlaboratoryreport-request
Title: "ProcessLaboratoryReport — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ProcessLaboratoryReport
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessLaboratoryReport:1).
  Registrerar ett nytt laboratoriesvar med tillhörande information om patient,
  beställande enhet, provtagningstidpunkt och agensförekomst.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* laboratoryReport 1..1 Base "LaboratoryReportType" "laboratoryReport"
* laboratoryReport.orgUnitId 1..1 IIType "orgUnitId" "orgUnitId"
* laboratoryReport.reportId 1..1 IIType "reportId" "reportId"
* laboratoryReport.testTime 1..1 string "testTime" "testTime"
* laboratoryReport.testTime only TimeStampType
* laboratoryReport.observationTime 1..1 string "observationTime" "observationTime"
* laboratoryReport.observationTime only TimeStampType
* laboratoryReport.findingCode 1..1 CVType "findingCode" "findingCode"
* laboratoryReport.patient 1..1 Base "PatientType" "patient"
* laboratoryReport.patient.id 1..1 IIType "id" "id"
* laboratoryReport.patient.birthTime 1..1 string "birthTime" "birthTime"
* laboratoryReport.patient.birthTime only DateType
* laboratoryReport.patient.gender 1..1 CVType "gender" "gender"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessLaboratoryReportRequestFieldDescriptions

Logical: ProcessLaboratoryReportResponse
Id: processlaboratoryreport-response
Title: "ProcessLaboratoryReport — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet ProcessLaboratoryReport
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessLaboratoryReport:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessLaboratoryReportResponseFieldDescriptions
