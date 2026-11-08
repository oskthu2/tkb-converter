// Elementen genereras ur GetEmployeeIncludingProtectedPersonResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.employee v2.0 (Genererad ur scheman i riv.strategicresourcemanagement.persons.employee, tagg 2.0_RC1; scripts/xsd_to_ig.py)
// Kontrakt: GetEmployeeIncludingProtectedPerson v2.0
// Genererad: 2026-09-26

Logical: GetEmployeeIncludingProtectedPersonRequest
Id: getemployeeincludingprotectedperson-request
Title: "GetEmployeeIncludingProtectedPerson — Request"
Description: """
  Logisk modell för begäran i GetEmployeeIncludingProtectedPerson
  (urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeIncludingProtectedPersonResponder:2, GetEmployeeIncludingProtectedPersonType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* personHsaId 0..1 string "personHsaId" "personHsaId"
* personalIdentityNumber 0..1 string "personalIdentityNumber" "personalIdentityNumber"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
* obeys getemployeeincludingprotectedpersonrequest-choice-1

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetEmployeeIncludingProtectedPersonRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getemployeeprotected-request-hsaid-xor-pnr

Invariant: getemployeeincludingprotectedpersonrequest-choice-1
Description: "Exakt ett av personHsaId, personalIdentityNumber ska anges (xs:choice i schemat)."
Expression: "personHsaId.exists() xor personalIdentityNumber.exists()"
Severity: #error

Invariant: getemployeeprotected-request-hsaid-xor-pnr
Description: "Exakt ett av personHsaId och personalIdentityNumber ska anges (xs:choice i schemat)."
Expression: "personHsaId.exists() xor personalIdentityNumber.exists()"
Severity: #error
