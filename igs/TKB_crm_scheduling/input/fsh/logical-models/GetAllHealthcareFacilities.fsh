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

* healthcareFacilityInfos 0..* BackboneElement "Lista med tillgängliga mottagningar/vårdenheter"
    """
    Lista med tillgängliga mottagningar/vårdenheter (HealthcareFacilityInfoType).
    Kardinalitet: Valfri, lista.
    """
  * healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
      """
      HSA-id för mottagning/vårdenhet.
      Kardinalitet: Obligatorisk.
      """
  * healthcare_facility_name 0..1 string "Vårdenhetens föredragna namn"
      """
      Vårdenhetens föredragna namn vid visning för användare (i förhållande till HSA-katalogens innehåll).
      Kardinalitet: Valfri.
      """
