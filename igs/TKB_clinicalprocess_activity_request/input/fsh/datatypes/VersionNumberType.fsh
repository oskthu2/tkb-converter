// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: VersionNumberType
Parent: string
Id: VersionNumberType
Title: "VersionNumberType"
Description: "VersionNumberType (xs:simpleType i domänens schema.)"
* obeys local-versionnumbertype-pattern

Invariant: local-versionnumbertype-pattern
Description: "VersionNumberType ska följa mönstret i schemat: (0*[1-9]+|[1-9])\\d*"
Expression: "matches('^(?:(?:(0*[1-9]+|[1-9])\\\\d*))$')"
Severity: #error
