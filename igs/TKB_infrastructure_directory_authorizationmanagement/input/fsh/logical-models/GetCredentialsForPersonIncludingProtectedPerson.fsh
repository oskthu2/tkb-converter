// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetCredentialsForPersonIncludingProtectedPerson v2.2
// Genererad: 2026-05-19

Logical: GetCredentialsForPersonIncludingProtectedPerson
Id: getcredentialsforpersonincludingprotectedperson
Title: "GetCredentialsForPersonIncludingProtectedPerson"
Description: """
  Logisk modell för tjänstekontraktet GetCredentialsForPersonIncludingProtectedPerson
  (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPersonIncludingProtectedPerson:2).
  Representerar responsens informationsstruktur. Returnerar behörighetsgrundande egenskaper
  för angiven person inklusive person med skyddade personuppgifter.
"""
Characteristics: #can-be-target

* credentialInformation 0..* BackboneElement "Behörighetsegenskaper för sökt person"
  * givenName 0..1 string "Tilltalsnamn"
    """
    Tilltalsnamn. Endast ett litet antal personer saknar helt förnamn.
    Ref. tilltalsnamn (givenName, gn) [R5].
    """
  * middleAndSurName 1..1 string "Personens mellannamn och efternamn"
    """
    Namnen är separerade med mellanslag.
    Ref. mellannamn (middleName) och efternamn (sn, surName) [R5].
    """
  * personHsaId 1..1 string "Personens HSA-id"
    """
    Ref. HSA-id (hsaIdentity) [R5].
    """
  * healthCareProfessionalLicence 0..* string "Legitimerad yrkestitel i klartext"
    """
    Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk 1.2.752.116.3.1.3.
    """
  * healthCareProfessionalLicenceCode 0..* string "Kod för legitimerad yrkestitel"
    """
    Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk 1.2.752.116.3.1.3.
    """
  * healthCareProfessionalLicenceSpeciality 0..* BackboneElement "Specialistkoder kopplat till legitimerad yrkesgrupp"
    """
    Ref. Leg. yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5].
    """
    * healthCareProfessionalLicenceCode 1..1 string "Kod för legitimerad yrkestitel specialistkoden hör till"
    * specialityCode 1..1 string "Specialistkod"
      """
      Enligt något av Socialstyrelsens kodverk: 1.2.752.116.3.1.6 (Läkare 1992),
      1.2.752.116.3.1.7 (Läkare 1996), 1.2.752.116.3.1.8 (Läkare 2008),
      1.2.752.116.3.1.9 (Läkare 2015), 1.2.752.116.3.1.10 (Tandläkare 1993),
      1.2.752.116.3.1.15 (temporär behörighet 2016), 1.2.752.116.3.1.17 (Tandläkare 2017),
      1.2.752.116.3.1.20 (Läkare 2021).
      """
    * specialityName 0..1 string "Specialitet i klartext"
  * occupationalCode 0..* string "Utökad yrkeskod"
    """
    Används för icke-legitimerade medarbetares åtkomst till tjänster hos eHälsomyndigheten.
    """
  * personalIdentity 0..1 BackboneElement "Personens person- eller samordningsnummer"
    """
    Returneras när profil extended1 anges. Ref. Person-id (personalIdentityNumber) [R5].
    """
    * root 1..1 string "Typ av personnummer (OID)"
      """
      För personnummer: 1.2.752.129.2.1.3.1, för samordningsnummer: 1.2.752.129.2.1.3.3.
      """
    * extension 1..1 string "Person- eller samordningsnummer"
  * healthcareProfessionalLicenseIdentityNumber 0..1 string "Personens HOSP-id"
    """
    Ref. HOSP-id (hospIdentityNumber) [R5].
    """
  * personalPrescriptionCode 0..1 string "Personens förskrivarkod"
    """
    Ref. förskrivarkod (personalPrescriptionCode) [R5].
    """
  * groupPrescriptionCode 0..* string "Gruppförskrivarkod tilldelad av arbetsgivare"
    """
    Ref. gruppförskrivarkod (hsaGroupPrescriptionCode) [R5].
    """
  * nursePrescriptionRight 0..* BackboneElement "Förskrivningsrätt för barnmorska/sjuksköterska"
    """
    Ref. förskrivningsrätt för barnmorskor/sjuksköterskor (hsaSosNursePrescriptionRight) [R5].
    """
    * healthCareProfessionalLicence 1..1 string "Legitimerad yrkestitel med förskrivningsrätt (BM eller SJ)"
    * prescriptionRight 1..1 boolean "Personen har förskrivningsrätt"
  * hsaSystemRole 0..* BackboneElement "Individuella egenskaper för it-tjänster"
    """
    Ref. individuell egenskap för it-tjänster (hsaSystemRole) [R5].
    """
    * systemId 1..1 string "IT-tjänstens SystemId"
    * role 1..1 string "Personens roll inom IT-tjänsten"
  * paTitleCode 0..* string "Befattningskod"
    """
    Ref. befattningskod (paTitleCode) [R5].
    """
  * protectedPerson 0..1 boolean "Personen har skyddade personuppgifter"
    """
    true om person har skyddade personuppgifter. Saknas om personen inte har skyddade uppgifter.
    """
  * feignedPerson 0..1 boolean "Personen är ett fingerat objekt"
  * commission 0..* BackboneElement "Vårdmedarbetaruppdrag personen är kopplad till"
    * commissionName 1..1 string "Vårdmedarbetaruppdragets namn"
    * commissionHsaId 1..1 string "Vårdmedarbetaruppdragets HSA-id"
    * commissionPurpose 1..1 string "Vårdmedarbetaruppdragets ändamål"
    * commissionRight 0..* BackboneElement "Vårdmedarbetaruppdragets rättigheter"
      * activity 1..1 string "Rättighet aktivitet"
      * informationClass 1..1 string "Rättighet informationstyp"
      * scope 1..1 string "Rättighet omfång"
    * pharmacyIdentifier 0..1 string "Unikt id för apotek (hsaGlnCode + hsaBusinessCode)"
    * feignedCommission 0..1 boolean "Vårdmedarbetaruppdraget är ett fingerat objekt"
    * healthCareUnitHsaId 0..1 string "HSA-id för vårdenhet enligt PDL"
      """
      Saknas om uppdraget ligger direkt under Vårdgivaren.
      """
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
