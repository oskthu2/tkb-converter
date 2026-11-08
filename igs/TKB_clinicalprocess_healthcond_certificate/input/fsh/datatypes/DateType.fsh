// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: DateType
Parent: date
Id: DateType
Title: "DateType"
Description: "Date avgränsat till YYYY-MM-DD (xs:simpleType i domänens schema.)"
* obeys local-datetype-pattern

Invariant: local-datetype-pattern
Description: "DateType ska följa mönstret i schemat: \\d{4}-\\d\\d-\\d\\d"
Expression: "matches('^(?:(?:\\\\d{4}-\\\\d\\\\d-\\\\d\\\\d))$')"
Severity: #error
