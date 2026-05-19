// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetHospCredentialsForPerson v1.0
// Genererad: 2026-05-19

Logical: GetHospCredentialsForPerson
Id: gethospcredentialsforperson
Title: "GetHospCredentialsForPerson"
Description: """
  Logisk modell för tjänstekontraktet GetHospCredentialsForPerson
  (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetHospCredentialsForPerson:1).
  Hämtar från Socialstyrelsen utlämnad behörighetsgrundande HOSP-information för angiven person.
"""
Characteristics: #can-be-target

* personalIdentityNumber 1..1 BackboneElement "Personens person- eller samordningsnummer"
  * root 1..1 string "OID för typ av personnummer"
    """
    För personnummer: 1.2.752.129.2.1.3.1, för samordningsnummer: 1.2.752.129.2.1.3.3.
    """
  * extension 1..1 string "Person- eller samordningsnummer"
* healthCareProfessionalLicence 0..* BackboneElement "Personens legitimerade yrkestitel(-lar)"
  * healthCareProfessionalLicenceCode 1..1 string "Kod för legitimerad yrkestitel (Socialstyrelsens kodverk 1.2.752.116.3.1.3)"
  * healtCareProfessionalLicenceName 1..1 string "Klartext för legitimerad yrkestitel"
* personalPrescriptionCode 0..1 string "Personlig förskrivarkod"
* healthCareProfessionalLicenceSpeciality 0..* BackboneElement "Specialistkod(er) kopplat till legitimerad yrkesgrupp"
  * healthCareProfessionalLicenceCode 1..1 string "Kod för legitimerad yrkestitel specialistkoden hör till"
  * specialityCode 1..1 string "Specialistkod"
  * specialityName 1..1 string "Specialitet i klartext"
* nursePrescriptionRight 0..* BackboneElement "Förskrivningsrätt för barnmorska/sjuksköterska"
  * healthCareProfessionalLicence 1..1 string "Legitimerad yrkestitel (BM eller SJ)"
  * prescriptionRight 1..1 boolean "Personen har förskrivningsrätt"
* healthcareProfessionalLicenseIdentityNumber 0..1 string "Personens HOSP-id"
* educationCode 0..* string "Utbildningskod (Socialstyrelsens kodverk HoSp utbildningskod 1.2.752.116.3.1.4)"
* restrictions 0..* BackboneElement "Restriktioner för legitimation"
  * healthCareProfessionalLicenceCode 1..1 string "Kod för legitimerad yrkestitel restriktionskoden hör till"
  * restrictionCode 1..1 string "Restriktionskod (Socialstyrelsens kodverk Behörighetsbegränsning 1.2.752.116.3.1.5)"
  * restrictionName 1..1 string "Restriktionskod i klartext"
* feignedPerson 0..1 boolean "Personen är ett fingerat objekt"
