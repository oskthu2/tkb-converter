// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: CheckBlocks v3.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: CheckBlocksRequest
Id: checkblocks-request
Title: "CheckBlocks — Request"
Description: "Logisk modell för requestparametrar i CheckBlocks v3.0."
Characteristics: #can-be-target

* accessingActor 1..1 BackboneElement "Aktören (personal/vårdenhet) som begär åtkomst"
  * employeeId 1..1 string "HSA-id för den anställde som begär åtkomst"
  * careProviderId 1..1 string "HSA-id för aktörens vårdgivare"
  * careUnitId 1..1 string "HSA-id för aktörens vårdenhet"
* informationEntities 1..* BackboneElement "Lista med informationsresurser vars spärrning skall kontrolleras"
  * informationCareProviderId 1..1 string "HSA-id för vårdgivaren vars information kontrolleras"
  * informationCareUnitId 0..1 string "HSA-id för vårdenhet (krävs vid inre spärr)"
  * informationType 0..1 string "Informationstyp att kontrollera (lämna tomt för alla typer)"
* patientId 1..1 string "Patientens personnummer eller samordningsnummer"
