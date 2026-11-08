// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: SubjectOfCareIdType
Parent: string
Id: SubjectOfCareIdType
Title: "SubjectOfCareIdType"
Description: "Personnummer kan anges med eller utan sekelsiffror.Bindestreck är också valfritt (xs:simpleType i domänens schema.)"
* obeys local-subjectofcareidtype-pattern

Invariant: local-subjectofcareidtype-pattern
Description: "SubjectOfCareIdType ska följa mönstret i schemat: (([1-9]\\d{7})|(\\d{6}))[\\-]?\\d{4}"
Expression: "matches('^(?:(?:(([1-9]\\\\d{7})|(\\\\d{6}))[\\\\-]?\\\\d{4}))$')"
Severity: #error
