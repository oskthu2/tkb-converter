// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: TelephoneNumberType
Parent: string
Id: TelephoneNumberType
Title: "TelephoneNumberType"
Description: "TelephoneNumberType (xs:simpleType i domänens schema.)"
* obeys local-telephonenumbertype-pattern

Invariant: local-telephonenumbertype-pattern
Description: "TelephoneNumberType ska följa mönstret i schemat: ([0-9])*"
Expression: "matches('^(?:(?:([0-9])*))$')"
Severity: #error
