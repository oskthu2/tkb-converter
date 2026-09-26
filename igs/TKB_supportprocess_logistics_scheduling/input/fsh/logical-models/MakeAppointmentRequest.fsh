// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: MakeAppointment v2.0
// Genererad: 2026-09-26

Logical: MakeAppointmentRequest
Id: makeappointment-request
Title: "MakeAppointment — Request"
Description: """
  Logisk modell för begäran i MakeAppointment
  (urn:riv:supportprocess:logistics:scheduling:MakeAppointmentResponder:2, MakeAppointmentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Verksamhetens HSAID på enhetsnivå"
* actor 1..1 BackboneElement "actor" "actor"
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
* personId 1..1 BackboneElement "personId" "personId"
  * root 1..1 string "root" "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
  * personIdExtension 1..1 string "personIdExtension" "personIdExtension Heter extension i schemat."
* timeslotId 1..1 string "timeslotId" "timeslotId"
* reasonText 0..1 string "reasonText" "reasonText"
* reasonCode 0..1 BackboneElement "reasonCode" "reasonCode"
  * cvCode 1..1 string "cvCode" "cvCode Heter code i schemat."
  * codeSystem 1..1 string "codeSystem" "codeSystem"
  * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
  * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
  * displayName 0..1 string "displayName" "displayName"
  * originalText 0..1 string "originalText" "originalText"
