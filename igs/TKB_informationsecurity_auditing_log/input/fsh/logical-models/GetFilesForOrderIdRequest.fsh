// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetFilesForOrderId v1.0
// Genererad: 2026-09-26

Logical: GetFilesForOrderIdRequest
Id: getfilesfororderid-request
Title: "GetFilesForOrderId — Request"
Description: """
  Logisk modell för begäran i GetFilesForOrderId
  (urn:riv:informationsecurity:auditing:log:GetFilesForOrderIdResponder:1, GetFilesForOrderIdType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. http://tempuri.org"
* orderId 1..1 string "orderId" "orderId"
