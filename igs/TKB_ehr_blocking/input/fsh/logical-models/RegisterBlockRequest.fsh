// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RegisterBlock v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: RegisterBlockRequest
Id: registerblock-request
Title: "RegisterBlock — Request"
Description: "Logisk modell för requestparametrar i RegisterBlock."
Characteristics: #can-be-target

* block 1..1 BackboneElement "Spärrobjektet som skall registreras i nationell spärrtjänst"
  * blockId 1..1 string "Unik identifierare för spärren (UUID)"
  * blockType 1..1 code "Typ av spärr"
  * blockType from BlockTypeVS (required)
  * patientId 1..1 string "Patientens personnummer eller samordningsnummer"
  * informationStartDate 0..1 dateTime "Startdatum för information som spärren gäller"
  * informationEndDate 0..1 dateTime "Slutdatum för information som spärren gäller"
  * informationCareUnitId 0..1 string "HSA-id för vårdenhet (vid inre spärr)"
  * informationCareProviderId 1..1 string "HSA-id för vårdgivare vars information spärras"
  * excludedInformationTypes 0..* BackboneElement "Informationstyper undantagna från spärren"
    * infoTypeId 1..1 string "ID för informationstypen"
    * infoTypeDescription 1..1 string "Beskrivning av informationstypen"
  * ownerId 0..1 string "System som registrerar spärren"
