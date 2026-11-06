// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Profile: DateType
Parent: string
Id: DateType
Title: "DateType"
Description: "Datum på formatet YYYYMMDD utan tidszon. (xs:simpleType, restriktion av xs:string.)"
* ^version = "1.0.0"
* obeys rivta-datetype-pattern

Invariant: rivta-datetype-pattern
Description: "DateType ska följa mönstret i schemat: (19|20)\\d\\d(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])"
Expression: "matches('^(?:(?:(19|20)\\\\d\\\\d(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])))$')"
Severity: #error
