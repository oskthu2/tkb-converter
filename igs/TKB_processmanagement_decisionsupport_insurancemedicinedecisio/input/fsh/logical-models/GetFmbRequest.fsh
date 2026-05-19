// Genererad från TKB processmanagement:decisionsupport:insurancemedicinedecisionsupport v1.0
// Kontrakt: GetFmb v1.0 — Request
// Genererad: 2026-05-19

Logical: GetFmbRequest
Id: getfmb-request
Title: "GetFmb — Request"
Description: """
  Logisk modell för requestparametrar i GetFmb.
  (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1).
  Anges inga parametrar returneras samtliga aktiva underlag.
"""
Characteristics: #can-be-target

* underlagsId 0..* Identifier "Identifierare för ett specifikt beslutsunderlag"
  """
  Anger om endast ett eller ett antal underlag skall hämtas och i så fall vilka.
  Anges inget underlagsId returneras alla underlag.
  """
* diagnosKod 0..* CodeableConcept "Diagnoskod för filtrering av beslutsunderlag"
  """
  Anger om beslutsunderlag endast skall hämtas för en eller ett antal diagnoskoder.
  Anges med ICD-10-SE kodverket.
  Anges ingen diagnoskod returneras alla underlag.
  """
* avenEjAktiva 0..1 boolean "Anger om även inaktiva beslutsunderlag skall hämtas"
  """
  Anger om även ej aktiva beslutsunderlag skall hämtas.
  Anges ej attributet hämtas endast aktiva.
  """
