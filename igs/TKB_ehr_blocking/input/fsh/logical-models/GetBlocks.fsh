// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: GetBlocks v2.0 (querying)
// Genererad: 2026-04-09

Logical: GetBlocks
Id: getblocks
Title: "GetBlocks"
Description: """
  Logisk modell för tjänstekontraktet GetBlocks
  (RIV-TA urn:riv:ehr:blocking:querying:GetBlocksResponder:2).
  Läser alla registrerade spärrar för en viss organisation (lokal nivå).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av anropet"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
* blocks 0..* BackboneElement "Lista över funna aktiva spärrar för angiven vårdgivare"
  * blockId 1..1 string "Unik identifierare för spärren (UUID)"
  * blockType 1..1 code "Typ av spärr"
  * blockType from BlockTypeVS (required)
  * patientId 1..1 string "Patientens personnummer eller samordningsnummer"
  * informationStartDate 0..1 dateTime "Startdatum för vilken information spärren gäller"
  * informationEndDate 0..1 dateTime "Slutdatum för vilken information spärren gäller"
  * informationCareUnitId 0..1 string "HSA-id för vårdenhet (vid inre spärr)"
  * informationCareProviderId 1..1 string "HSA-id för vårdgivare"
  * excludedInformationTypes 0..* BackboneElement "Informationstyper undantagna från spärren"
    * infoTypeId 1..1 string "ID för informationstypen"
    * infoTypeDescription 1..1 string "Beskrivning av informationstypen"
  * temporaryRevokes 0..* BackboneElement "Aktiva tillfälliga hävningar"
    * temporaryRevokeId 1..1 string "Unik ID för tillfällig hävning"
    * endDate 1..1 dateTime "Datum när hävningen upphör"
    * revokedForCareUnitId 1..1 string "HSA-id för vårdenhet med hävning"
    * revokedForEmployeeId 0..1 string "HSA-id för enskild medarbetare"
    * ownerId 0..1 string "System som registrerade hävningen"
  * ownerId 0..1 string "System som registrerade spärren"
* nextCreatedOnOrAfter 1..1 dateTime "Tidsstämpel för nästa inkrementella hämtning"
* latestCancellation 1..1 dateTime "Senaste makulerings- eller hävningstidpunkt"
