// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: FrageIdType
Parent: string
Id: FrageIdType
Title: "FrageIdType"
Description: "FrageIdType (xs:simpleType i domänens schema.)"
* obeys local-frageidtype-pattern

Invariant: local-frageidtype-pattern
Description: "FrageIdType ska följa mönstret i schemat: [0-9]+"
Expression: "matches('^(?:(?:[0-9]+))$')"
Severity: #error
