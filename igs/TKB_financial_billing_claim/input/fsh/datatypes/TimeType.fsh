// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: TimeType
Parent: string
Id: TimeType
Title: "TimeType"
Description: "The time has the format hhmmss (xs:simpleType i domänens schema.)"
* obeys local-timetype-pattern

Invariant: local-timetype-pattern
Description: "TimeType ska följa mönstret i schemat: (0[0-9]|1[0-9]|2[0123])([0-5])([0-9])([0-5])([0-9])"
Expression: "matches('^(?:(?:(0[0-9]|1[0-9]|2[0123])([0-5])([0-9])([0-5])([0-9])))$')"
Severity: #error
