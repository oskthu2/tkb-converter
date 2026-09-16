// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareProvider v1.0
// Genererad: 2026-09-16 (kompletterad — saknades i ursprunglig migrering, upptäckt via check_links.py)

Logical: GetHealthCareProvider
Id: gethealthcareprovider
Title: "GetHealthCareProvider"
Description: """
  Logisk modell för tjänstekontraktet GetHealthCareProvider
  (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareProvider:1).
  Söker ut och returnerar information om en vårdgivare. Representerar responsens
  informationsstruktur.
"""
Characteristics: #can-be-target

* healthCareProvider 0..* BackboneElement "Svarsobjekt med vårdgivarinformation"
  * healthCareProviderHsaId 1..1 string "Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5]."
  * healthCareProviderName 1..1 string "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]."
  * healthCareProviderOrgNo 1..1 string "Vårdgivarens organisationsnummer. Ref. organisationsnummer (orgNo) [R5]."
  * healthCareProviderStartDate 0..1 dateTime "Startdatum för vårdgivarens verksamhet. Ref. startdatum (startDate) [R5]."
  * healthCareProviderEndDate 0..1 dateTime "Slutdatum för vårdgivarens verksamhet. Ref. slutdatum (endDate) [R5]."
  * feignedHealthCareProvider 0..1 boolean "true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]."
  * archivedHealthCareProvider 0..1 boolean "true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]."
