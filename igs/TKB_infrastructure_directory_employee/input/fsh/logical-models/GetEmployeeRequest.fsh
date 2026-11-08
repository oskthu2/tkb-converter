// Elementen genereras ur GetEmployeeResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:employee v4.0
// Kontrakt: GetEmployee v4.0 — Request
// Genererad: 2026-05-19

Logical: GetEmployeeRequest
Id: getemployee-request
Title: "GetEmployee — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetEmployee
  (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4).
  Är identisk med GetEmployeeIncludingProtectedPersonRequest förutom att
  skyddade personer aldrig returneras.
  OBS: Exakt ett av fälten personHsaId och personalIdentityNumber ska anges (*1).
"""
Characteristics: #can-be-target

* ^version = "4.0"
* personHsaId 0..1 string "personHsaId" "personHsaId"
* personalIdentityNumber 0..1 string "personalIdentityNumber" "personalIdentityNumber"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
* profile 0..1 string "profile" "profile"
* obeys getemployeerequest-choice-1

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getemployee-request-hsaid-xor-pnr

Invariant: getemployeerequest-choice-1
Description: "Exakt ett av personHsaId, personalIdentityNumber ska anges (xs:choice i schemat)."
Expression: "personHsaId.exists() xor personalIdentityNumber.exists()"
Severity: #error

Invariant: getemployee-request-hsaid-xor-pnr
Description: "Exakt ett av personHsaId och personalIdentityNumber ska anges."
Expression: "personHsaId.exists() xor personalIdentityNumber.exists()"
Severity: #error
