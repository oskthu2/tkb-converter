// Elementen genereras ur BirthRegistrationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för healthcertificate.lifeline v1.0 (fält ur XSD, se TKB avsnitt 3; scripts/xsd_to_ig.py)
// Kontrakt: BirthRegistration v1.0
// Genererad: 2026-09-26

Logical: BirthRegistration
Id: birthregistration
Title: "BirthRegistration — Response"
Description: """
  Logisk modell för svaret i BirthRegistration
  (urn:riv:healthcertificate:lifeline:BirthRegistrationResponder:1, BirthRegistrationResponseTYPE).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* FodelsesvarId 1..1 string "FodelsesvarId" "FodelsesvarId"
* AnmalningsId 1..1 string "AnmalningsId" "AnmalningsId"
* PersonNummer 0..1 string "Tilldelat personnummer" "Tilldelat personnummer"
* Meddelande 0..1 Base "MeddelandeTYPE" "Indikerar orsaken till att personnummer ej tilldelats."
* Meddelande.AnmalanMottagen 1..1 string "Anger om anmälan är mottagen av Skatteverket eller ej. En mottagen anmälan SKALL EJ sändas in igen." "Anger om anmälan är mottagen av Skatteverket eller ej. En mottagen anmälan SKALL EJ sändas in igen."
* Meddelande.MeddelandeKod 1..1 integer "Kod som indikerar orsaken till att personnummer ej returneras. datatyp = number" "Kod som indikerar orsaken till att personnummer ej returneras. datatyp = number"
* Meddelande.MeddelandeText 1..1 string "Text som ger ytterligare information om ev. felorsak. Endast avsedd att nyttjas vid utveckling/felsökning" "Text som ger ytterligare information om ev. felorsak. Endast avsedd att nyttjas vid utveckling/felsökning"
* result 0..1 Base "ResultOfCallType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.resultCode from ResultCodeEnumVS (required)
* result.infoText 0..1 string "infoText" "infoText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR."
* result.errorId from ErrorIdEnumVS (required)
* result.errorText 0..1 string "errorText" "errorText"
* obeys birthregistration-choice-1

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert BirthRegistrationFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys birthregistration-personnummer-or-meddelande

Invariant: birthregistration-choice-1
Description: "Exakt ett av PersonNummer, Meddelande ska anges (xs:choice i schemat)."
Expression: "PersonNummer.exists() xor Meddelande.exists()"
Severity: #error

Invariant: birthregistration-personnummer-or-meddelande
Description: "Exakt ett av PersonNummer och Meddelande ska anges i svaret (xs:choice i schemat)."
Expression: "PersonNummer.exists() xor Meddelande.exists()"
Severity: #error
