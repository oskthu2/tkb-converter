// Elementen genereras ur GetCredentialsForPersonIncludingProtectedPersonResponder_2.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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
* personHsaId 0..1 string "personHsaId" "personHsaId"
* personalIdentityNumber 0..1 string "personalIdentityNumber" "personalIdentityNumber"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
* profile 0..1 string "profile" "profile"
* obeys getcredentialsforpersonincludingprotectedpersonreque-choice-1

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCredentialsForPersonIncludingProtectedPersonRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getcredentialsprotected-request-hsaid-xor-pnr

Invariant: getcredentialsforpersonincludingprotectedpersonreque-choice-1
Description: "Exakt ett av personHsaId, personalIdentityNumber ska anges (xs:choice i schemat)."
Expression: "personHsaId.exists() xor personalIdentityNumber.exists()"
Severity: #error

Invariant: getcredentialsprotected-request-hsaid-xor-pnr
Description: "Exakt ett av personHsaId och personalIdentityNumber ska anges."
Expression: "personHsaId.exists() xor personalIdentityNumber.exists()"
Severity: #error
