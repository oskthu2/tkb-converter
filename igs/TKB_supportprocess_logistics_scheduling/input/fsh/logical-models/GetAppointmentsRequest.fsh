// Elementen genereras ur GetAppointmentsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetAppointments v2.0
// Genererad: 2026-09-26

Logical: GetAppointmentsRequest
Id: getappointments-request
Title: "GetAppointments — Request"
Description: """
  Logisk modell för begäran i GetAppointments
  (urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* actor 1..1 Base "ActorType" "actor"
* actor.actorId 1..1 IIType "actorId" "actorId"
* actor.actorType 1..1 Base "SnomedCtType" "actorType"
* personId 1..1 Base "PersonIdType" "personId"
* fromDate 0..1 string "fromDate" "fromDate"
* fromDate only DT
* toDate 0..1 string "toDate" "toDate"
* toDate only DT
* timeTypeCode 0..1 string "timeTypeCode" "timeTypeCode"
* healthcareServiceCode 0..1 string "healthcareServiceCode" "healthcareServiceCode"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAppointmentsRequestFieldDescriptions
