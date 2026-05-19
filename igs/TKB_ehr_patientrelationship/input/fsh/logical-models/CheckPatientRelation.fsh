// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: CheckPatientRelation v1.0
// Namespace: urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1
// Genererad: 2026-05-19

Logical: CheckPatientRelation
Id: checkpatientrelation
Title: "CheckPatientRelation"
Description: """
  Logisk modell för tjänstekontraktet CheckPatientRelation
  (RIV-TA urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1).
  Representerar responsens informationsstruktur — kontrollresultat om patientrelation finns för angiven aktör.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Svarskod och eventuellt resultatmeddelande"
* result.resultCode 1..1 code "Svarskod"
* result.resultCode from ResultCodeVS (required)
* result.resultText 1..1 string "Optionellt felmeddelande"

* hasPatientrelation 1..1 boolean "Anger om en giltig patientrelation gällande åtkomst för angiven aktör hittades"
  """
  true = giltig patientrelation finns, false = ingen giltig patientrelation finns.
  Med giltig avses ej utgången, ej makulerad och ej återkallad patientrelation.
  """
