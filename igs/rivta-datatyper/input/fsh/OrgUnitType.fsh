// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: OrgUnitType
Id: OrgUnitType
Title: "OrgUnitType"
Description: "Identitets-, kontakt- och adressuppgifter för en organisationsenhet. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* orgUnitHSAId 0..1 string "orgUnitHSAId" "orgUnitHSAId Typ i schemat: HSAIdType."
* orgUnitHSAId only HSAIdType
* orgUnitName 0..1 string "orgUnitName" "orgUnitName Typ i schemat: string."
* orgUnitTelecom 0..1 string "orgUnitTelecom" "orgUnitTelecom Typ i schemat: string."
* orgUnitEmail 0..1 string "orgUnitEmail" "orgUnitEmail Typ i schemat: string."
* orgUnitAddress 0..1 string "orgUnitAddress" "orgUnitAddress Typ i schemat: string."
* orgUnitLocation 0..1 string "orgUnitLocation" "orgUnitLocation Typ i schemat: string."
