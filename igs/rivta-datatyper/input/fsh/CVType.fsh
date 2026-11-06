// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: CVType
Id: CVType
Title: "CVType"
Description: "Referens till ett begrepp i ett externt kodverk. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* code 0..1 string "code" "Koden i kodverket. Typ i schemat: string."
* codeSystem 0..1 string "codeSystem" "Kodverkets OID. Typ i schemat: string."
* codeSystemName 0..1 string "codeSystemName" "Kodverkets namn i klartext. Typ i schemat: string."
* codeSystemVersion 0..1 string "codeSystemVersion" "Kodverkets version. Typ i schemat: string."
* displayName 0..1 string "displayName" "Kodens klartext enligt kodverket. Typ i schemat: string."
* originalText 0..1 string "originalText" "Fritext när begreppet inte kan anges som kod (då anges inte code och codeSystem). Typ i schemat: string."
