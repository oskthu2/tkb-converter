// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: OID
Parent: string
Id: OID
Title: "OID"
Description: "OID (xs:simpleType i domänens schema.)"
* obeys local-oid-pattern

Invariant: local-oid-pattern
Description: "OID ska följa mönstret i schemat: [0-9][0-9.]*"
Expression: "matches('^(?:(?:[0-9][0-9.]*))$')"
Severity: #error
