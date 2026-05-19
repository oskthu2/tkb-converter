// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareUnitList v2.0
// Genererad: 2026-05-19

Logical: GetHealthCareUnitList
Id: gethealthcareunitlist
Title: "GetHealthCareUnitList"
Description: """
  Logisk modell för tjänstekontraktet GetHealthCareUnitList
  (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitList:2).
  Representerar responsens informationsstruktur — lista av vårdenheter för en angiven vårdgivare.
"""
Characteristics: #can-be-target

* healthCareUnitList 0..1 BackboneElement "Lista av vårdenheter för angiven vårdgivare"
    """
    Aggregerat objekt med information om vårdgivaren och dess ingående vårdenheter.
    Kardinalitet: Valfri.
    """
  * healthCareProviderHsaId 1..1 string "Vårdgivarens HSA-id. Ref. hsaIdentity [R5]."
  * healthCareProviderName 1..1 string "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]."
  * healthCareProviderPublicName 1..1 string "Publikt officiellt namn på vårdgivaren."
  * healthCareProviderOrgNo 1..1 string "Vårdgivarens organisationsnummer. Ref. orgNo [R5]."
  * healthCareProviderStartDate 0..1 dateTime "Startdatum för vårdgivarens verksamhet. Ref. startDate [R5]."
  * healthCareProviderEndDate 0..1 dateTime "Slutdatum för vårdgivarens verksamhet. Ref. endDate [R5]."
  * feignedHealthCareProvider 0..1 boolean "true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]."
  * archivedHealthCareProvider 0..1 boolean "true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]."
  * healthCareUnit 0..* BackboneElement "Ingående vårdenhet enligt PDL"
      """
      Lista av vårdenheter som tillhör vårdgivaren.
      Kardinalitet: Valfri, lista.
      """
    * healthCareUnitHsaId 1..1 string "HSA-identitet ingående enhet. Ref. hsaIdentity [R5]."
    * healthCareUnitName 1..1 string "Namn ingående enhet. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]."
    * healthCareUnitPublicName 1..1 string "Publikt officiellt namn på vårdenheten."
    * healthCareUnitStartDate 0..1 dateTime "Startdatum för vårdenhetens verksamhet. Ref. startDate [R5]."
    * healthCareUnitEndDate 0..1 dateTime "Slutdatum för vårdenhetens verksamhet. Ref. endDate [R5]."
    * feignedHealthCareUnit 0..1 boolean "true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]."
    * archivedHealthCareUnit 0..1 boolean "true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]."
