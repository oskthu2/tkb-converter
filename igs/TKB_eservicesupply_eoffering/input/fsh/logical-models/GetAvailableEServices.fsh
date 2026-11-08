// Elementen genereras ur GetAvailableEServicesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB eservicesupply:eoffering v1.0 (källdokument v0.3, 2011-04-18)
// Kontrakt: GetAvailableEServices v1.0
// Namnrymd: urn:riv:eservicesupply:eoffering:GetAvailableEServicesResponder:1
// Genererad: 2026-05-19

Logical: GetAvailableEServices
Id: getavailableeservices
Title: "GetAvailableEServices"
Description: """
  Logisk modell för tjänstekontraktet GetAvailableEServices
  (RIV-TA urn:riv:eservicesupply:eoffering:GetAvailableEServicesResponder:1).
  Representerar responsens informationsstruktur.

  Tjänsten redovisar vilka e-tjänster en vårdenhet (identifierad via HSA-ID) erbjuder
  (stödtjänst Erbjuden e-tjänst).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* availableEServices 0..* Base "availableEServicesType" "availableEServices"
* availableEServices.healthcare_facility 1..1 Base "healthcareFacilityInfoType" "healthcare_facility"
* availableEServices.healthcare_facility.healthcare_facility 1..1 string "Vårdenhetens hsa-id." "Vårdenhetens hsa-id."
* availableEServices.healthcare_facility.healthcare_facility_name 0..1 string "Vårdenhetens namn" "Vårdenhetens namn"
* availableEServices.eservice 0..* Base "eServiceType" "eservice"
* availableEServices.eservice.commonName 1..1 string "E-tjänstens(resursens) namn." "E-tjänstens(resursens) namn."
* availableEServices.eservice.description 1..1 string "description" "Information om e-tjänsten. Kan innehålla beskrivningar och villkor för användandet av tjänsten (riktad mot användare/patient)."
* availableEServices.eservice.resourceId 1..1 string "E-tjänstens id. Unikt id för e-tjänsten. Tjänsteproducentens unika id." "E-tjänstens id. Unikt id för e-tjänsten. Tjänsteproducentens unika id."
* availableEServices.eservice.securitylevel 0..1 code "Tjänstens krav på autentiseringsnivå AL (Assurance level/tillitsnivå ISO/IEC 29115)." "Tjänstens krav på autentiseringsnivå AL (Assurance level/tillitsnivå ISO/IEC 29115). Tillåtna värden: AL1, AL2, AL3, AL4."
* availableEServices.eservice.url 0..1 uri "URL till e-tjänst." "URL till e-tjänst."
* availableEServices.eservice.restrictions 0..1 Base "restrictionType" "restrictions"
* availableEServices.eservice.restrictions.eserviceAreaCode 0..1 Base "eServiceAreaCodeType" "eserviceAreaCode"
* availableEServices.eservice.restrictions.eserviceAreaCode.countycode 1..* string "Beskriver inom vilket län e-tjänsten erbjuds. E-tjänsten betjänar invånare i detta län." "Beskriver inom vilket län e-tjänsten erbjuds. E-tjänsten betjänar invånare i detta län."
* availableEServices.eservice.restrictions.eserviceAreaCode.municipalityCode 0..* string "Beskriver inom vilken kommun e-tjänsten erbjuds. E-tjänsten betjänar invånare i denna kommun." "Beskriver inom vilken kommun e-tjänsten erbjuds. E-tjänsten betjänar invånare i denna kommun."
* availableEServices.eservice.restrictions.eserviceAreaCode.municipalitySectionCode 0..* string "Beskriver inom vilken kommundelskod e-tjänsten erbjuds. E-tjänsten betjänar invånare i denna kommundel." "Beskriver inom vilken kommundelskod e-tjänsten erbjuds. E-tjänsten betjänar invånare i denna kommundel."
* availableEServices.eservice.restrictions.gender 0..1 string "E-tjänsten riktar sig endast till ett visst kön. 1 = Man 2 = Kvinna" "E-tjänsten riktar sig endast till ett visst kön. 1 = Man 2 = Kvinna"
* availableEServices.eservice.restrictions.listing 1..1 boolean "S= Kräver listning F = Kräver ej listning" "S= Kräver listning F = Kräver ej listning"
* availableEServices.eservice.restrictions.referal 1..1 boolean "S = Kräver remiss F = Kräver ej remiss" "S = Kräver remiss F = Kräver ej remiss"
* availableEServices.eservice.restrictions.referalTypeId 0..1 string "Definiera vilken typ av remiss e-tjänsten kräver." "Definiera vilken typ av remiss e-tjänsten kräver."
* availableEServices.eservice.restrictions.ageMin 0..1 integer "Ålderskrav min." "Ålderskrav min."
* availableEServices.eservice.restrictions.ageMax 0..1 integer "Ålder max." "Ålder max."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAvailableEServicesFieldDescriptions
