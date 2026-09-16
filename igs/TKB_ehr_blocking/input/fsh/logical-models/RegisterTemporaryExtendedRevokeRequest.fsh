// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RegisterTemporaryExtendedRevoke v2.0 — Request-parametrar
// Genererad: 2026-09-16 (kompletterad — saknades i ursprunglig migrering, upptäckt via check_links.py)

Logical: RegisterTemporaryExtendedRevokeRequest
Id: registertemporaryextendedrevoke-request
Title: "RegisterTemporaryExtendedRevoke — Request"
Description: "Logisk modell för requestparametrar i RegisterTemporaryExtendedRevoke."
Characteristics: #can-be-target

* temporaryRevokeId 1..1 string "Unik, global identifierare för den tillfälliga hävningen. Tjänstekonsumenten ansvarar för att generera id:et."
* blockId 1..1 string "Identifierare för den spärr som skall tillfälligt hävas."
* endDate 1..1 dateTime "Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat."
* revokedForCareUnitId 1..1 string "HSA-id för den vårdenhet hävningen gäller för."
* revokedForEmployeeId 0..1 string "HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en medarbetare/person, annars gäller hävningen för all behörig personal på vårdenheten."
* registrationInfo 1..1 BackboneElement "Aktörsinfo för registrering av hävningen"
  * requestDate 1..1 dateTime "Datum när hävningen begärdes"
  * requestedBy 1..1 BackboneElement "Aktören som begärde hävningen"
    * employeeId 1..1 string "HSA-id för anställd"
    * assignmentId 0..1 string "HSA-id för medarbetaruppdrag"
    * assignmentName 0..1 string "Namn på medarbetaruppdrag"
  * registrationDate 1..1 dateTime "Datum när hävningen registrerades"
  * registeredBy 1..1 BackboneElement "Aktören som registrerade hävningen"
    * employeeId 1..1 string "HSA-id för anställd"
    * assignmentId 0..1 string "HSA-id för medarbetaruppdrag"
    * assignmentName 0..1 string "Namn på medarbetaruppdrag"
* revokeReason 1..1 code "Enumerationsvärde för orsak till tillfällig hävning"
* revokeReason from TemporaryRevokeReasonVS (required)
* revokeReasonText 0..1 string "Kompletterande text för orsak till tillfällig hävning"
* replicationTimeout 1..1 integer "Anger hur replikering till nationell spärrtjänst ska ske (millisekunder). -1 = anropet väntar på replikering (misslyckas vid timeout). 0 = anropet avslutas direkt, replikering sker asynkront. >0 = anropet väntar angiven tid innan det avslutas; ej klar replikering fortsätter asynkront."
