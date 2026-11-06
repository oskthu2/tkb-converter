// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Profile: TimeStampType
Parent: string
Id: TimeStampType
Title: "TimeStampType"
Description: "Tidpunkt på formatet YYYYMMDDhhmmss utan tidszon. (xs:simpleType, restriktion av xs:string.)"
* ^version = "1.0.0"
* obeys rivta-timestamptype-pattern

Invariant: rivta-timestamptype-pattern
Description: "TimeStampType ska följa mönstret i schemat: (19|20)\\d\\d(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])(0[0-9]|1[0-9]|2[0123])([0-5])([0-9])([0-5])([0-9])"
Expression: "matches('^(?:(?:(19|20)\\\\d\\\\d(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])(0[0-9]|1[0-9]|2[0123])([0-5])([0-9])([0-5])([0-9])))$')"
Severity: #error
