// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: ActorType
Id: ActorType
Title: "ActorType"
Description: "Medarbetare i vård och omsorg (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* hsaId 0..1 string "hsaId" "hsaId Typ i schemat: HSAIdType."
* hsaId only HSAIdType
* personName 0..1 string "personName" "personName Typ i schemat: string."
* personTelecom 0..1 string "personTelecom" "personTelecom Typ i schemat: string."
* personEmail 0..1 string "personEmail" "personEmail Typ i schemat: string."
* personAddress 0..1 string "personAddress" "personAddress Typ i schemat: string."
