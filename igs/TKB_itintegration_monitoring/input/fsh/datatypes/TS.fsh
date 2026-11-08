// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: TS
Parent: string
Id: TS
Title: "TS"
Description: "Regexp declaration for timestamp in the format: YYYYMMDDHHMMSS (xs:simpleType i domänens schema.)"
* obeys local-ts-pattern

Invariant: local-ts-pattern
Description: "TS ska följa mönstret i schemat: [1-9]{1}[0-9]{3}(0[1-9]{1}|1[0-2]{1})([0-2]{1}[0-9]{1}|3[0-1]{1})([0-1]{1}[0-9]{1}|2[0-3]{1})[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}"
Expression: "matches('^(?:(?:[1-9]{1}[0-9]{3}(0[1-9]{1}|1[0-2]{1})([0-2]{1}[0-9]{1}|3[0-1]{1})([0-1]{1}[0-9]{1}|2[0-3]{1})[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}))$')"
Severity: #error
