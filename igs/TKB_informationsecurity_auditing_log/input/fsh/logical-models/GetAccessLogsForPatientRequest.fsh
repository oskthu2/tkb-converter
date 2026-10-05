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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Ineras nationella HSA-id SE165565594230-1000."
* patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* fromDate 1..1 dateTime "fromDate" "fromDate"
* toDate 1..1 dateTime "toDate" "toDate"
* queuedReportId 0..1 string "queuedReportId" "queuedReportId"
