// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Profile: UUIDType
Parent: string
Id: UUIDType
Title: "UUIDType"
Description: "Universellt unik identifierare (UUID/GUID): 32 hexadecimala tecken, med eller utan bindestreck i mönstret 8-4-4-4-12. (xs:simpleType, restriktion av xs:string.)"
* ^version = "1.0.0"
* obeys rivta-uuidtype-pattern

Invariant: rivta-uuidtype-pattern
Description: "UUIDType ska följa mönstret i schemat: [A-Fa-f0-9]{32}|(\\{|\\()?[A-Fa-f0-9]{8}-([A-Fa-f0-9]{4}-){3}[A-Fa-f0-9]{12}(\\}|\\))?"
Expression: "matches('^(?:(?:[A-Fa-f0-9]{32}|(\\\\{|\\\\()?[A-Fa-f0-9]{8}-([A-Fa-f0-9]{4}-){3}[A-Fa-f0-9]{12}(\\\\}|\\\\))?))$')"
Severity: #error
