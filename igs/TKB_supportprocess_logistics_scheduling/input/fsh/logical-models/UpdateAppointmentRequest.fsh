// Elementen genereras ur UpdateAppointmentResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: UpdateAppointment v2.0
// Genererad: 2026-09-26

Logical: UpdateAppointmentRequest
Id: updateappointment-request
Title: "UpdateAppointment — Request"
Description: """
  Logisk modell för begäran i UpdateAppointment
  (urn:riv:supportprocess:logistics:scheduling:UpdateAppointmentResponder:2, UpdateAppointmentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* actor 1..1 Base "ActorType" "actor"
* actor.actorId 1..1 IIType "actorId" "actorId"
* actor.actorType 1..1 Base "SnomedCtType" "actorType"
* originalAppointmentId 1..1 string "originalAppointmentId" "originalAppointmentId"
* originalAppointmentId only uuidType
* timeslotId 1..1 string "timeslotId" "timeslotId"
* timeslotId only uuidType
* personId 1..1 Base "PersonIdType" "personId"
* reasonText 0..1 string "reasonText" "reasonText"
* reasonCode 0..1 CVType "reasonCode" "reasonCode"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdateAppointmentRequestFieldDescriptions
