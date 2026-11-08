// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: DelfrageIdType
Parent: string
Id: DelfrageIdType
Title: "DelfrageIdType"
Description: "DelfrageIdType (xs:simpleType i domänens schema.)"
* obeys local-delfrageidtype-pattern

Invariant: local-delfrageidtype-pattern
Description: "DelfrageIdType ska följa mönstret i schemat: [0-9]+\\.[0-9]+"
Expression: "matches('^(?:(?:[0-9]+\\\\.[0-9]+))$')"
Severity: #error
