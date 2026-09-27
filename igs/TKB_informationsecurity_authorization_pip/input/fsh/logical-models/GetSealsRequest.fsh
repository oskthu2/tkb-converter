// Genererad från XSD för informationsecurity.authorization.pip v1.0 (Genererat ur domänens XSD (master, commit 729301865b83).; scripts/xsd_to_ig.py)
// Kontrakt: GetSeals v1.0
// Genererad: 2026-09-26

Logical: GetSealsRequest
Id: getseals-request
Title: "GetSeals — Request"
Description: """
  Logisk modell för begäran i GetSeals
  (urn:riv:informationsecurity:authorization:pip:GetSealsResponder:1, GetSealsType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The HSA id of Inera (5565594230)"
* patientId 1..1 BackboneElement "patientId" "patientId"
  * root 1..1 string "root" "root"
  * iiExtension 1..1 string "iiExtension" "iiExtension Heter extension i schemat."
