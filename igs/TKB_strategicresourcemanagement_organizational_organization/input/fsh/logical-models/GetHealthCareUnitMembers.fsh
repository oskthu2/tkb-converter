// Elementen genereras ur GetHealthCareUnitMembersResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.organizational.organization v2.0 (Genererat ur domänens XSD (senaste commit med innehåll, b349285d18c2).; scripts/xsd_to_ig.py)
// Kontrakt: GetHealthCareUnitMembers v2.0
// Genererad: 2026-09-26

Logical: GetHealthCareUnitMembers
Id: gethealthcareunitmembers
Title: "GetHealthCareUnitMembers — Response"
Description: """
  Logisk modell för svaret i GetHealthCareUnitMembers
  (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2, GetHealthCareUnitMembersResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* healthCareUnitMembers 0..1 Base "HealthCareUnitMembersType" "healthCareUnitMembers"
* healthCareUnitMembers.healthCareUnitName 1..1 string "healthCareUnitName" "healthCareUnitName"
* healthCareUnitMembers.healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
* healthCareUnitMembers.healthCareUnitStartDate 0..1 dateTime "healthCareUnitStartDate" "healthCareUnitStartDate"
* healthCareUnitMembers.healthCareUnitEndDate 0..1 dateTime "healthCareUnitEndDate" "healthCareUnitEndDate"
* healthCareUnitMembers.healthCareUnitPrescriptionCode 0..* string "healthCareUnitPrescriptionCode" "healthCareUnitPrescriptionCode"
* healthCareUnitMembers.telephoneNumber 0..* string "telephoneNumber" "telephoneNumber"
* healthCareUnitMembers.telephoneNumber only TelephoneNumberType
* healthCareUnitMembers.postalAddress 0..1 Base "AddressType" "postalAddress"
* healthCareUnitMembers.postalAddress.addressLine 1..* string "addressLine" "addressLine"
* healthCareUnitMembers.postalCode 0..1 string "postalCode" "postalCode"
* healthCareUnitMembers.feignedHealthCareUnit 0..1 boolean "feignedHealthCareUnit" "feignedHealthCareUnit"
* healthCareUnitMembers.archivedHealthCareUnit 0..1 boolean "archivedHealthCareUnit" "archivedHealthCareUnit"
* healthCareUnitMembers.healthCareProvider 1..1 Base "HealthCareProviderType" "healthCareProvider"
* healthCareUnitMembers.healthCareProvider.healthCareProviderName 1..1 string "healthCareProviderName" "healthCareProviderName"
* healthCareUnitMembers.healthCareProvider.healthCareProviderHsaId 1..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
* healthCareUnitMembers.healthCareProvider.healthCareProviderOrgNo 1..1 string "healthCareProviderOrgNo" "healthCareProviderOrgNo"
* healthCareUnitMembers.healthCareProvider.healthCareProviderStartDate 0..1 dateTime "healthCareProviderStartDate" "healthCareProviderStartDate"
* healthCareUnitMembers.healthCareProvider.healthCareProviderEndDate 0..1 dateTime "healthCareProviderEndDate" "healthCareProviderEndDate"
* healthCareUnitMembers.healthCareProvider.healthCareProviderPrescriptionCode 0..* string "healthCareProviderPrescriptionCode" "healthCareProviderPrescriptionCode"
* healthCareUnitMembers.healthCareProvider.telephoneNumber 0..* string "telephoneNumber" "telephoneNumber"
* healthCareUnitMembers.healthCareProvider.telephoneNumber only TelephoneNumberType
* healthCareUnitMembers.healthCareProvider.postalAddress 0..1 Base "AddressType" "postalAddress"
* healthCareUnitMembers.healthCareProvider.postalAddress.addressLine 1..* string "addressLine" "addressLine"
* healthCareUnitMembers.healthCareProvider.postalCode 0..1 string "postalCode" "postalCode"
* healthCareUnitMembers.healthCareProvider.feignedHealthCareProvider 0..1 boolean "feignedHealthCareProvider" "feignedHealthCareProvider"
* healthCareUnitMembers.healthCareProvider.archivedHealthCareProvider 0..1 boolean "archivedHealthCareProvider" "archivedHealthCareProvider"
* healthCareUnitMembers.healthCareUnitMember 0..* Base "HealthCareUnitMemberType" "healthCareUnitMember"
* healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberName 1..1 string "healthCareUnitMemberName" "healthCareUnitMemberName"
* healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberHsaId 1..1 string "healthCareUnitMemberHsaId" "healthCareUnitMemberHsaId"
* healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStartDate 0..1 dateTime "healthCareUnitMemberStartDate" "healthCareUnitMemberStartDate"
* healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberEndDate 0..1 dateTime "healthCareUnitMemberEndDate" "healthCareUnitMemberEndDate"
* healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPrescriptionCode 0..* string "healthCareUnitMemberPrescriptionCode" "healthCareUnitMemberPrescriptionCode"
* healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberTelephoneNumber 0..* string "healthCareUnitMemberTelephoneNumber" "healthCareUnitMemberTelephoneNumber"
* healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberTelephoneNumber only TelephoneNumberType
* healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberpostalAddress 0..1 Base "AddressType" "healthCareUnitMemberpostalAddress"
* healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberpostalAddress.addressLine 1..* string "addressLine" "addressLine"
* healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberpostalCode 0..1 string "healthCareUnitMemberpostalCode" "healthCareUnitMemberpostalCode"
* healthCareUnitMembers.healthCareUnitMember.feignedHealthCareUnitMember 0..1 boolean "feignedHealthCareUnitMember" "feignedHealthCareUnitMember"
* healthCareUnitMembers.healthCareUnitMember.archivedHealthCareUnitMember 0..1 boolean "archivedHealthCareUnitMember" "archivedHealthCareUnitMember"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHealthCareUnitMembersFieldDescriptions
