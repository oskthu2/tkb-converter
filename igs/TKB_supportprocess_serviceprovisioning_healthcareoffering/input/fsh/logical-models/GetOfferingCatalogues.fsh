// Elementen genereras ur GetOfferingCataloguesResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.serviceprovisioning.healthcareoffering v3.0.0 (Genererad ur scheman i riv.supportprocess.serviceprovisioning.healthcareoffering, tagg 3.0 (commit 0e5b32c68d33); scripts/xsd_to_ig.py)
// Kontrakt: GetOfferingCatalogues v2.0
// Genererad: 2026-09-26

Logical: GetOfferingCatalogues
Id: getofferingcatalogues
Title: "GetOfferingCatalogues — Response"
Description: """
  Logisk modell för svaret i GetOfferingCatalogues
  (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* offeringCatalogue 0..* Base "OfferingCatalogueType" "offeringCatalogue"
* offeringCatalogue.providingOrganization 1..* Base "ProvidingOrganizationType" "providingOrganization"
* offeringCatalogue.providingOrganization.id 1..1 IIType "id" "id"
* offeringCatalogue.providingOrganization.name 1..1 string "name" "name"
* offeringCatalogue.providingOrganization.management 1..1 CVType "management" "management"
* offeringCatalogue.providingOrganization.publicProvider 1..1 boolean "publicProvider" "publicProvider"
* offeringCatalogue.providingOrganization.description 0..* Base "DescriptionType" "description"
* offeringCatalogue.providingOrganization.description.text 1..1 string "text" "text"
* offeringCatalogue.providingOrganization.description.language 0..1 CVType "language" "language"
* offeringCatalogue.providingOrganization.description.role 0..* CVType "role" "role"
* offeringCatalogue.interaction 1..1 Base "InteractionType" "interaction"
* offeringCatalogue.interaction.logicalAddress 1..1 string "logicalAddress" "logicalAddress"
* offeringCatalogue.interaction.name 1..1 uri "name" "name"
* offeringCatalogue.interaction.majorVersion 1..1 integer "majorVersion" "majorVersion"
* offeringCatalogue.interaction.minorVersion 0..1 integer "minorVersion" "minorVersion"
* offeringCatalogue.interaction.rivtaVersion 1..1 code "rivtaVersion" "rivtaVersion Tillåtna värden: 2.1."
* offeringCatalogue.interaction.rivtaVersion from RIVTAVersionVS (required)

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetOfferingCataloguesFieldDescriptions
