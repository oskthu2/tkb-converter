// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: DeleteExtendedPatientRelation v1.0
// Namespace: urn:riv:ehr:patientrelationship:administration:DeleteExtendedPatientRelationResponder:1
// Genererad: 2026-05-19

Logical: DeleteExtendedPatientRelation
Id: deleteextendedpatientrelation
Title: "DeleteExtendedPatientRelation"
Description: """
  Logisk modell för tjänstekontraktet DeleteExtendedPatientRelation
  (RIV-TA urn:riv:ehr:patientrelationship:administration:DeleteExtendedPatientRelationResponder:1).
  Representerar responsens informationsstruktur — status för om makuleringen utfördes.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Svarskod för åtgärden"
* resultCode from ResultCodeVS (required)
* resultText 1..1 string "Optionellt felmeddelande (tomt om resultCode=OK)"
