// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RegisterTemporaryRevoke v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: RegisterTemporaryRevokeRequest
Id: registertemporaryrevoke-request
Title: "RegisterTemporaryRevoke — Request"
Description: "Logisk modell för requestparametrar i RegisterTemporaryRevoke."
Characteristics: #can-be-target

* temporaryRevoke 1..1 BackboneElement "Den tillfälliga hävningen som skall registreras"
  * temporaryRevokeId 1..1 string "Unik identifierare (UUID) för tillfällig hävning"
  * blockId 1..1 string "UUID för den spärr som hävs tillfälligt"
  * endDate 1..1 dateTime "Datum när den tillfälliga hävningen upphör"
  * revokedForCareUnitId 1..1 string "HSA-id för vårdenhet som ges tillfällig åtkomst"
  * revokedForEmployeeId 0..1 string "HSA-id för enskild medarbetare (valfritt)"
  * ownerId 0..1 string "System som registrerar hävningen"
