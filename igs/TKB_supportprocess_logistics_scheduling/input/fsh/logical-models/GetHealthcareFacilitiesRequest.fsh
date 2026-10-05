// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetHealthcareFacilities v2.0
// Genererad: 2026-09-26

Logical: GetHealthcareFacilitiesRequest
Id: gethealthcarefacilities-request
Title: "GetHealthcareFacilities — Request"
Description: """
  Logisk modell för begäran i GetHealthcareFacilities
  (urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "2.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Verksamhetens HSAID på enhetsnivå"
* originalAppointmentId 0..1 string "originalAppointmentId" "originalAppointmentId"
* personId 0..1 BackboneElement "personId" "personId"
  * root 1..1 string "root" "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
  * personIdExtension 1..1 string "personIdExtension" "personIdExtension Heter extension i schemat."
* timeTypeCode 0..1 string "timeTypeCode" "timeTypeCode"
* healthcareServiceCode 0..1 string "healthcareServiceCode" "healthcareServiceCode"
