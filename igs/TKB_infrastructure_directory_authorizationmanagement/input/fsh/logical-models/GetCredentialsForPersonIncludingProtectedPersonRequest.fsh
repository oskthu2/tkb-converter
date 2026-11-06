// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetCredentialsForPersonIncludingProtectedPerson v2.2 — Request
// Genererad: 2026-05-19

Logical: GetCredentialsForPersonIncludingProtectedPersonRequest
Id: getcredentialsforpersonincludingprotectedperson-request
Title: "GetCredentialsForPersonIncludingProtectedPerson — Request"
Description: """
  Logisk modell för requestparametrar i GetCredentialsForPersonIncludingProtectedPerson.
  Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
"""
Characteristics: #can-be-target

* ^version = "2.2"
* obeys getcredentialsprotected-request-hsaid-xor-pnr
* personHsaId 0..1 string "Unik identifierare för personen vars behörighetsegenskaper söks ut"
  """
  Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
  Ref. HSA-id (hsaIdentity) [R5].
  """
* personalIdentityNumber 0..1 string "Person-id för personen vars behörighetsegenskaper söks ut"
  """
  Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
  Ref. person-id (personalIdentityNumber) [R5].
  """
* searchBase 0..1 string "Sökbas (DN). Om ej angiven används c=SE."
* includeFeignedObject 0..1 boolean "true: leverera svar med fingerade objekt"
* profile 0..1 string "Profilval — 'extended1' returnerar även personalIdentity"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCredentialsForPersonIncludingProtectedPersonRequestFieldDescriptions

Invariant: getcredentialsprotected-request-hsaid-xor-pnr
Description: "Exakt ett av personHsaId och personalIdentityNumber ska anges."
Expression: "personHsaId.exists() xor personalIdentityNumber.exists()"
Severity: #error
