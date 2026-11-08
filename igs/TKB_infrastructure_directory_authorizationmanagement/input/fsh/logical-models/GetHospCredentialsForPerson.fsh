// Elementen genereras ur GetHospCredentialsForPersonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* personalIdentityNumber 1..1 IIType "personalIdentityNumber" "personalIdentityNumber"
* healthCareProfessionalLicence 0..* Base "HealthCareProfessionalLicenceType" "healthCareProfessionalLicence"
* healthCareProfessionalLicence.healthCareProfessionalLicenceCode 1..1 string "healthCareProfessionalLicenceCode" "healthCareProfessionalLicenceCode"
* healthCareProfessionalLicence.healthCareProfessionalLicenceName 1..1 string "healthCareProfessionalLicenceName" "healthCareProfessionalLicenceName"
* personalPrescriptionCode 0..1 string "personalPrescriptionCode" "personalPrescriptionCode"
* healthCareProfessionalLicenceSpeciality 0..* Base "HCPSpecialityCodesType" "healthCareProfessionalLicenceSpeciality"
* healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicenceCode 1..1 string "healthCareProfessionalLicenceCode" "healthCareProfessionalLicenceCode"
* healthCareProfessionalLicenceSpeciality.specialityCode 1..1 string "specialityCode" "specialityCode"
* healthCareProfessionalLicenceSpeciality.specialityName 1..1 string "specialityName" "specialityName"
* nursePrescriptionRight 0..* Base "NursePrescriptionRightType" "nursePrescriptionRight"
* nursePrescriptionRight.healthCareProfessionalLicence 1..1 string "healthCareProfessionalLicence" "healthCareProfessionalLicence"
* nursePrescriptionRight.prescriptionRight 1..1 boolean "prescriptionRight" "prescriptionRight"
* healthcareProfessionalLicenseIdentityNumber 0..1 string "healthcareProfessionalLicenseIdentityNumber" "healthcareProfessionalLicenseIdentityNumber"
* educationCode 0..* string "educationCode" "educationCode"
* restrictions 0..* Base "RestrictionType" "restrictions"
* restrictions.healthCareProfessionalLicenceCode 1..1 string "healthCareProfessionalLicenceCode" "healthCareProfessionalLicenceCode"
* restrictions.restrictionCode 1..1 string "restrictionCode" "restrictionCode"
* restrictions.restrictionName 1..1 string "restrictionName" "restrictionName"
* feignedPerson 0..1 boolean "feignedPerson" "feignedPerson"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHospCredentialsForPersonFieldDescriptions
