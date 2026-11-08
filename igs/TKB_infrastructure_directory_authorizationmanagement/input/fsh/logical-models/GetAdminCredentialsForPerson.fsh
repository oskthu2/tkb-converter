// Elementen genereras ur GetAdminCredentialsForPersonResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetAdminCredentialsForPerson v2.0
// Genererad: 2026-05-19

Logical: GetAdminCredentialsForPerson
Id: getadmincredentialsforperson
Title: "GetAdminCredentialsForPerson"
Description: """
  Logisk modell för tjänstekontraktet GetAdminCredentialsForPerson
  (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPerson:2).
  Identisk med GetAdminCredentialsForPersonIncludingProtectedPerson förutom att skyddade
  personer aldrig returneras (fältet protectedPerson returneras aldrig).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* adminCredentialInformation 0..* Base "AdminCredentialInformationType" "adminCredentialInformation"
* adminCredentialInformation.personHsaId 1..1 string "personHsaId" "personHsaId"
* adminCredentialInformation.givenName 0..1 string "givenName" "givenName"
* adminCredentialInformation.middleAndSurName 1..1 string "middleAndSurName" "middleAndSurName"
* adminCredentialInformation.protectedPerson 0..1 boolean "protectedPerson" "protectedPerson"
* adminCredentialInformation.feignedPerson 0..1 boolean "feignedPerson" "feignedPerson"
* adminCredentialInformation.authorizationScopeProperties 0..* Base "AuthorizationScopePropertyType" "authorizationScopeProperties"
* adminCredentialInformation.authorizationScopeProperties.authorizationScopeCode 1..1 string "authorizationScopeCode" "authorizationScopeCode"
* adminCredentialInformation.authorizationScopeProperties.authorizationScopeName 1..1 string "authorizationScopeName" "authorizationScopeName"
* adminCredentialInformation.authorizationScopeProperties.authorizationScopeDescription 0..1 string "authorizationScopeDescription" "authorizationScopeDescription"
* adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyCode 1..1 string "authorizationScopePropertyCode" "authorizationScopePropertyCode"
* adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyName 1..1 string "authorizationScopePropertyName" "authorizationScopePropertyName"
* adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyDescription 0..1 string "authorizationScopePropertyDescription" "authorizationScopePropertyDescription"
* adminCredentialInformation.authorizationScopeProperties.adminCommission 1..* Base "AdminCommissionType" "adminCommission"
* adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionHsaId 1..1 string "adminCommissionHsaId" "adminCommissionHsaId"
* adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionResponsibleOrganisation 1..1 string "adminCommissionResponsibleOrganisation" "adminCommissionResponsibleOrganisation"
* adminCredentialInformation.authorizationScopeProperties.adminCommission.sector 0..* Base "SectorType" "sector"
* adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.unitHsaId 1..1 string "unitHsaId" "unitHsaId"
* adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.sectorFlag 0..1 boolean "sectorFlag" "sectorFlag"
* adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.name 1..1 string "name" "name"
* adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.feignedUnit 0..1 boolean "feignedUnit" "feignedUnit"
* adminCredentialInformation.authorizationScopeProperties.adminCommission.feignedAdminCommission 0..1 boolean "feignedAdminCommission" "feignedAdminCommission"
