// Elementen genereras ur GetAvailableDatesResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetAvailableDates v2.0
// Genererad: 2026-09-26

Logical: GetAvailableDatesRequest
Id: getavailabledates-request
Title: "GetAvailableDates — Request"
Description: """
  Logisk modell för begäran i GetAvailableDates
  (urn:riv:supportprocess:logistics:scheduling:GetAvailableDatesResponder:2, GetAvailableDatesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* actor 0..1 Base "ActorType" "actor"
* actor.actorId 1..1 IIType "actorId" "actorId"
* actor.actorType 1..1 Base "SnomedCtType" "actorType"
* originalAppointmentId 0..1 string "originalAppointmentId" "originalAppointmentId"
* originalAppointmentId only uuidType
* personId 0..1 Base "PersonIdType" "personId"
* startDateInclusive 1..1 string "startDateInclusive" "startDateInclusive"
* startDateInclusive only DT
* endDateInclusive 1..1 string "endDateInclusive" "endDateInclusive"
* endDateInclusive only DT
* priority 0..1 integer "priority" "priority"
* practitionerId 0..1 Base "HSAIdType" "practitionerId"
* timeTypeCode 0..1 string "timeTypeCode" "timeTypeCode"
* healthcareServiceCode 0..1 string "healthcareServiceCode" "healthcareServiceCode"
* careContactCode 0..1 CVType "careContactCode" "careContactCode"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAvailableDatesRequestFieldDescriptions
