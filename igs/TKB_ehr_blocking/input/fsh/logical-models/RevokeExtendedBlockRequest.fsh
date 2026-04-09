// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RevokeExtendedBlock v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: RevokeExtendedBlockRequest
Id: revokeextendedblock-request
Title: "RevokeExtendedBlock — Request"
Description: "Logisk modell för requestparametrar i RevokeExtendedBlock."
Characteristics: #can-be-target

* blockId 1..1 string "Unik identifierare (UUID) för spärren som skall hävas permanent."
* action 1..1 BackboneElement "Aktörsinformation för den som häver spärren"
  * requestDate 1..1 dateTime "Datum när hävning begärdes"
  * requestedBy 1..1 BackboneElement "Aktören som begärde hävningen"
    * employeeId 1..1 string "HSA-id för anställd"
    * assignmentId 0..1 string "HSA-id för medarbetaruppdrag"
    * assignmentName 0..1 string "Namn på medarbetaruppdrag"
  * registrationDate 1..1 dateTime "Datum när hävningen registrerades"
  * registeredBy 1..1 BackboneElement "Aktören som registrerade hävningen"
    * employeeId 1..1 string "HSA-id för anställd"
    * assignmentId 0..1 string "HSA-id för medarbetaruppdrag"
    * assignmentName 0..1 string "Namn på medarbetaruppdrag"
  * reasonText 0..1 string "Orsak till hävningen (fritext)"
