// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetCredentialsForPerson v2.2 — Request
// Genererad: 2026-05-19

Logical: GetCredentialsForPersonRequest
Id: getcredentialsforperson-request
Title: "GetCredentialsForPerson — Request"
Description: """
  Logisk modell för requestparametrar i GetCredentialsForPerson.
  Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
"""
Characteristics: #can-be-target

* personHsaId 0..1 string "Unik identifierare för personen vars behörighetsegenskaper söks ut"
  """
  Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
  """
* personalIdentityNumber 0..1 string "Person-id för personen vars behörighetsegenskaper söks ut"
  """
  Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
  """
* searchBase 0..1 string "Sökbas (DN). Om ej angiven används c=SE."
* includeFeignedObject 0..1 boolean "true: leverera svar med fingerade objekt"
* profile 0..1 string "Profilval — 'extended1' returnerar även personalIdentity"
