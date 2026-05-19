// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetCredentialsForPerson v2.2
// Genererad: 2026-05-19

Logical: GetCredentialsForPerson
Id: getcredentialsforperson
Title: "GetCredentialsForPerson"
Description: """
  Logisk modell för tjänstekontraktet GetCredentialsForPerson
  (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPerson:2).
  Identisk med GetCredentialsForPersonIncludingProtectedPerson förutom att information om
  skyddade personer aldrig returneras (fältet protectedPerson returneras aldrig).
"""
Characteristics: #can-be-target

* credentialInformation 0..* BackboneElement "Behörighetsegenskaper för sökt person"
  * givenName 0..1 string "Tilltalsnamn"
  * middleAndSurName 1..1 string "Personens mellannamn och efternamn"
  * personHsaId 1..1 string "Personens HSA-id"
  * healthCareProfessionalLicence 0..* string "Legitimerad yrkestitel i klartext"
  * healthCareProfessionalLicenceCode 0..* string "Kod för legitimerad yrkestitel"
  * healthCareProfessionalLicenceSpeciality 0..* BackboneElement "Specialistkoder kopplat till legitimerad yrkesgrupp"
    * healthCareProfessionalLicenceCode 1..1 string "Kod för legitimerad yrkestitel specialistkoden hör till"
    * specialityCode 1..1 string "Specialistkod"
    * specialityName 0..1 string "Specialitet i klartext"
  * occupationalCode 0..* string "Utökad yrkeskod"
  * personalIdentity 0..1 BackboneElement "Personens person- eller samordningsnummer (extended1)"
    * root 1..1 string "Typ av personnummer (OID)"
    * extension 1..1 string "Person- eller samordningsnummer"
  * healthcareProfessionalLicenseIdentityNumber 0..1 string "Personens HOSP-id"
  * personalPrescriptionCode 0..1 string "Personens förskrivarkod"
  * groupPrescriptionCode 0..* string "Gruppförskrivarkod"
  * nursePrescriptionRight 0..* BackboneElement "Förskrivningsrätt för barnmorska/sjuksköterska"
    * healthCareProfessionalLicence 1..1 string "Legitimerad yrkestitel (BM eller SJ)"
    * prescriptionRight 1..1 boolean "Personen har förskrivningsrätt"
  * hsaSystemRole 0..* BackboneElement "Individuella egenskaper för it-tjänster"
    * systemId 1..1 string "IT-tjänstens SystemId"
    * role 1..1 string "Personens roll inom IT-tjänsten"
  * paTitleCode 0..* string "Befattningskod"
  * feignedPerson 0..1 boolean "Personen är ett fingerat objekt"
  * commission 0..* BackboneElement "Vårdmedarbetaruppdrag personen är kopplad till"
    * commissionName 1..1 string "Vårdmedarbetaruppdragets namn"
    * commissionHsaId 1..1 string "Vårdmedarbetaruppdragets HSA-id"
    * commissionPurpose 1..1 string "Vårdmedarbetaruppdragets ändamål"
    * commissionRight 0..* BackboneElement "Vårdmedarbetaruppdragets rättigheter"
      * activity 1..1 string "Rättighet aktivitet"
      * informationClass 1..1 string "Rättighet informationstyp"
      * scope 1..1 string "Rättighet omfång"
    * pharmacyIdentifier 0..1 string "Unikt id för apotek"
    * feignedCommission 0..1 boolean "Vårdmedarbetaruppdraget är ett fingerat objekt"
    * healthCareUnitHsaId 0..1 string "HSA-id för vårdenhet enligt PDL"
    * healthCareUnitName 0..1 string "Vårdenhetens namn"
    * healthCareUnitStartDate 0..1 dateTime "Startdatum för vårdenhetens verksamhet"
    * healthCareUnitEndDate 0..1 dateTime "Slutdatum för vårdenhetens verksamhet"
    * feignedHealthCareUnit 0..1 boolean "Vårdenheten är ett fingerat objekt"
    * archivedHealthCareUnit 0..1 boolean "Vårdenheten är ett arkiverat objekt"
    * healthCareProviderHsaId 1..1 string "Vårdgivarens HSA-id"
    * healthCareProviderName 1..1 string "Vårdgivarens namn"
    * healthCareProviderOrgNo 1..1 string "Vårdgivarens organisationsnummer"
    * healthCareProviderStartDate 0..1 dateTime "Startdatum för vårdgivarens verksamhet"
    * healthCareProviderEndDate 0..1 dateTime "Slutdatum för vårdgivarens verksamhet"
    * feignedHealthCareProvider 0..1 boolean "Vårdgivaren är ett fingerat objekt"
    * archivedHealthCareProvider 0..1 boolean "Vårdgivaren är ett arkiverat objekt"
