// Elementen genereras ur GetAppointmentsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "2.0"
* appointment 0..* Base "AppointmentPerHealthcareFacilityType" "appointment"
* appointment.appointmentId 1..1 string "appointmentId" "appointmentId"
* appointment.appointmentId only uuidType
* appointment.healthcareFacilityId 1..1 Base "HSAIdType" "healthcareFacilityId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAppointmentsFieldDescriptions
