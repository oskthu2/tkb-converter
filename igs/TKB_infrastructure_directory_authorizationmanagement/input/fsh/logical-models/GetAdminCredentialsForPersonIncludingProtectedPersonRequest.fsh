// Elementen genereras ur GetAdminCredentialsForPersonIncludingProtectedPersonResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetAdminCredentialsForPersonIncludingProtectedPerson v2.0 — Request
// Genererad: 2026-05-19

Logical: GetAdminCredentialsForPersonIncludingProtectedPersonRequest
Id: getadmincredentialsforpersonincludingprotectedperson-request
Title: "GetAdminCredentialsForPersonIncludingProtectedPerson — Request"
Description: """
  Logisk modell för requestparametrar i GetAdminCredentialsForPersonIncludingProtectedPerson.
  Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* personHsaId 0..1 string "personHsaId" "personHsaId"
* personalIdentityNumber 0..1 string "personalIdentityNumber" "personalIdentityNumber"
* authorizationScopeCode 0..1 string "authorizationScopeCode" "authorizationScopeCode"
* authorizationScopePropertyCode 0..1 string "authorizationScopePropertyCode" "authorizationScopePropertyCode"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
* obeys getadmincredentialsforpersonincludingprotectedperson-choice-1

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAdminCredentialsForPersonIncludingProtectedPersonRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getadmincredentialsprotected-request-hsaid-xor-pnr

Invariant: getadmincredentialsforpersonincludingprotectedperson-choice-1
Description: "Exakt ett av personHsaId, personalIdentityNumber ska anges (xs:choice i schemat)."
Expression: "personHsaId.exists() xor personalIdentityNumber.exists()"
Severity: #error

Invariant: getadmincredentialsprotected-request-hsaid-xor-pnr
Description: "Exakt ett av personHsaId och personalIdentityNumber ska anges."
Expression: "personHsaId.exists() xor personalIdentityNumber.exists()"
Severity: #error
