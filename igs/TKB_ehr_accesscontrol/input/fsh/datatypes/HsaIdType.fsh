// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: HsaIdType
Parent: string
Id: HsaIdType
Title: "HsaIdType"
Description: "HsaIdType (xs:simpleType i domänens schema.)"
* obeys local-hsaidtype-pattern

Invariant: local-hsaidtype-pattern
Description: "HsaIdType ska följa mönstret i schemat: [(\\p{L})0-9\\-]*"
Expression: "matches('^(?:(?:[(\\\\p{L})0-9\\\\-]*))$')"
Severity: #error
