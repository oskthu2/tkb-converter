// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: DT
Parent: string
Id: DT
Title: "DT"
Description: "DT (xs:simpleType i domänens schema.)"
* obeys local-dt-pattern

Invariant: local-dt-pattern
Description: "DT ska följa mönstret i schemat: [1-9]{1}[0-9]{3}(0[1-9]{1}|1[0-2]{1})([0-2]{1}[0-9]{1}|3[0-1]{1})"
Expression: "matches('^(?:(?:[1-9]{1}[0-9]{3}(0[1-9]{1}|1[0-2]{1})([0-2]{1}[0-9]{1}|3[0-1]{1})))$')"
Severity: #error
