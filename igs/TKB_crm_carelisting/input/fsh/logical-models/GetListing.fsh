// Elementen genereras ur GetListing_1_0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetListing v1.0
// Namespace: urn:riv:crm:carelisting:GetListingResponder:1
// Genererad: 2026-03-24

Logical: GetListing
Id: getlisting
Title: "GetListing"
Description: """
  Logisk modell för tjänstekontraktet GetListing (Visa tjänsteval)
  (RIV-TA urn:riv:crm:carelisting:GetListingResponder:1).
  Representerar responsens informationsstruktur.
  Hämtar information om en persons aktiva listning (tjänsteval).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* subjectOfCare 1..1 Base "SubjectOfCare" "En persons listningar. PostCondition: tillgängliga listningstyper för en listnings vårdenhet är utelämnad."
* subjectOfCare.personId 1..1 string "personId" "personId"
* subjectOfCare.personId only SubjectOfCareIdType
* subjectOfCare.listing 0..* Base "Listing" "listing"
* subjectOfCare.listing.validFromDate 0..1 dateTime "Anger datum för när listningen började gälla." "Anger datum för när listningen började gälla."
* subjectOfCare.listing.validToDate 0..1 dateTime "Anger datum när listningen slutade gälla, om datum saknas så blir det implicit obestämt in i framtiden." "Anger datum när listningen slutade gälla, om datum saknas så blir det implicit obestämt in i framtiden."
* subjectOfCare.listing.listingType 1..1 string "listingType" "listingType"
* subjectOfCare.listing.healthcare_facility 1..1 Base "Facility" "healthcare_facility"
* subjectOfCare.listing.healthcare_facility.facilityId 1..1 string "facilityId" "facilityId"
* subjectOfCare.listing.healthcare_facility.hasQueue 0..1 boolean "Indikerar om vårdenheten har kö vid listningar. Kan utelämnas om information inte har någon betydelse i kontexten." "Indikerar om vårdenheten har kö vid listningar. Kan utelämnas om information inte har någon betydelse i kontexten."
* subjectOfCare.listing.healthcare_facility.supportedListingTypes 0..* string "supportedListingTypes" "Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i."
* subjectOfCare.listing.healthcare_facility.facilityName 1..1 string "Namn på vårdenheten." "Namn på vårdenheten."
* subjectOfCare.listing.resource 0..1 Base "Resource" "Om listning pekar ut en specifik resurs, t.ex en läkare eller husläkarteam."
* subjectOfCare.listing.resource.resourceId 1..1 string "resourceId" "resourceId"
* subjectOfCare.listing.resource.resourceName 1..1 string "Namn på vårdgivaren" "Namn på vårdgivaren"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetListingFieldDescriptions
