// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: uuidType
Parent: string
Id: uuidType
Title: "uuidType"
Description: "uuidType (xs:simpleType i domänens schema.)"
* obeys local-uuidtype-pattern

Invariant: local-uuidtype-pattern
Description: "uuidType ska följa mönstret i schemat: ([0-9]|[a-f]|[A-F]){8}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){12}"
Expression: "matches('^(?:(?:([0-9]|[a-f]|[A-F]){8}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){12}))$')"
Severity: #error
