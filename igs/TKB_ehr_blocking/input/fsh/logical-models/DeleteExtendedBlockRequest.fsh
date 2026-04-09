// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: DeleteExtendedBlock v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: DeleteExtendedBlockRequest
Id: deleteextendedblock-request
Title: "DeleteExtendedBlock — Request"
Description: "Logisk modell för requestparametrar i DeleteExtendedBlock."
Characteristics: #can-be-target

* blockId 1..1 string "Unik identifierare (UUID) för spärren som skall makuleras."
* action 1..1 BackboneElement "Aktörsinformation för den som makulerar spärren"
  * requestDate 1..1 dateTime "Datum när makulering begärdes"
  * requestedBy 1..1 BackboneElement "Aktören som begärde makuleringen"
    * employeeId 1..1 string "HSA-id för anställd"
    * assignmentId 0..1 string "HSA-id för medarbetaruppdrag"
    * assignmentName 0..1 string "Namn på medarbetaruppdrag"
  * registrationDate 1..1 dateTime "Datum när makuleringen registrerades"
  * registeredBy 1..1 BackboneElement "Aktören som registrerade makuleringen"
    * employeeId 1..1 string "HSA-id för anställd"
    * assignmentId 0..1 string "HSA-id för medarbetaruppdrag"
    * assignmentName 0..1 string "Namn på medarbetaruppdrag"
  * reasonText 0..1 string "Orsak till makuleringen (fritext)"
