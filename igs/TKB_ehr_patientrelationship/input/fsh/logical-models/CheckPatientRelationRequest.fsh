// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: CheckPatientRelation v1.0 — Request
// Genererad: 2026-05-19

Logical: CheckPatientRelationRequest
Id: checkpatientrelation-request
Title: "CheckPatientRelation — Request"
Description: "Logisk modell för requestparametrar i CheckPatientRelation."
Characteristics: #can-be-target

* accessingActor 1..1 BackboneElement "Representerar den aktör/person som önskar åtkomst till informationen"
  """
  Identifierar medarbetaren vars patientrelation kontrolleras.
  """
* accessingActor.employeeId 1..1 Identifier "Id för medarbetaren/personen (HSA-id)"
* accessingActor.careProviderId 1..1 Identifier "Id på medarbetarens vårdgivare (HSA-id)"
* accessingActor.careUnitId 1..1 Identifier "Id på medarbetarens vårdenhet (HSA-id)"

* patientId 1..1 string "Patientens personnummer alternativt samordningsnummer (max 12 tecken)"
  """
  Personnummer eller samordningsnummer för den patient vars information aktören önskar åtkomst till.
  """
