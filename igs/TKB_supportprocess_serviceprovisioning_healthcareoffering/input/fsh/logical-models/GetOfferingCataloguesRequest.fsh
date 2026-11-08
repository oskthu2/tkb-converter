// Elementen genereras ur GetOfferingCataloguesResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.serviceprovisioning.healthcareoffering v3.0.0 (Genererad ur scheman i riv.supportprocess.serviceprovisioning.healthcareoffering, tagg 3.0 (commit 0e5b32c68d33); scripts/xsd_to_ig.py)
// Kontrakt: GetOfferingCatalogues v2.0
// Genererad: 2026-09-26

Logical: GetOfferingCataloguesRequest
Id: getofferingcatalogues-request
Title: "GetOfferingCatalogues — Request"
Description: """
  Logisk modell för begäran i GetOfferingCatalogues
  (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* providingOrganization 0..1 Base "SearchProvidingOrganizationType" "providingOrganization"
* providingOrganization.providingOrganizationId 0..* IIType "providingOrganizationId" "providingOrganizationId"
* providingOrganization.management 0..* CVType "management" "management"
* providingOrganization.publicProvider 0..1 boolean "publicProvider" "publicProvider"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetOfferingCataloguesRequestFieldDescriptions
