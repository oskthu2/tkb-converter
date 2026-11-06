// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: PersonIdType
Id: PersonIdType
Title: "PersonIdType"
Description: "Identifierare för en person och typ av identifierare. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* id 1..1 string "id" "Personidentifieraren, t.ex. ett personnummer (ÅÅÅÅMMDDNNNN). Typ i schemat: string."
* type 1..1 string "type" "OID för typ av identifierare, t.ex. 1.2.752.129.2.1.3.1 (personnummer) eller 1.2.752.129.2.1.3.3 (samordningsnummer). Typ i schemat: string."
