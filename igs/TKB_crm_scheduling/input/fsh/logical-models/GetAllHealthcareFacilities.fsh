// Elementen genereras ur GetAllHealthcareFacilitiesResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllHealthcareFacilities v1.1
// Genererad: 2026-03-24

Logical: GetAllHealthcareFacilities
Id: getallhealthcarefacilities
Title: "GetAllHealthcareFacilities"
Description: """
  Logisk modell för tjänstekontraktet GetAllHealthcareFacilities
  (RIV-TA urn:riv:crm:scheduling:GetAllHealthcareFacilities:1).
  Representerar responsens informationsstruktur.
  Tjänst för att hämta alla vårdenheter som erbjuds för ombokning eller nybokning för aktuell invånare.
"""
Characteristics: #can-be-target

* ^version = "1.1"
* healthcareFacilityInfos 0..* Base "HealthcareFacilityInfoType" "healthcareFacilityInfos"
* healthcareFacilityInfos.healthcare_facility 1..1 string "healthcare_facility" "healthcare_facility"
* healthcareFacilityInfos.healthcare_facility_name 0..1 string "healthcare_facility_name" "healthcare_facility_name"
