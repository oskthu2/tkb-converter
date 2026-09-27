// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: GetFilesForOrderId v4.0
// Genererad: 2026-09-26

Logical: GetFilesForOrderIdRequest
Id: getfilesfororderid-request
Title: "GetFilesForOrderId — Request"
Description: """
  Logisk modell för begäran i GetFilesForOrderId
  (urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4, GetFilesForOrderIdType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. http://tempuri.org"
* orderId 1..1 string "orderId" "orderId"
