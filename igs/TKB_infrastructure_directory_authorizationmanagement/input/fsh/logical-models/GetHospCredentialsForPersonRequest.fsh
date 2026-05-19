// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetHospCredentialsForPerson v1.0 — Request
// Genererad: 2026-05-19

Logical: GetHospCredentialsForPersonRequest
Id: gethospcredentialsforperson-request
Title: "GetHospCredentialsForPerson — Request"
Description: "Logisk modell för requestparametrar i GetHospCredentialsForPerson."
Characteristics: #can-be-target

* personalIdentityNumber 1..1 string "Person-id för personen vars HOSP-uppgifter söks ut"
  """
  Ref. person-id (personalIdentityNumber) [R5].
  """
