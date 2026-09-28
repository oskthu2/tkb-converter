// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetAvailableTimeslots v2.0
// Genererad: 2026-09-26

Logical: GetAvailableTimeslotsRequest
Id: getavailabletimeslots-request
Title: "GetAvailableTimeslots — Request"
Description: """
  Logisk modell för begäran i GetAvailableTimeslots
  (urn:riv:supportprocess:logistics:scheduling:GetAvailableTimeslotsResponder:2, GetAvailableTimeslotsType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Verksamhetens HSAID på enhetsnivå"
* actor 0..1 BackboneElement "actor" "actor"
  * actorId 1..1 BackboneElement "actorId" "actorId"
    * root 1..1 string "root" "root"
    * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
  * actorType 1..1 BackboneElement "actorType" "actorType"
    * snomedCtCode 1..1 string "snomedCtCode" "snomedCtCode Heter code i schemat."
    * codeSystem 1..1 string "codeSystem" "Tillåtna värden: 1.2.752.116.2.1.1."
    * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
    * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
    * displayName 0..1 string "displayName" "displayName"
    * originalText 0..1 string "originalText" "originalText"
* originalAppointmentId 0..1 string "originalAppointmentId" "originalAppointmentId"
* personId 0..1 BackboneElement "personId" "personId"
  * root 1..1 string "root" "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
  * personIdExtension 1..1 string "personIdExtension" "personIdExtension Heter extension i schemat."
* startDateInclusive 1..1 string "startDateInclusive" "startDateInclusive"
* endDateInclusive 1..1 string "endDateInclusive" "endDateInclusive"
* priority 0..1 integer "priority" "priority"
* practitionerId 0..1 BackboneElement "practitionerId" "practitionerId"
  * root 1..1 string "root" "root"
  * hSAIdExtension 1..1 string "hSAIdExtension" "hSAIdExtension Heter extension i schemat."
* timeTypeCode 0..1 string "timeTypeCode" "timeTypeCode"
* healthcareServiceCode 0..1 string "healthcareServiceCode" "healthcareServiceCode"
* careContactCode 0..* BackboneElement "careContactCode" "careContactCode"
  * cvCode 1..1 string "cvCode" "cvCode Heter code i schemat."
  * codeSystem 1..1 string "codeSystem" "codeSystem"
  * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
  * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
  * displayName 0..1 string "displayName" "displayName"
  * originalText 0..1 string "originalText" "originalText"
