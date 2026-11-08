// Elementen genereras ur LinkPersonIdentityResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: LinkPersonIdentity v4.0
// Genererad: 2026-09-26

Logical: LinkPersonIdentityRequest
Id: linkpersonidentity-request
Title: "LinkPersonIdentity — Request"
Description: """
  Logisk modell för begäran i LinkPersonIdentity
  (urn:riv:strategicresourcemanagement:persons:person:LinkPersonIdentityResponder:4, LinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* actor 1..1 Base "ActorType" "actor"
* actor.id 1..1 IIType "id" "id"
* actor.professional 0..1 Base "ProfessionalType" "professional"
* actor.professional.organizationId 1..1 IIType "organizationId" "organizationId"
* actor.updateTime 0..1 string "updateTime" "updateTime"
* fromIdentity 1..1 IIType "fromIdentity" "fromIdentity"
* toIdentity 1..1 IIType "toIdentity" "toIdentity"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert LinkPersonIdentityRequestFieldDescriptions
