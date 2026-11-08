// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: TidpunktType
Parent: string
Id: TidpunktType
Title: "TidpunktType"
Description: "Tidpunkt \"ÅÅÅÅMMDD\" som matchar begränsad ISO 8601. TTidszon skall ej anges (xs:simpleType i domänens schema.)"
* obeys local-tidpunkttype-pattern

Invariant: local-tidpunkttype-pattern
Description: "TidpunktType ska följa mönstret i schemat: [1-2][0-9]{3,3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))"
Expression: "matches('^(?:(?:[1-2][0-9]{3,3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))))$')"
Severity: #error
