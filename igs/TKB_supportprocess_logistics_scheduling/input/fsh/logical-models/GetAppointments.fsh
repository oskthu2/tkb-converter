// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetAppointments v2.0
// Genererad: 2026-09-26

Logical: GetAppointments
Id: getappointments
Title: "GetAppointments — Response"
Description: """
  Logisk modell för svaret i GetAppointments
  (urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsResponseType).
"""
Characteristics: #can-be-target
* appointment 0..* BackboneElement "appointment" "appointment"
  * appointmentId 1..1 string "appointmentId" "appointmentId"
  * healthcareFacilityId 1..1 BackboneElement "healthcareFacilityId" "healthcareFacilityId"
    * root 1..1 string "root" "root"
    * hSAIdExtension 1..1 string "hSAIdExtension" "hSAIdExtension Heter extension i schemat."
