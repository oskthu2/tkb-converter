// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: LegalAuthenticatorType
Id: LegalAuthenticatorType
Title: "LegalAuthenticatorType"
Description: "Signatur och uppgifter om signerande person. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* signatureTime 1..1 string "signatureTime" "signatureTime Typ i schemat: TimeStampType."
* signatureTime only TimeStampType
* legalAuthenticatorHSAId 0..1 string "legalAuthenticatorHSAId" "legalAuthenticatorHSAId Typ i schemat: HSAIdType."
* legalAuthenticatorHSAId only HSAIdType
* legalAuthenticatorName 0..1 string "legalAuthenticatorName" "legalAuthenticatorName Typ i schemat: string."
* legalAuthenticatorRoleCode 0..1 CVType "legalAuthenticatorRoleCode" "legalAuthenticatorRoleCode Typ i schemat: CVType."
