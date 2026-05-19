// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: CancelExtendedPatientRelation v1.0
// Namespace: urn:riv:ehr:patientrelationship:administration:CancelExtendedPatientRelationResponder:1
// Genererad: 2026-05-19

Logical: CancelExtendedPatientRelation
Id: cancelextendedpatientrelation
Title: "CancelExtendedPatientRelation"
Description: """
  Logisk modell för tjänstekontraktet CancelExtendedPatientRelation
  (RIV-TA urn:riv:ehr:patientrelationship:administration:CancelExtendedPatientRelationResponder:1).
  Representerar responsens informationsstruktur — status för om återkallelsen utfördes.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Svarskod för åtgärden"
* resultCode from ResultCodeVS (required)
* resultText 1..1 string "Optionellt felmeddelande (tomt om resultCode=OK)"
