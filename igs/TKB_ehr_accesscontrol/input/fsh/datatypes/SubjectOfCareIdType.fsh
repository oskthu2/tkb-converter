// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: SubjectOfCareIdType
Parent: string
Id: SubjectOfCareIdType
Title: "SubjectOfCareIdType"
Description: "SubjectOfCareIdType (xs:simpleType i domänens schema.)"
* obeys local-subjectofcareidtype-pattern

Invariant: local-subjectofcareidtype-pattern
Description: "SubjectOfCareIdType ska följa mönstret i schemat: [0-9]{8}[0-9pPtTfF][0-9]{3}"
Expression: "matches('^(?:(?:[0-9]{8}[0-9pPtTfF][0-9]{3}))$')"
Severity: #error
