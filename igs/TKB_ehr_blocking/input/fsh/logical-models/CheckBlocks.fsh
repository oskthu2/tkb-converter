// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: CheckBlocks v3.0 (accesscontrol)
// Genererad: 2026-04-09

Logical: CheckBlocks
Id: checkblocks
Title: "CheckBlocks"
Description: """
  Logisk modell för tjänstekontraktet CheckBlocks
  (RIV-TA urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3).
  Kontrollerar om spärr finns relativ viss personal/vårdenhet och information.
  Version 3 validerar informationsresurserna separat och kan ge individuella felkoder per resurs.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* checkBlocksResult 1..1 BackboneElement "Resultatlista — ett resultat per begärd informationsresurs"
  * result 0..* BackboneElement "Spärrkontrollresultat per informationsresurs"
    * informationCareProviderId 1..1 string "HSA-id för vårdgivaren vars information kontrollerades"
    * informationCareUnitId 0..1 string "HSA-id för vårdenhet (vid inre spärr)"
    * informationType 0..1 string "Informationstyp som kontrollerades (t.ex. 'lak' eller 'upp')"
    * checkStatus 1..1 code "Spärrresultat för denna informationsresurs"
      """
      BLOCKED = information är spärrad, UNBLOCKED = information är inte spärrad,
      VALIDATIONERROR = ogiltiga parametrar för denna resurs
      """
    * resultCode 1..1 code "Svarskod för anropet som helhet"
    * resultCode from ResultCodeVS (required)
    * resultText 0..1 string "Beskrivande text till svarskoden"
