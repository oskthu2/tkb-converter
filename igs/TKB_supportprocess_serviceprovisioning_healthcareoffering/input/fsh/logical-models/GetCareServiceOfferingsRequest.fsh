// Elementen genereras ur GetCareServiceOfferingsResponder_3.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.serviceprovisioning.healthcareoffering v3.0.0 (Genererad ur scheman i riv.supportprocess.serviceprovisioning.healthcareoffering, tagg 3.0 (commit 0e5b32c68d33); scripts/xsd_to_ig.py)
// Kontrakt: GetCareServiceOfferings v3.0
// Genererad: 2026-09-26

Logical: GetCareServiceOfferingsRequest
Id: getcareserviceofferings-request
Title: "GetCareServiceOfferings — Request"
Description: """
  Logisk modell för begäran i GetCareServiceOfferings
  (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "3.0"
* careServiceId 0..* IIType "careServiceId" "careServiceId"
* typeOfCareService 0..* CVType "typeOfCareService" "typeOfCareService"
* typeOfPlace 1..1 Base "TypeOfPlaceType" "typeOfPlace"
* typeOfPlace.typeOfPlaceEnum 1..1 code "typeOfPlaceEnum" "typeOfPlaceEnum Tillåtna värden: ALL, PHYSICAL, VIRTUAL."
* typeOfPlace.typeOfPlaceEnum from TypeOfPlaceVS (required)
* typeOfBusiness 0..* CVType "typeOfBusiness" "typeOfBusiness"
* providingOrganization 0..1 Base "SearchProvidingOrganizationType" "providingOrganization"
* providingOrganization.providingOrganizationId 0..* IIType "providingOrganizationId" "providingOrganizationId"
* providingOrganization.management 0..* CVType "management" "management"
* providingOrganization.publicProvider 0..1 boolean "publicProvider" "publicProvider"
* actorLanguage 0..1 CVType "actorLanguage" "actorLanguage"
* actorRole 0..1 CVType "actorRole" "actorRole"
* performingOrganizationId 0..* IIType "performingOrganizationId" "performingOrganizationId"
* targetGroupAge 0..1 integer "targetGroupAge" "targetGroupAge"
* targetGroupGender 0..1 CVType "targetGroupGender" "targetGroupGender"
* targetGroupAttribute 0..* Base "TargetGroupAttributeType" "targetGroupAttribute"
* targetGroupAttribute.typeOfPersonalAttribute 1..1 CVType "typeOfPersonalAttribute" "typeOfPersonalAttribute"
* targetGroupAttribute.attributeValue 1..1 string "attributeValue" "attributeValue"
* location 0..1 Base "SearchLocationType" "location"
* location.geographicalLocation 0..1 Base "SearchGeographicalLocationType" "geographicalLocation"
* location.geographicalLocation.geographicalCoordinates 1..1 Base "GeoLocationType" "geographicalCoordinates"
* location.geographicalLocation.geographicalCoordinates.north 1..1 string "north" "north"
* location.geographicalLocation.geographicalCoordinates.east 1..1 string "east" "east"
* location.geographicalLocation.radius 1..1 integer "radius" "radius"
* location.county 0..* CVType "county" "county"
* location.municipality 0..* CVType "municipality" "municipality"
* searchTerm 0..* string "searchTerm" "searchTerm"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareServiceOfferingsRequestFieldDescriptions
