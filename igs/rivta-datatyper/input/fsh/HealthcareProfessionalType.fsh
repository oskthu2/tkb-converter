// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: HealthcareProfessionalType
Id: HealthcareProfessionalType
Title: "HealthcareProfessionalType"
Description: "Vård- och omsorgspersonal samt organisatorisk tillhörighet. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* authorTime 1..1 string "authorTime" "authorTime Typ i schemat: TimeStampType."
* authorTime only TimeStampType
* healthcareProfessionalHSAId 0..1 string "healthcareProfessionalHSAId" "healthcareProfessionalHSAId Typ i schemat: HSAIdType."
* healthcareProfessionalHSAId only HSAIdType
* healthcareProfessionalName 0..1 string "healthcareProfessionalName" "healthcareProfessionalName Typ i schemat: string."
* healthcareProfessionalRoleCode 0..1 CVType "healthcareProfessionalRoleCode" "healthcareProfessionalRoleCode Typ i schemat: CVType."
* healthcareProfessionalOrgUnit 0..1 OrgUnitType "healthcareProfessionalOrgUnit" "healthcareProfessionalOrgUnit Typ i schemat: OrgUnitType."
* healthcareProfessionalCareUnitHSAId 0..1 string "healthcareProfessionalCareUnitHSAId" "healthcareProfessionalCareUnitHSAId Typ i schemat: HSAIdType."
* healthcareProfessionalCareUnitHSAId only HSAIdType
* healthcareProfessionalCareGiverHSAId 0..1 string "healthcareProfessionalCareGiverHSAId" "healthcareProfessionalCareGiverHSAId Typ i schemat: HSAIdType."
* healthcareProfessionalCareGiverHSAId only HSAIdType
