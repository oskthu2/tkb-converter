// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: UUIDType
Parent: string
Id: UUIDType
Title: "UUIDType"
Description: "UUIDType (xs:simpleType i domänens schema.)"
* obeys local-uuidtype-pattern

Invariant: local-uuidtype-pattern
Description: "UUIDType ska följa mönstret i schemat: [0-9a-fA-F]{8}-[0-9a-fA-F]{4}-4[0-9a-fA-F]{3}-[8-9a-bA-B][0-9a-fA-F]{3}-[0-9a-fA-F]{12}"
Expression: "matches('^(?:(?:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-4[0-9a-fA-F]{3}-[8-9a-bA-B][0-9a-fA-F]{3}-[0-9a-fA-F]{12}))$')"
Severity: #error
