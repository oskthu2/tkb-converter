// Elementen genereras ur GetLogsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetLogs v2.0
// Genererad: 2026-09-26

Logical: GetLogsRequest
Id: getlogs-request
Title: "GetLogs — Request"
Description: """
  Logisk modell för begäran i GetLogs
  (urn:riv:informationsecurity:auditing:log:GetLogsResponder:2, GetLogsType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careProviderId 1..1 string "careProviderId" "careProviderId"
* patientId 0..1 IIType "patientId" "patientId"
* userId 0..1 string "userId" "userId"
* fromDate 1..1 dateTime "fromDate" "fromDate"
* toDate 1..1 dateTime "toDate" "toDate"
* careUnitId 0..1 string "careUnitId" "careUnitId"
* queuedReportId 0..1 string "queuedReportId" "queuedReportId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetLogsRequestFieldDescriptions
