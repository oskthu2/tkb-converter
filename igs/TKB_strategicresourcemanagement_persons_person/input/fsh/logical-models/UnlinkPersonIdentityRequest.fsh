// Elementen genereras ur UnlinkPersonIdentityResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: UnlinkPersonIdentity v4.0
// Genererad: 2026-09-26

Logical: UnlinkPersonIdentityRequest
Id: unlinkpersonidentity-request
Title: "UnlinkPersonIdentity — Request"
Description: """
  Logisk modell för begäran i UnlinkPersonIdentity
  (urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* actor 1..1 Base "ActorType" "actor"
* actor.id 1..1 IIType "id" "id"
* actor.professional 0..1 Base "ProfessionalType" "professional"
* actor.professional.organizationId 1..1 IIType "organizationId" "organizationId"
* actor.updateTime 0..1 string "updateTime" "updateTime"
* unlinkFromIdentity 1..1 IIType "unlinkFromIdentity" "unlinkFromIdentity"
* unlinkIdentity 1..1 IIType "unlinkIdentity" "unlinkIdentity"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UnlinkPersonIdentityRequestFieldDescriptions
