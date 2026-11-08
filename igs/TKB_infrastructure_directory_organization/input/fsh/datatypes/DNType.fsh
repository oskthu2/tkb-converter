// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: DNType
Parent: string
Id: DNType
Title: "DNType"
Description: "DNType (xs:simpleType i domänens schema.)"
* obeys local-dntype-pattern

Invariant: local-dntype-pattern
Description: "DNType ska följa mönstret i schemat: ([OUDCNLoudcnl]{1,2}=[0-9\\p{L}\\p{Zs}\\-.]*,?)*"
Expression: "matches('^(?:(?:([OUDCNLoudcnl]{1,2}=[0-9\\\\p{L}\\\\p{Zs}\\\\-.]*,?)*))$')"
Severity: #error
