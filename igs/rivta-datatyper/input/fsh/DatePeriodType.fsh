// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: DatePeriodType
Id: DatePeriodType
Title: "DatePeriodType"
Description: "Datumintervall med minst ett start- eller slutdatum. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* start 0..1 string "start" "Startdatum (ÅÅÅÅMMDD). Typ i schemat: DateType."
* start only DateType
* end 0..1 string "end" "Slutdatum (ÅÅÅÅMMDD). Typ i schemat: DateType."
* end only DateType
