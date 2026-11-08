// Elementen genereras ur GetLogsByOrderResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetLogsByOrder v1.0
// Genererad: 2026-09-26

Logical: GetLogsByOrderRequest
Id: getlogsbyorder-request
Title: "GetLogsByOrder — Request"
Description: """
  Logisk modell för begäran i GetLogsByOrder
  (urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1, GetLogsByOrderType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* careProviderId 1..1 string "careProviderId" "careProviderId"
* careUnitId 0..* string "careUnitId" "careUnitId"
* patientId 0..* IIType "patientId" "patientId"
* userId 0..* string "userId" "userId"
* fromDate 1..1 dateTime "fromDate" "fromDate"
* toDate 1..1 dateTime "toDate" "toDate"
* maxResultsPerFile 0..1 integer "maxResultsPerFile" "maxResultsPerFile"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetLogsByOrderRequestFieldDescriptions
