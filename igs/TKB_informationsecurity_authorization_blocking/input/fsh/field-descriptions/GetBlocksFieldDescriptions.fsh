// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetBlocksFieldDescriptions
* blockHeader ^definition = "Lista över funna spärrar som är aktiva."
* blockHeader ^comment = "TKB-fält: `blockHeader` (`urn:riv:informationsecurity:authorization:blocking:4:BlockHeaderType`, kardinalitet 1..1).

**Modellanteckning:** Datatyp som representerar spärrdata, antingen innehållandes endast spärrdata, eller spärrdata tillsammans med avregistrerade spärrar, beroende på hur klienten efterfrågat data. Datatypen utökar datatypen Result."
* blockHeader.result ^definition = "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* blockHeader.result ^comment = "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1)."
* blockHeader.result.resultCode ^comment = "TKB-fält: `../../resultCode` (`ResultCodeType`, kardinalitet 1..1)."
* blockHeader.result.resultText ^comment = "TKB-fält: `../../resultText` (`string`, kardinalitet 0..1)."
* blockHeader.blocks ^definition = "Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr."
* blockHeader.blocks ^comment = "TKB-fält: `../blocks` (`BlockType`, kardinalitet 0..*)."
* blockHeader.blocks.blockId ^comment = "TKB-fält: `../../blockId` (`Id`, kardinalitet 1..1)."
* blockHeader.blocks.blockType ^comment = "TKB-fält: `../../blockType` (`BlockTypeType`, kardinalitet 1..1)."
* blockHeader.blocks.informationStartDate ^comment = "TKB-fält: `../../informationStartDate` (`dateTime`, kardinalitet 0..1)."
* blockHeader.blocks.informationEndDate ^comment = "TKB-fält: `../../informationEndDate` (`dateTime`, kardinalitet 0..1)."
* blockHeader.blocks.informationCareUnitId ^comment = "TKB-fält: `../../informationCareUnitId` (`HsaId`, kardinalitet 0..1)."
* blockHeader.blocks.informationCareProviderId ^comment = "TKB-fält: `../../informationCareProviderId` (`HsaId`, kardinalitet 1..1)."
* blockHeader.blocks.patientId ^definition = "En universellt unik identifierare."
* blockHeader.blocks.patientId ^comment = "TKB-fält: `../../patientId` (`IIType`, kardinalitet 1..1)."
* blockHeader.blocks.patientId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* blockHeader.blocks.patientId.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* blockHeader.blocks.excludedInformationTypes ^definition = "Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation"
* blockHeader.blocks.excludedInformationTypes ^comment = "TKB-fält: `../../excludedInformationTypes` (`InformationTypeType`, kardinalitet 0..*)."
* blockHeader.blocks.excludedInformationTypes.infoTypeId ^comment = "TKB-fält: `../../../infoTypeId` (`InformationTypeIdValue`, kardinalitet 1..1)."
* blockHeader.blocks.excludedInformationTypes.infoTypeDescription ^comment = "TKB-fält: `../../../infoTypeDescription` (`InformationTypeDescription`, kardinalitet 1..1)."
* blockHeader.blocks.temporaryRevokes ^definition = "Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr. Datatypen beskriver grundformatet för en tillfällig hävning."
* blockHeader.blocks.temporaryRevokes ^comment = "TKB-fält: `../../temporaryRevokes` (`TemporaryRevokeType`, kardinalitet 0..*)."
* blockHeader.blocks.temporaryRevokes.temporaryRevokeId ^comment = "TKB-fält: `../../../temporaryRevokeId` (`Id`, kardinalitet 1..1)."
* blockHeader.blocks.temporaryRevokes.endDate ^comment = "TKB-fält: `../../../endDate` (`dateTime`, kardinalitet 1..1)."
* blockHeader.blocks.temporaryRevokes.revokedForCareUnitId ^comment = "TKB-fält: `../../../revokedForCareUnitId` (`HsaId`, kardinalitet 1..1)."
* blockHeader.blocks.temporaryRevokes.revokedForEmployeeId ^comment = "TKB-fält: `../../../revokedForEmployeeId` (`HsaId`, kardinalitet 0..1)."
* blockHeader.blocks.temporaryRevokes.ownerId ^comment = "TKB-fält: `../../../ownerId` (`OwnerId`, kardinalitet 0..1)."
* blockHeader.blocks.ownerId ^comment = "TKB-fält: `../../ownerId` (`OwnerId`, kardinalitet 0..1)."
* blockHeader.nextCreatedOnOrAfter ^comment = "TKB-fält: `../nextCreatedOnOrAfter` (`dateTime`, kardinalitet 1..1)."
* blockHeader.latestCancellation ^comment = "TKB-fält: `../latestCancellation` (`dateTime`, kardinalitet 1..1)."
