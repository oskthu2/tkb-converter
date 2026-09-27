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
* healthCareUnitMembers 0..1 BackboneElement "healthCareUnitMembers" "healthCareUnitMembers"
  * healthCareUnitName 1..1 string "healthCareUnitName" "healthCareUnitName"
  * healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
  * healthCareUnitStartDate 0..1 dateTime "healthCareUnitStartDate" "healthCareUnitStartDate"
  * healthCareUnitEndDate 0..1 dateTime "healthCareUnitEndDate" "healthCareUnitEndDate"
  * healthCareUnitPrescriptionCode 0..* string "healthCareUnitPrescriptionCode" "healthCareUnitPrescriptionCode"
  * telephoneNumber 0..* string "telephoneNumber" "telephoneNumber"
  * postalAddress 0..1 BackboneElement "postalAddress" "postalAddress"
    * addressLine 1..* string "addressLine" "addressLine"
  * postalCode 0..1 string "postalCode" "postalCode"
  * feignedHealthCareUnit 0..1 boolean "feignedHealthCareUnit" "feignedHealthCareUnit"
  * archivedHealthCareUnit 0..1 boolean "archivedHealthCareUnit" "archivedHealthCareUnit"
  * healthCareProvider 1..1 BackboneElement "healthCareProvider" "healthCareProvider"
    * healthCareProviderName 1..1 string "healthCareProviderName" "healthCareProviderName"
    * healthCareProviderHsaId 1..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
    * healthCareProviderOrgNo 1..1 string "healthCareProviderOrgNo" "healthCareProviderOrgNo"
    * healthCareProviderStartDate 0..1 dateTime "healthCareProviderStartDate" "healthCareProviderStartDate"
    * healthCareProviderEndDate 0..1 dateTime "healthCareProviderEndDate" "healthCareProviderEndDate"
    * healthCareProviderPrescriptionCode 0..* string "healthCareProviderPrescriptionCode" "healthCareProviderPrescriptionCode"
    * telephoneNumber 0..* string "telephoneNumber" "telephoneNumber"
    * postalAddress 0..1 BackboneElement "postalAddress" "postalAddress"
      * addressLine 1..* string "addressLine" "addressLine"
    * postalCode 0..1 string "postalCode" "postalCode"
    * feignedHealthCareProvider 0..1 boolean "feignedHealthCareProvider" "feignedHealthCareProvider"
    * archivedHealthCareProvider 0..1 boolean "archivedHealthCareProvider" "archivedHealthCareProvider"
  * healthCareUnitMember 0..* BackboneElement "healthCareUnitMember" "healthCareUnitMember"
    * healthCareUnitMemberName 1..1 string "healthCareUnitMemberName" "healthCareUnitMemberName"
    * healthCareUnitMemberHsaId 1..1 string "healthCareUnitMemberHsaId" "healthCareUnitMemberHsaId"
    * healthCareUnitMemberStartDate 0..1 dateTime "healthCareUnitMemberStartDate" "healthCareUnitMemberStartDate"
    * healthCareUnitMemberEndDate 0..1 dateTime "healthCareUnitMemberEndDate" "healthCareUnitMemberEndDate"
    * healthCareUnitMemberPrescriptionCode 0..* string "healthCareUnitMemberPrescriptionCode" "healthCareUnitMemberPrescriptionCode"
    * healthCareUnitMemberTelephoneNumber 0..* string "healthCareUnitMemberTelephoneNumber" "healthCareUnitMemberTelephoneNumber"
    * healthCareUnitMemberpostalAddress 0..1 BackboneElement "healthCareUnitMemberpostalAddress" "healthCareUnitMemberpostalAddress"
      * addressLine 1..* string "addressLine" "addressLine"
    * healthCareUnitMemberpostalCode 0..1 string "healthCareUnitMemberpostalCode" "healthCareUnitMemberpostalCode"
    * feignedHealthCareUnitMember 0..1 boolean "feignedHealthCareUnitMember" "feignedHealthCareUnitMember"
    * archivedHealthCareUnitMember 0..1 boolean "archivedHealthCareUnitMember" "archivedHealthCareUnitMember"
