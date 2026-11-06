// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: ResultType
Id: ResultType
Title: "ResultType"
Description: "Resultatkod och valfri text för logiska fel. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* resultCode 1..1 code "resultCode" "Resultatkod: OK, INFO eller ERROR. Typ i schemat: ResultCodeEnum. Kodverket (ResultCodeEnum) definieras i respektive domänschema."
* resultText 0..1 string "resultText" "Förklarande text till resultatkoden. Typ i schemat: string."
