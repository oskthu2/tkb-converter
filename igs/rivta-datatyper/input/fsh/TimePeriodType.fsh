// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: TimePeriodType
Id: TimePeriodType
Title: "TimePeriodType"
Description: "Tidsintervall med minst en start- eller sluttidpunkt. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* start 0..1 string "start" "Starttidpunkt (ÅÅÅÅMMDDttmmss). Typ i schemat: TimeStampType."
* start only TimeStampType
* end 0..1 string "end" "Sluttidpunkt (ÅÅÅÅMMDDttmmss). Typ i schemat: TimeStampType."
* end only TimeStampType
