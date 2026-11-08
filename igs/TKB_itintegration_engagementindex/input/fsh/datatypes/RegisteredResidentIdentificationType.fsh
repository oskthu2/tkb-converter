// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: RegisteredResidentIdentificationType
Parent: string
Id: RegisteredResidentIdentificationType
Title: "RegisteredResidentIdentificationType"
Description: "RegisteredResidentIdentificationType (xs:simpleType i domänens schema.)"
* obeys local-registeredresidentidentificationtype-pattern

Invariant: local-registeredresidentidentificationtype-pattern
Description: "RegisteredResidentIdentificationType ska följa mönstret i schemat: [0-9]{8}[0-9A-Zptf]{4}"
Expression: "matches('^(?:(?:[0-9]{8}[0-9A-Zptf]{4}))$')"
Severity: #error
