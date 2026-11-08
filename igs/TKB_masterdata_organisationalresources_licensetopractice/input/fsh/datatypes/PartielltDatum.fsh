// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.

Profile: PartielltDatum
Parent: string
Id: PartielltDatum
Title: "PartielltDatum"
Description: "Partielltdatum är en begränsning av Datum. Denna typ tillåter formaten \"ÅÅÅÅ[MM[DD]]\" Dvs enbart år eller år och månad. (xs:simpleType i domänens schema.)"
* obeys local-partielltdatum-pattern

Invariant: local-partielltdatum-pattern
Description: "PartielltDatum ska följa mönstret i schemat: [1-2][0-9]{3,3}(((0[1-9])|(1[0-2]))(((0[1-9])|([1-2][0-9])|(3[0-1])))?)?"
Expression: "matches('^(?:(?:[1-2][0-9]{3,3}(((0[1-9])|(1[0-2]))(((0[1-9])|([1-2][0-9])|(3[0-1])))?)?))$')"
Severity: #error
