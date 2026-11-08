// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: SearchBaseType
Parent: string
Id: SearchBaseType
Title: "SearchBaseType"
Description: "SearchBaseType (xs:simpleType i domänens schema.)"
* obeys local-searchbasetype-pattern

Invariant: local-searchbasetype-pattern
Description: "SearchBaseType ska följa mönstret i schemat: ([OUDCNLoudcnl]{1,2}=[0-9\\p{L}\\p{Zs}\\-.]*,?)*"
Expression: "matches('^(?:(?:([OUDCNLoudcnl]{1,2}=[0-9\\\\p{L}\\\\p{Zs}\\\\-.]*,?)*))$')"
Severity: #error
