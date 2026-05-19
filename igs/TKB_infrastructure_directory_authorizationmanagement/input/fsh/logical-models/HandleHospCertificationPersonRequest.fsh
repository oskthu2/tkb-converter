// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: HandleHospCertificationPerson v1.0 — Request
// Genererad: 2026-05-19

Logical: HandleHospCertificationPersonRequest
Id: handlehospcertificationperson-request
Title: "HandleHospCertificationPerson — Request"
Description: "Logisk modell för requestparametrar i HandleHospCertificationPerson."
Characteristics: #can-be-target

* personalIdentityNumber 1..1 string "Person-id för personen vars HOSP-uppgifter ska begäras utlämnade"
  """
  Ref. person-id (personalIdentityNumber) [R5].
  """
* operation 1..1 code "Operation: add eller remove"
  """
  'add' för att lägga till personen, 'remove' för att ta bort personen från utlämningsförfrågningar.
  """
* operation from HospOperationVS (required)
* certificationId 0..1 string "Alternativ id för personposten (frivillig)"
* reason 0..1 string "Anledning till avregistrering (frivillig, loggas ej)"
