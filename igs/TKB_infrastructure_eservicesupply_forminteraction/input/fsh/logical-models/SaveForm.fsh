// Elementen genereras ur SaveFormResponder_2.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "2.1"
* comment 0..1 string "comment" "comment"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."

Logical: SaveFormRequest
Id: saveform-request
Title: "SaveForm — Request"
Description: "Logisk modell för requestparametrar i SaveForm."
Characteristics: #can-be-target

* ^version = "2.1"
* formId 1..1 string "formId" "formId"
* subjectOfCare 0..1 string "subjectOfCare" "Autentiserad invånare (personnummer). FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."
* actor 0..1 Base "ActorType" "actor"
* actor.actorId 1..1 IIType "actorId" "actorId"
* actor.actorType 1..1 code "actorType" "actorType Tillåtna värden: CITIZEN, GUARDIAN, CAREGIVER."
