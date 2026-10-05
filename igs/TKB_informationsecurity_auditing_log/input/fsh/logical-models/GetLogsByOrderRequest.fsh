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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Ineras nationella HSA-id SE165565594230-1000."
* careProviderId 1..1 string "careProviderId" "careProviderId"
* careUnitId 0..* string "careUnitId" "careUnitId"
* patientId 0..* BackboneElement "patientId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* userId 0..* string "userId" "userId"
* fromDate 1..1 dateTime "fromDate" "fromDate"
* toDate 1..1 dateTime "toDate" "toDate"
* maxResultsPerFile 0..1 integer "maxResultsPerFile" "maxResultsPerFile"
