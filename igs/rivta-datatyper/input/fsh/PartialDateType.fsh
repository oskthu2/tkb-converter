// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: PartialDateType
Id: PartialDateType
Title: "PartialDateType"
Description: "Datum med variabel noggrannhet. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* format 1..1 code "format" "Anger noggrannheten i value: YYYY, YYYYMM eller YYYYMMDD. Typ i schemat: DateTypeFormatEnum. Kodverket (DateTypeFormatEnum) definieras i respektive domänschema."
* value 1..1 string "value" "Datumvärdet med den noggrannhet som format anger. Typ i schemat: PartialDateValueType."
* value only PartialDateValueType
