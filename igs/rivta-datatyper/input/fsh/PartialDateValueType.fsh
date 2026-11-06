// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Profile: PartialDateValueType
Parent: string
Id: PartialDateValueType
Title: "PartialDateValueType"
Description: "Datumvärde på formatet YYYY, YYYYMM eller YYYYMMDD. (xs:simpleType, restriktion av xs:string.)"
* ^version = "1.0.0"
* obeys rivta-partialdatevaluetype-pattern

Invariant: rivta-partialdatevaluetype-pattern
Description: "PartialDateValueType ska följa mönstret i schemat: -?([1-9][0-9]{3}|0[0-9]{3})((0[1-9]|1[0-2])((0[1-9]|[12][0-9]|3[01]))?)?"
Expression: "matches('^(?:(?:-?([1-9][0-9]{3}|0[0-9]{3})((0[1-9]|1[0-2])((0[1-9]|[12][0-9]|3[01]))?)?))$')"
Severity: #error
