// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RegisterExtendedBlock v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: RegisterExtendedBlockRequest
Id: registerextendedblock-request
Title: "RegisterExtendedBlock — Request"
Description: "Logisk modell för requestparametrar i RegisterExtendedBlock."
Characteristics: #can-be-target

* extendedBlock 1..1 BackboneElement "Utökat spärrobjekt med komplett metadata"
  * blockId 1..1 string "Unik identifierare för spärren (UUID)"
  * blockType 1..1 code "Typ av spärr"
  * blockType from BlockTypeVS (required)
  * patientId 1..1 string "Patientens personnummer eller samordningsnummer"
  * informationStartDate 0..1 dateTime "Startdatum för information spärren gäller"
  * informationEndDate 0..1 dateTime "Slutdatum för information spärren gäller"
  * informationCareUnitId 0..1 string "HSA-id för vårdenhet (vid inre spärr)"
  * informationCareProviderId 1..1 string "HSA-id för vårdgivare"
  * excludedInformationTypes 0..* BackboneElement "Informationstyper undantagna från spärren"
    * infoTypeId 1..1 string "ID för informationstypen"
    * infoTypeDescription 1..1 string "Beskrivning av informationstypen"
  * registrationInfo 1..1 BackboneElement "Aktörsinfo för registreringen"
    * requestDate 1..1 dateTime "Datum när spärren begärdes"
    * requestedBy 1..1 BackboneElement "Aktören som begärde spärren"
      * employeeId 1..1 string "HSA-id för anställd"
      * assignmentId 0..1 string "HSA-id för medarbetaruppdrag"
      * assignmentName 0..1 string "Namn på medarbetaruppdrag"
    * registrationDate 1..1 dateTime "Datum när spärren registrerades"
    * registeredBy 1..1 BackboneElement "Aktören som registrerade spärren"
      * employeeId 1..1 string "HSA-id för anställd"
      * assignmentId 0..1 string "HSA-id för medarbetaruppdrag"
      * assignmentName 0..1 string "Namn på medarbetaruppdrag"
    * reasonText 0..1 string "Orsak till spärren (fritext)"
