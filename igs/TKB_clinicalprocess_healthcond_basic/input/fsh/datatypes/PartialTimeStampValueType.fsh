// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: PartialTimeStampValueType
Parent: string
Id: PartialTimeStampValueType
Title: "PartialTimeStampValueType"
Description: "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss (xs:simpleType i domänens schema.)"
* obeys local-partialtimestampvaluetype-pattern

Invariant: local-partialtimestampvaluetype-pattern
Description: "PartialTimeStampValueType ska följa mönstret i schemat: -?([1-9][0-9]{3}|0[0-9]{3})((0[1-9]|1[0-2])((0[1-9]|[12][0-9]|3[01]))?(((0[0-9]|1[0-9]|2[0123]))?([0-5])([0-9])([0-5])([0-9]))?)?"
Expression: "matches('^(?:(?:-?([1-9][0-9]{3}|0[0-9]{3})((0[1-9]|1[0-2])((0[1-9]|[12][0-9]|3[01]))?(((0[0-9]|1[0-9]|2[0123]))?([0-5])([0-9])([0-5])([0-9]))?)?))$')"
Severity: #error
