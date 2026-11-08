// Elementen genereras ur RequestExemptionStatusesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för financial.patientfees.exemption v1.0 (Genererad ur scheman i riv.financial.patientfees.exemption, commit fbd046e11e50; scripts/xsd_to_ig.py)
// Kontrakt: RequestExemptionStatuses v1.0
// Genererad: 2026-09-26

Logical: RequestExemptionStatusesRequest
Id: requestexemptionstatuses-request
Title: "RequestExemptionStatuses — Request"
Description: """
  Logisk modell för begäran i RequestExemptionStatuses
  (urn:riv:financial:patientfees:exemption:RequestExemptionStatusesResponder:1, RequestExemptionStatusesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* requestId 1..1 IIType "requestId" "requestId"
* patientId 1..1 IIType "patientId" "patientId"
* actor 1..1 Base "ActorType" "actor"
* actor.actorTypeEnum 1..1 code "actorTypeEnum" "actorTypeEnum Tillåtna värden: CITIZEN, GUARDIAN, CAREGIVER."
* actor.actorTypeEnum from ActorTypeVS (required)
* actor.actorId 1..1 IIType "actorId" "actorId"
* actor.careGiverId 0..1 IIType "careGiverId" "careGiverId"
* responseLogicalAddress 1..1 string "responseLogicalAddress" "responseLogicalAddress"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RequestExemptionStatusesRequestFieldDescriptions
