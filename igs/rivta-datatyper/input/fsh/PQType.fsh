// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: PQType
Id: PQType
Title: "PQType"
Description: "Mätbart värde med enhet. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* value 1..1 string "value" "Mätvärdet. Typ i schemat: DecimalPrimitiveType."
* value only DecimalPrimitiveType
* unit 1..1 string "unit" "Enhet, enligt UCUM om inget annat anges. Typ i schemat: string."
