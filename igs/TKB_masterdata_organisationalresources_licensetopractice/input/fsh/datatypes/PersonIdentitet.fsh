// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: PersonIdentitet
Parent: string
Id: PersonIdentitet
Title: "PersonIdentitet"
Description: "PersonIdentitet (xs:simpleType i domänens schema.)"
* obeys local-personidentitet-pattern

Invariant: local-personidentitet-pattern
Description: "PersonIdentitet ska följa mönstret i schemat: \\d{12}"
Expression: "matches('^(?:(?:\\\\d{12}))$')"
Severity: #error
