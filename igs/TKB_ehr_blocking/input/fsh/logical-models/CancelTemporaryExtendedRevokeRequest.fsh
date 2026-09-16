// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: CancelTemporaryExtendedRevoke v2.0 — Request-parametrar
// Genererad: 2026-09-16 (kompletterad — saknades i ursprunglig migrering, upptäckt via check_links.py)

Logical: CancelTemporaryExtendedRevokeRequest
Id: canceltemporaryextendedrevoke-request
Title: "CancelTemporaryExtendedRevoke — Request"
Description: "Logisk modell för requestparametrar i CancelTemporaryExtendedRevoke."
Characteristics: #can-be-target

* temporaryRevokeId 1..1 string "Identifierare för den tillfälliga hävning som skall återkallas."
* cancellationInfo 1..1 BackboneElement "Aktörsinfo för begäran och registrering av återkallningen"
  * requestDate 1..1 dateTime "Datum när återkallningen begärdes"
  * requestedBy 1..1 BackboneElement "Aktören som begärde återkallningen"
    * employeeId 1..1 string "HSA-id för anställd"
    * assignmentId 0..1 string "HSA-id för medarbetaruppdrag"
    * assignmentName 0..1 string "Namn på medarbetaruppdrag"
  * registrationDate 1..1 dateTime "Datum när återkallningen registrerades"
  * registeredBy 1..1 BackboneElement "Aktören som registrerade återkallningen"
    * employeeId 1..1 string "HSA-id för anställd"
    * assignmentId 0..1 string "HSA-id för medarbetaruppdrag"
    * assignmentName 0..1 string "Namn på medarbetaruppdrag"
  * reasonText 0..1 string "Orsak till återkallningen (fritext)"
* cancelReasonText 0..1 string "Kompletterande text för orsak till makuleringen"
* replicationTimeout 1..1 integer "Anger hur replikering till nationell spärrtjänst ska ske (millisekunder). -1 = anropet väntar på replikering (misslyckas vid timeout). 0 = anropet avslutas direkt, replikering sker asynkront. >0 = anropet väntar angiven tid innan det avslutas; ej klar replikering fortsätter asynkront."
