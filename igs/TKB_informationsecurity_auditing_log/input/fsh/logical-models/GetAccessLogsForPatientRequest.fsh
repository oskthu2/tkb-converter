// Elementen genereras ur GetAccessLogsForPatientResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetAccessLogsForPatient v2.0
// Genererad: 2026-09-26

Logical: GetAccessLogsForPatientRequest
Id: getaccesslogsforpatient-request
Title: "GetAccessLogsForPatient — Request"
Description: """
  Logisk modell för begäran i GetAccessLogsForPatient
  (urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* patientId 1..1 IIType "patientId" "patientId"
* fromDate 1..1 dateTime "fromDate" "fromDate"
* toDate 1..1 dateTime "toDate" "toDate"
* queuedReportId 0..1 string "queuedReportId" "queuedReportId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAccessLogsForPatientRequestFieldDescriptions
