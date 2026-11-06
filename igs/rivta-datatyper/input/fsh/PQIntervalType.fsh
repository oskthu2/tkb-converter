// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: PQIntervalType
Id: PQIntervalType
Title: "PQIntervalType"
Description: "Intervall av mätbara värden med enhet. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* low 0..1 string "low" "Intervallets nedre gräns. Typ i schemat: DecimalPrimitiveType."
* low only DecimalPrimitiveType
* lowClosed 0..1 boolean "lowClosed" "Sant om nedre gränsen ingår i intervallet. Typ i schemat: boolean."
* high 0..1 string "high" "Intervallets övre gräns. Typ i schemat: DecimalPrimitiveType."
* high only DecimalPrimitiveType
* highClosed 0..1 boolean "highClosed" "Sant om övre gränsen ingår i intervallet. Typ i schemat: boolean."
* unit 1..1 string "unit" "Enhet för båda gränserna, enligt UCUM om inget annat anges. Typ i schemat: string."
