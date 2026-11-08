// Elementen genereras ur CancelFormResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: CancelForm v2.0
// Genererad: 2026-05-19

Logical: CancelFormRequest
Id: cancelform-request
Title: "CancelForm — Request"
Description: """
  Logisk modell för requestparametrar i CancelForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2).
  Avbryter och raderar ett pågående formulär.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* formId 1..1 string "formId" "formId"
* subjectOfCare 0..1 string "subjectOfCare" "Autentiserad invånare (personnummer). FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."

Logical: CancelForm
Id: cancelform
Title: "CancelForm"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet CancelForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2).
  Bekräftar att formuläret har avbrutits och raderats.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* comment 0..1 string "comment" "comment"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
