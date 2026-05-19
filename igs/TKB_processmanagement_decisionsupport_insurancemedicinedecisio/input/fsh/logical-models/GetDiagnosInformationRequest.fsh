// Genererad från TKB processmanagement:decisionsupport:insurancemedicinedecisionsupport v1.0
// Kontrakt: GetDiagnosInformation v1.0 — Request
// Genererad: 2026-05-19

Logical: GetDiagnosInformationRequest
Id: getdiagnosinformation-request
Title: "GetDiagnosInformation — Request"
Description: """
  Logisk modell för requestparametrar i GetDiagnosInformation.
  (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1).
  Anges ej parametern diagnosKod returneras diagnosinformation för alla diagnoskoder.
"""
Characteristics: #can-be-target

* diagnosKod 0..* CodeableConcept "Diagnoskod för filtrering av diagnosinformation"
  """
  Anger om endast diagnosinformation skall hämtas för en eller ett antal diagnoskoder.
  Anges ej parametern returneras diagnosinformation för alla diagnoskoder.
  """
* avenEjAktiva 0..1 boolean "Anger om även inaktiv diagnosinformation skall hämtas"
  """
  Anger om även ej aktiv diagnosinformation skall hämtas.
  Anges ej villkoret returneras endast aktiva.
  """
