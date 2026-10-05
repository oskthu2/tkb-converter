// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetBlocks v4.0
// Genererad: 2026-09-26

Logical: GetBlocks
Id: getblocks
Title: "GetBlocks — Response"
Description: """
  Logisk modell för svaret i GetBlocks
  (urn:riv:informationsecurity:authorization:blocking:GetBlocksResponder:4, GetBlocksResponseType).
"""
Characteristics: #can-be-target
* ^version = "4.0"
* blockHeader 1..1 BackboneElement "blockHeader" "Datatyp som representerar spärrdata, antingen innehållandes endast spärrdata, eller spärrdata tillsammans med avregistrerade spärrar, beroende på hur klienten efterfrågat data. Datatypen utökar datatypen Result."
  * result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
    * resultCode 1..1 code "resultCode" "resultCode"
    * resultCode from ResultCodeVS (required)
    * resultText 0..1 string "resultText" "resultText"
  * blocks 0..* BackboneElement "blocks" "Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr."
    * blockId 1..1 string "blockId" "blockId"
    * blockType 1..1 code "blockType" "blockType"
    * blockType from BlockTypeVS (required)
    * informationStartDate 0..1 dateTime "informationStartDate" "informationStartDate"
    * informationEndDate 0..1 dateTime "informationEndDate" "informationEndDate"
    * informationCareUnitId 0..1 string "informationCareUnitId" "informationCareUnitId"
    * informationCareProviderId 1..1 string "informationCareProviderId" "informationCareProviderId"
    * patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
      * root 1..1 string "root" "root"
      * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
    * excludedInformationTypes 0..* BackboneElement "excludedInformationTypes" "Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation"
      * infoTypeId 1..1 string "infoTypeId" "infoTypeId"
      * infoTypeDescription 1..1 string "infoTypeDescription" "infoTypeDescription"
    * temporaryRevokes 0..* BackboneElement "temporaryRevokes" "Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr. Datatypen beskriver grundformatet för en tillfällig hävning."
      * temporaryRevokeId 1..1 string "temporaryRevokeId" "temporaryRevokeId"
      * endDate 1..1 dateTime "endDate" "endDate"
      * revokedForCareUnitId 1..1 string "revokedForCareUnitId" "revokedForCareUnitId"
      * revokedForEmployeeId 0..1 string "revokedForEmployeeId" "revokedForEmployeeId"
      * ownerId 0..1 string "ownerId" "ownerId"
    * ownerId 0..1 string "ownerId" "ownerId"
  * nextCreatedOnOrAfter 1..1 dateTime "nextCreatedOnOrAfter" "nextCreatedOnOrAfter"
  * latestCancellation 1..1 dateTime "latestCancellation" "latestCancellation"
