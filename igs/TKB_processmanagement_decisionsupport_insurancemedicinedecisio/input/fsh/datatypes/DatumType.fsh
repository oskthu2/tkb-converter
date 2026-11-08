// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: DatumType
Parent: string
Id: DatumType
Title: "DatumType"
Description: "Daum värdet är en sträng på formatet \"ÅÅÅÅ-MM-DD\" som matchar begränsad ISO 8601. Tid samt tidszon skall ej anges (xs:simpleType i domänens schema.)"
* obeys local-datumtype-pattern

Invariant: local-datumtype-pattern
Description: "DatumType ska följa mönstret i schemat: [1-2][0-9]{3,3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))"
Expression: "matches('^(?:(?:[1-2][0-9]{3,3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))))$')"
Severity: #error
