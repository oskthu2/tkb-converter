// Genererad från XSD för financial.patientfees.exemption v1.0 (Genererad ur scheman i riv.financial.patientfees.exemption, commit fbd046e11e50; scripts/xsd_to_ig.py)
// Kontrakt: RequestExemptionStatuses v1.0
// Genererad: 2026-09-26

Logical: RequestExemptionStatusesRequest
Id: requestexemptionstatuses-request
Title: "RequestExemptionStatuses — Request"
Description: """
  Logisk modell för begäran i RequestExemptionStatuses
  (urn:riv:financial:patientfees:exemption:RequestExemptionStatusesResponder:1, RequestExemptionStatusesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "1.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution"
* requestId 1..1 BackboneElement "requestId" "requestId"
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* patientId 1..1 BackboneElement "patientId" "patientId"
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* actor 1..1 BackboneElement "actor" "actor"
  * actorTypeEnum 1..1 code "actorTypeEnum" "actorTypeEnum"
  * actorTypeEnum from ActorTypeVS (required)
  * actorId 1..1 BackboneElement "actorId" "actorId"
    * root 1..1 string "root" "root"
    * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
  * careGiverId 0..1 BackboneElement "careGiverId" "careGiverId"
    * root 1..1 string "root" "root"
    * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* responseLogicalAddress 1..1 string "responseLogicalAddress" "responseLogicalAddress"
