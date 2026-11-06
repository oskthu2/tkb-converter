// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Profile: DecimalPrimitiveType
Parent: string
Id: DecimalPrimitiveType
Title: "DecimalPrimitiveType"
Description: "Decimaltal som bevarar signifikanta avslutande nollor. (xs:simpleType, restriktion av xs:string.)"
* ^version = "1.0.0"
* obeys rivta-decimalprimitivetype-pattern

Invariant: rivta-decimalprimitivetype-pattern
Description: "DecimalPrimitiveType ska följa mönstret i schemat: -?(0|[1-9][0-9]*)((\\.|,)[0-9]+)?([eE][+-]?[0-9]+)?"
Expression: "matches('^(?:(?:-?(0|[1-9][0-9]*)((\\\\.|,)[0-9]+)?([eE][+-]?[0-9]+)?))$')"
Severity: #error
