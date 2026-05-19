// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: SaveForm v2.1
// Genererad: 2026-05-19

Logical: SaveForm
Id: saveform
Title: "SaveForm"
Description: """
  Logisk modell för tjänstekontraktet SaveForm
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveForm:2).
  Representerar responsens informationsstruktur — signalerar om formuläravslutet lyckades.
"""
Characteristics: #can-be-target

* resultCode 1..1 CodeableConcept "Resultatkod" "Signalerar status på operationen (OK, INFO, ERROR)."
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar" "Attribut för felsignalering. Skall kunna visas för slutanvändaren."

Logical: SaveFormRequest
Id: saveform-request
Title: "SaveForm — Request"
Description: "Logisk modell för requestparametrar i SaveForm."
Characteristics: #can-be-target

* formID 1..1 Identifier "Formulär-id" "Formulärets ID."
* subjectOfCare 0..1 Identifier "Personnummer" "Starkt autentiserad användares personnummer."
* actor 0..1 BackboneElement "Aktör" "Aktören kan vara invånaren/patienten själv, vårdnadshavare eller vårdpersonal."
  * actorType 1..1 string "Aktörstyp" "Typ av aktör."
  * actorId 0..1 Identifier "Aktörs-id" "Identifierare för aktören."
