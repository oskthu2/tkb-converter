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

* formId 1..1 string "Formulärets unika ID (GUID) som skall avbrytas"
* subjectOfCare 0..1 string "Invånarens personnummer (yyyymmddnnnn)"
* reason 0..1 string "Anledning till avbrytning (valfri kommentar)"


Logical: CancelForm
Id: cancelform
Title: "CancelForm"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet CancelForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2).
  Bekräftar att formuläret har avbrutits och raderats.
"""
Characteristics: #can-be-target

* resultCode 1..1 string "Svarskod (OK = formuläret har avbrutits)"
* comment 0..1 string "Kommentar"
