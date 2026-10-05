// Genererad från XSD för coreprocess.residentparticipation.residentparticipation v1.0.0-rc2 (Genererad ur tjänsteschemat och domänschemat i riv.coreprocess.residentparticipation.residentparticipation, tagg 1.0_RC2; scripts/xsd_to_ig.py)
// Kontrakt: GetCareManagers v1.0
// Genererad: 2026-09-26

Logical: GetCareManagersRequest
Id: getcaremanagers-request
Title: "GetCareManagers — Request"
Description: """
  Logisk modell för begäran i GetCareManagers
  (urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "1.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The county/region code"
* patientId 1..1 BackboneElement "patientId" "patientId"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* careGiverId 0..1 BackboneElement "careGiverId" "careGiverId"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* careUnitId 0..1 BackboneElement "careUnitId" "careUnitId"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* careManagerType 0..* BackboneElement "careManagerType" "careManagerType"
  * cVCode 0..1 string "cVCode" "cVCode Heter code i schemat."
  * codeSystem 0..1 string "codeSystem" "codeSystem"
  * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
  * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
  * displayName 0..1 string "displayName" "displayName"
  * originalText 0..1 string "originalText" "originalText"
* careProcessId 0..1 BackboneElement "careProcessId" "careProcessId"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
