// Elementen genereras ur GetCareManagersResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för coreprocess.residentparticipation.residentparticipation v1.0.0-rc2 (Genererad ur tjänsteschemat och domänschemat i riv.coreprocess.residentparticipation.residentparticipation, tagg 1.0_RC2; scripts/xsd_to_ig.py)
// Kontrakt: GetCareManagers v1.0
// Genererad: 2026-09-26

Logical: GetCareManagersRequest
Id: getcaremanagers-request
Title: "GetCareManagers — Request"
Description: """
  Logisk modell för begäran i GetCareManagers
  (urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* patientId 1..1 IIType "patientId" "patientId"
* careGiverId 0..1 IIType "careGiverId" "careGiverId"
* careUnitId 0..1 IIType "careUnitId" "careUnitId"
* careManagerType 0..* CVType "careManagerType" "careManagerType"
* careProcessId 0..1 IIType "careProcessId" "careProcessId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareManagersRequestFieldDescriptions
