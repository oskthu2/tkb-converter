// Elementen genereras ur GetCredentialsForPersonResponder_2.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "2.2"
* credentialInformation 0..* Base "CredentialInformationType" "credentialInformation"
* credentialInformation.givenName 0..1 string "givenName" "givenName"
* credentialInformation.middleAndSurName 1..1 string "middleAndSurName" "middleAndSurName"
* credentialInformation.personHsaId 1..1 string "personHsaId" "personHsaId"
* credentialInformation.healthCareProfessionalLicence 0..* string "healthCareProfessionalLicence" "healthCareProfessionalLicence"
* credentialInformation.personalPrescriptionCode 0..1 string "personalPrescriptionCode" "personalPrescriptionCode"
* credentialInformation.groupPrescriptionCode 0..* string "groupPrescriptionCode" "groupPrescriptionCode"
* credentialInformation.nursePrescriptionRight 0..* Base "NursePrescriptionRightType" "nursePrescriptionRight"
* credentialInformation.nursePrescriptionRight.healthCareProfessionalLicence 1..1 string "healthCareProfessionalLicence" "healthCareProfessionalLicence"
* credentialInformation.nursePrescriptionRight.prescriptionRight 1..1 boolean "prescriptionRight" "prescriptionRight"
* credentialInformation.hsaSystemRole 0..* Base "HsaSystemRoleType" "hsaSystemRole"
* credentialInformation.hsaSystemRole.systemId 1..1 string "systemId" "systemId"
* credentialInformation.hsaSystemRole.role 1..1 string "role" "role"
* credentialInformation.paTitleCode 0..* string "paTitleCode" "paTitleCode"
* credentialInformation.protectedPerson 0..1 boolean "protectedPerson" "protectedPerson"
* credentialInformation.commission 0..* Base "CommissionType" "commission"
* credentialInformation.commission.commissionName 1..1 string "commissionName" "commissionName"
* credentialInformation.commission.commissionHsaId 1..1 string "commissionHsaId" "commissionHsaId"
* credentialInformation.commission.commissionPurpose 1..1 string "commissionPurpose" "commissionPurpose"
* credentialInformation.commission.commissionRight 0..* Base "CommissionRightType" "commissionRight"
* credentialInformation.commission.commissionRight.activity 1..1 string "activity" "activity"
* credentialInformation.commission.commissionRight.informationClass 1..1 string "informationClass" "informationClass"
* credentialInformation.commission.commissionRight.scope 1..1 string "scope" "scope"
* credentialInformation.commission.healthCareUnitHsaId 0..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
* credentialInformation.commission.healthCareUnitName 0..1 string "healthCareUnitName" "healthCareUnitName"
* credentialInformation.commission.healthCareUnitStartDate 0..1 dateTime "healthCareUnitStartDate" "healthCareUnitStartDate"
* credentialInformation.commission.healthCareUnitEndDate 0..1 dateTime "healthCareUnitEndDate" "healthCareUnitEndDate"
* credentialInformation.commission.healthCareProviderHsaId 1..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
* credentialInformation.commission.healthCareProviderName 1..1 string "healthCareProviderName" "healthCareProviderName"
* credentialInformation.commission.healthCareProviderOrgNo 1..1 string "healthCareProviderOrgNo" "healthCareProviderOrgNo"
* credentialInformation.commission.healthCareProviderStartDate 0..1 dateTime "healthCareProviderStartDate" "healthCareProviderStartDate"
* credentialInformation.commission.healthCareProviderEndDate 0..1 dateTime "healthCareProviderEndDate" "healthCareProviderEndDate"
* credentialInformation.commission.feignedHealthCareProvider 0..1 boolean "feignedHealthCareProvider" "feignedHealthCareProvider"
* credentialInformation.commission.feignedHealthCareUnit 0..1 boolean "feignedHealthCareUnit" "feignedHealthCareUnit"
* credentialInformation.commission.feignedCommission 0..1 boolean "feignedCommission" "feignedCommission"
* credentialInformation.commission.archivedHealthCareProvider 0..1 boolean "archivedHealthCareProvider" "archivedHealthCareProvider"
* credentialInformation.commission.archivedHealthCareUnit 0..1 boolean "archivedHealthCareUnit" "archivedHealthCareUnit"
* credentialInformation.commission.pharmacyIdentifier 0..1 string "pharmacyIdentifier" "pharmacyIdentifier"
* credentialInformation.feignedPerson 0..1 boolean "feignedPerson" "feignedPerson"
* credentialInformation.healthCareProfessionalLicenceCode 0..* string "healthCareProfessionalLicenceCode" "healthCareProfessionalLicenceCode"
* credentialInformation.healthCareProfessionalLicenceSpeciality 0..* Base "HCPSpecialityCodesType" "healthCareProfessionalLicenceSpeciality"
* credentialInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicenceCode 1..1 string "healthCareProfessionalLicenceCode" "healthCareProfessionalLicenceCode"
* credentialInformation.healthCareProfessionalLicenceSpeciality.specialityCode 1..1 string "specialityCode" "specialityCode"
* credentialInformation.healthCareProfessionalLicenceSpeciality.specialityName 1..1 string "specialityName" "specialityName"
* credentialInformation.occupationalCode 0..* string "occupationalCode" "occupationalCode"
* credentialInformation.personalIdentity 0..1 IIType "personalIdentity" "personalIdentity"
* credentialInformation.healthcareProfessionalLicenseIdentityNumber 0..1 string "healthcareProfessionalLicenseIdentityNumber" "healthcareProfessionalLicenseIdentityNumber"
