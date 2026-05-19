// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: CancelForm v2.0
// Genererad: 2026-05-19

Logical: CancelForm
Id: cancelform
Title: "CancelForm"
Description: """
  Logisk modell för tjänstekontraktet CancelForm
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CancelForm:2).
  Representerar responsens informationsstruktur — signalerar om avbrytningen lyckades.
"""
Characteristics: #can-be-target

* resultCode 1..1 CodeableConcept "Resultatkod" "Objekt för att signalera status på operationen."
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar" "Attribut för felsignalering. Skall kunna visas för slutanvändaren."

Logical: CancelFormRequest
Id: cancelform-request
Title: "CancelForm — Request"
Description: "Logisk modell för requestparametrar i CancelForm."
Characteristics: #can-be-target

* formID 1..1 Identifier "Formulär-id" "Formulärets unika id."
* subjectOfCare 0..1 Identifier "Personnummer" "Starkt autentiserad användares personnummer."
