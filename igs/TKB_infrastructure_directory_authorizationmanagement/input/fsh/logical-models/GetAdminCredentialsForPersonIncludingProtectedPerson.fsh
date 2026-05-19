// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetAdminCredentialsForPersonIncludingProtectedPerson v2.0
// Genererad: 2026-05-19

Logical: GetAdminCredentialsForPersonIncludingProtectedPerson
Id: getadmincredentialsforpersonincludingprotectedperson
Title: "GetAdminCredentialsForPersonIncludingProtectedPerson"
Description: """
  Logisk modell för tjänstekontraktet GetAdminCredentialsForPersonIncludingProtectedPerson
  (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPersonIncludingProtectedPerson:2).
  Söker ut en persons administrativa behörighetsegenskaper inom ett visst Behörighetsområde,
  inklusive skyddade personer.
"""
Characteristics: #can-be-target

* adminCredentialInformation 0..* BackboneElement "Administrativa behörighetsegenskaper för sökt person"
  * personHsaId 1..1 string "Personens HSA-id"
  * givenName 0..1 string "Personens tilltalsnamn"
  * middleAndSurName 1..1 string "Personens mellannamn och efternamn"
  * protectedPerson 0..1 boolean "Personen har skyddade personuppgifter"
  * feignedPerson 0..1 boolean "Personen är ett fingerat objekt"
  * authorizationScopeProperties 0..* BackboneElement "Administrativa behörighetsegenskaper"
    * authorizationScopeCode 1..1 string "Behörighetsområdeskod"
    * authorizationScopeName 1..1 string "Behörighetsområdets namn"
    * authorizationScopeDescription 0..1 string "Behörighetsområdets beskrivning"
    * authorizationScopePropertyCode 1..1 string "Behörighetsområdesegenskap (kod)"
    * authorizationScopePropertyName 1..1 string "Behörighetsområdesegenskapens namn"
    * authorizationScopePropertyDescription 0..1 string "Behörighetsområdesegenskapens beskrivning"
    * adminCommission 1..* BackboneElement "Administrativt medarbetaruppdrag"
      * adminCommissionHsaId 1..1 string "HSA-id för det administrativa medarbetaruppdraget"
      * adminCommissionResponsibleOrganisation 1..1 string "Organisationsnummer för ansvarig organisation"
      * sector 0..* BackboneElement "Organisationsomfång för behörighetsområdesegenskapen"
        * unitHsaId 1..1 string "HSA-id för objektet i organisationsomfånget"
        * sectorFlag 0..1 boolean "True: objektets alla underliggande objekt ingår"
        * objectName 1..1 string "Namn på objektet i organisationsomfånget"
        * feignedUnit 0..1 boolean "Objektet är ett fingerat objekt"
      * feignedAdminCommission 0..1 boolean "Administrativt medarbetaruppdrag är ett fingerat objekt"
