// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: IIType
Id: IIType
Title: "IIType"
Description: "Unik identifierare för ett objekt eller en entitet. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* root 1..1 string "root" "Identifierarens namnrymd, oftast ett OID (t.ex. 1.2.752.129.2.1.4.1 för HSA-id) eller ett UUID. Typ i schemat: string."
* extension 0..1 string "extension" "Identifierarens värde inom namnrymden i root, t.ex. själva HSA-id:t. Typ i schemat: string."
