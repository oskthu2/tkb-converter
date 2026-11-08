// Elementen genereras ur SaveFormResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: SaveForm v2.0
// Genererad: 2026-05-19

Logical: SaveFormRequest
Id: saveform-request
Title: "SaveForm — Request"
Description: """
  Logisk modell för requestparametrar i SaveForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2).
  Avslutar och sparar ett formulär. Formuläret byter status till COMPLETED.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* formId 1..1 string "formId" "formId"
* subjectOfCare 0..1 string "subjectOfCare" "Autentiserad invånare (personnummer). FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."

Logical: SaveForm
Id: saveform
Title: "SaveForm"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet SaveForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2).
  Bekräftar att formuläret har avslutats och fått status COMPLETED.
  Formulärmotorn skickar notifiering till engagemangsindex (categorization = FormComplete).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* comment 0..1 string "comment" "comment"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
