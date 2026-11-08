// Elementen genereras ur GetMiuForPersonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för orgmaster.hsa v1.0.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetMiuForPerson v1.0
// Genererad: 2026-09-26

Logical: GetMiuForPersonRequest
Id: getmiuforperson-request
Title: "GetMiuForPerson — Request"
Description: """
  Logisk modell för begäran i GetMiuForPerson
  (urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1, GetMiuForPersonType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* hsaIdentity 0..1 string "hsaIdentity" "hsaIdentity"
* personalIdentityNumber 0..1 string "personalIdentityNumber" "personalIdentityNumber"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only SearchBaseType
* obeys getmiuforpersonrequest-choice-1

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMiuForPersonRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getmiuforperson-request-hsaid-xor-pnr

Invariant: getmiuforpersonrequest-choice-1
Description: "Exakt ett av hsaIdentity, personalIdentityNumber ska anges (xs:choice i schemat)."
Expression: "hsaIdentity.exists() xor personalIdentityNumber.exists()"
Severity: #error

Invariant: getmiuforperson-request-hsaid-xor-pnr
Description: "Exakt ett av hsaIdentity och personalIdentityNumber ska anges (xs:choice i schemat)."
Expression: "hsaIdentity.exists() xor personalIdentityNumber.exists()"
Severity: #error
