| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| patientId | IIType | En universellt unik identifierare. | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| careProviderIds | HsaId |  | 0..* |
| createdOnOrAfter | dateTime |  | 0..1 |
| **Svar** | | | |
| blockHeader | BlockHeaderType | Datatyp som representerar spärrdata, antingen innehållandes endast spärrdata, eller spärrdata tillsammans med avregistrerade spärrar, beroende på hur klienten efterfrågat data. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../blocks | BlockType | Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr. | 0..* |
| ../../blockId | Id |  | 1..1 |
| ../../blockType | BlockTypeType |  | 1..1 |
| ../../informationStartDate | dateTime |  | 0..1 |
| ../../informationEndDate | dateTime |  | 0..1 |
| ../../informationCareUnitId | HsaId |  | 0..1 |
| ../../informationCareProviderId | HsaId |  | 1..1 |
| ../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../excludedInformationTypes | InformationTypeType | Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation | 0..* |
| ../../../infoTypeId | InformationTypeIdValue |  | 1..1 |
| ../../../infoTypeDescription | InformationTypeDescription |  | 1..1 |
| ../../temporaryRevokes | TemporaryRevokeType | Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr. Datatypen beskriver grundformatet för en tillfällig hävning. | 0..* |
| ../../../temporaryRevokeId | Id |  | 1..1 |
| ../../../endDate | dateTime |  | 1..1 |
| ../../../revokedForCareUnitId | HsaId |  | 1..1 |
| ../../../revokedForEmployeeId | HsaId |  | 0..1 |
| ../../../ownerId | OwnerId |  | 0..1 |
| ../../ownerId | OwnerId |  | 0..1 |
| ../nextCreatedOnOrAfter | dateTime |  | 1..1 |
| ../latestCancellation | dateTime |  | 1..1 |
