// Elementen genereras ur GetAppointmentResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetAppointment v2.0
// Genererad: 2026-09-26

Logical: GetAppointmentRequest
Id: getappointment-request
Title: "GetAppointment — Request"
Description: """
  Logisk modell för begäran i GetAppointment
  (urn:riv:supportprocess:logistics:scheduling:GetAppointmentResponder:2, GetAppointmentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* actor 1..1 Base "ActorType" "actor"
* actor.actorId 1..1 IIType "actorId" "actorId"
* actor.actorType 1..1 Base "SnomedCtType" "actorType"
* appointmentId 1..1 string "appointmentId" "appointmentId"
* appointmentId only uuidType
* personId 1..1 Base "PersonIdType" "personId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAppointmentRequestFieldDescriptions
