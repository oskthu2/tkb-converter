// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: TimeStampType
Parent: dateTime
Id: TimeStampType
Title: "TimeStampType"
Description: "DateTime avgränsat till YYYY-MM-DDThh:mm:ss (xs:simpleType i domänens schema.)"
* obeys local-timestamptype-pattern

Invariant: local-timestamptype-pattern
Description: "TimeStampType ska följa mönstret i schemat: \\d{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d"
Expression: "matches('^(?:(?:\\\\d{4}-\\\\d\\\\d-\\\\d\\\\dT\\\\d\\\\d:\\\\d\\\\d:\\\\d\\\\d))$')"
Severity: #error
