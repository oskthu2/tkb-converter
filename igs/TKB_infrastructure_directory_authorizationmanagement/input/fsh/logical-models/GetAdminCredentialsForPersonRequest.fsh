// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetAdminCredentialsForPerson v2.0 — Request
// Genererad: 2026-05-19

Logical: GetAdminCredentialsForPersonRequest
Id: getadmincredentialsforperson-request
Title: "GetAdminCredentialsForPerson — Request"
Description: """
  Logisk modell för requestparametrar i GetAdminCredentialsForPerson.
  Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
"""
Characteristics: #can-be-target

* personHsaId 0..1 string "Unik identifierare för personen vars behörighetsegenskaper söks ut"
* personalIdentityNumber 0..1 string "Person-id för personen vars behörighetsegenskaper söks ut"
* authorizationScopeCode 0..1 string "Behörighetsområdeskod att filtrera på"
* authorizationScopePropertyCode 0..1 string "Kod för behörighetsområdesegenskap att filtrera på"
* searchBase 0..1 string "Sökbas (DN). Om ej angiven används c=SE."
* includeFeignedObject 0..1 boolean "true: leverera svar med fingerade objekt"
