// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: GetAllBlocks v2.0 (querying)
// Genererad: 2026-04-09

Logical: GetAllBlocks
Id: getallblocks
Title: "GetAllBlocks"
Description: """
  Logisk modell för tjänstekontraktet GetAllBlocks
  (RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksResponder:2).
  Läser alla nationellt kända/lagrade spärrar. Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av anropet"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
* blocks 0..* BackboneElement "Lista över funna aktiva spärrar"
  * blockId 1..1 string "Unik identifierare för spärren (UUID-format)"
  * blockType 1..1 code "Typ av spärr (Inner/Outer)"
  * blockType from BlockTypeVS (required)
  * patientId 1..1 string "Patientens personnummer, samordningsnummer eller reservnummer"
  * informationStartDate 0..1 dateTime "Startdatum för vilken information spärren gäller"
  * informationEndDate 0..1 dateTime "Slutdatum för vilken information spärren gäller"
  * informationCareUnitId 0..1 string "HSA-id för vårdenhet vars information spärren gäller (vid inre spärr)"
  * informationCareProviderId 1..1 string "HSA-id för vårdgivare vars information spärren gäller"
  * excludedInformationTypes 0..* BackboneElement "Informationstyper undantagna från spärren"
    * infoTypeId 1..1 string "Identifierare för informationstypen (t.ex. 'lak' eller 'upp')"
    * infoTypeDescription 1..1 string "Beskrivning av informationstypen (max 64 tecken)"
  * temporaryRevokes 0..* BackboneElement "Aktiva tillfälliga hävningar för denna spärr"
    * temporaryRevokeId 1..1 string "Unik identifierare för tillfällig hävning (UUID)"
    * endDate 1..1 dateTime "Datum när den tillfälliga hävningen upphör"
    * revokedForCareUnitId 1..1 string "HSA-id för vårdenhet som har tillfällig hävning"
    * revokedForEmployeeId 0..1 string "HSA-id för enskild medarbetare med tillfällig hävning"
    * ownerId 0..1 string "System som registrerade hävningen"
  * ownerId 0..1 string "System som registrerade spärren"
* nextCreatedOnOrAfter 1..1 dateTime "Tidsstämpel att använda i nästa anrop för inkrementell hämtning"
* latestCancellation 1..1 dateTime "Senaste makulerings- eller hävningstidpunkt i resultatet"
