// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: TimeStampMedMillisekunder
Parent: dateTime
Id: TimeStampMedMillisekunder
Title: "TimeStampMedMillisekunder"
Description: "DateTime value is a string with the format \"YYYY-MM-DDThh:mm:ss\" that conforms to the constrained ISO 8601. Fraction of seconds and timezone precision is not required. (xs:simpleType i domänens schema.)"
* obeys local-timestampmedmillisekunder-pattern

Invariant: local-timestampmedmillisekunder-pattern
Description: "TimeStampMedMillisekunder ska följa mönstret i schemat: \\d{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d.\\d{3}"
Expression: "matches('^(?:(?:\\\\d{4}-\\\\d\\\\d-\\\\d\\\\dT\\\\d\\\\d:\\\\d\\\\d:\\\\d\\\\d.\\\\d{3}))$')"
Severity: #error
