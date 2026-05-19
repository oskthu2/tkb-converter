// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareUnit v2.0
// Genererad: 2026-05-19

Logical: GetHealthCareUnit
Id: gethealthcareunit
Title: "GetHealthCareUnit"
Description: """
  Logisk modell för tjänstekontraktet GetHealthCareUnit
  (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnit:2).
  Representerar responsens informationsstruktur — vårdenhet med tillhörande organisatorisk information.
"""
Characteristics: #can-be-target

* healthCareUnit 0..1 BackboneElement "Svarsobjekt med vårdenhetsinformation"
    """
    Aggregerat objekt med information om enheten, vårdenhet och vårdgivare.
    Kardinalitet: Valfri.
    """
  * healthCareUnitMemberHsaId 0..1 string "Enhetens (funktionens) HSA-id. Ref. hsaIdentity [R5]."
  * healthCareUnitMemberName 0..1 string "Enhetens (funktionens) namn. Ref. organisationsnamn (o), enhetsnamn (ou) resp. objektnamn (cn) [R5]."
  * healthCareUnitMemberPublicName 0..1 string "Publikt officiellt namn på enheten/funktionen."
  * healthCareUnitMemberStartDate 0..1 dateTime "Startdatum för enhetens (funktionens) verksamhet. Ref. startDate [R5]."
  * healthCareUnitMemberEndDate 0..1 dateTime "Slutdatum för enhetens (funktionens) verksamhet. Ref. endDate [R5]."
  * healthCareUnitHsaId 1..1 string "Vårdenhetens HSA-id. Ref. hsaIdentity [R5]."
  * unitIsHealthCareUnit 0..1 boolean "True, om enheten (funktionen) själv är en vårdenhet. Ref. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5]."
  * healthCareUnitName 1..1 string "Vårdenhetens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]."
  * healthCareUnitPublicName 1..1 string "Publikt officiellt namn på vårdenheten."
  * healthCareUnitStartDate 0..1 dateTime "Startdatum för vårdenhetens verksamhet. Ref. startDate [R5]."
  * healthCareUnitEndDate 0..1 dateTime "Slutdatum för vårdenhetens verksamhet. Ref. endDate [R5]."
  * healthCareProviderHsaId 1..1 string "Vårdgivarens HSA-id. Ref. hsaIdentity [R5]."
  * healthCareProviderName 1..1 string "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]."
  * healthCareProviderPublicName 1..1 string "Publikt officiellt namn på vårdgivaren."
  * healthCareProviderOrgNo 1..1 string "Vårdgivarens organisationsnummer. Ref. orgNo [R5]."
  * healthCareProviderStartDate 0..1 dateTime "Startdatum för vårdgivarens verksamhet. Ref. startDate [R5]."
  * healthCareProviderEndDate 0..1 dateTime "Slutdatum för vårdgivarens verksamhet. Ref. endDate [R5]."
  * feignedHealthCareUnitMember 0..1 boolean "true: om enheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]."
  * feignedHealthCareUnit 0..1 boolean "true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]."
  * feignedHealthCareProvider 0..1 boolean "true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]."
  * archivedHealthCareUnitMember 0..1 boolean "true: om enheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]."
  * archivedHealthCareUnit 0..1 boolean "true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]."
  * archivedHealthCareProvider 0..1 boolean "true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]."
