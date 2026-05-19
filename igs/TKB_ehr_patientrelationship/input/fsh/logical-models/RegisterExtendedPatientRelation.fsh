// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: RegisterExtendedPatientRelation v1.0
// Namespace: urn:riv:ehr:patientrelationship:administration:RegisterExtendedPatientRelationResponder:1
// Genererad: 2026-05-19

Logical: RegisterExtendedPatientRelation
Id: registerextendedpatientrelation
Title: "RegisterExtendedPatientRelation"
Description: """
  Logisk modell för tjänstekontraktet RegisterExtendedPatientRelation
  (RIV-TA urn:riv:ehr:patientrelationship:administration:RegisterExtendedPatientRelationResponder:1).
  Representerar responsens informationsstruktur — status för om registreringen utfördes.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Svarskod för åtgärden"
  """
  Anger om registreringen lyckades. Alla koder förutom OK och INFO indikerar att åtgärden ej genomfördes.
  """
* resultCode from ResultCodeVS (required)
* resultText 1..1 string "Optionellt felmeddelande (tomt om resultCode=OK)"
