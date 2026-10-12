# 6 Gemensamma informationskomponenter - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* **6 Gemensamma informationskomponenter**

## 6 Gemensamma informationskomponenter

# 6 Gemensamma informationskomponenter

Källa: **Spärr**, tjänstekontraktsbeskrivning version 4.0.4 (2024-10-18), [TKB_informationsecurity_authorization_blocking.docx](TKB_informationsecurity_authorization_blocking.docx).

Motsvarar TKB kapitel 7 **Datatyper** (6.1 = TKB 7.1 osv.). Rubrikerna för datatyperna anges här utan namnrymdsprefixet `urn:riv:informationsecurity:authorization:blocking:4:`.

Kaptitlet beskriver alla datatyper som används av tjänsterna, version 4.0.

### 6.1 Datatyper från namnrymd urn:riv:informationsecurity:authorization:blocking:4

Nedan beskrivs komplexa och simpla datatyper som är deklarerade i aktuell namnrymd urn:riv:informationsecurity:authorization:blocking:4, version 4.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### 6.1.1 AccessingActorType

Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| | | | |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId | Id för medarbetaren/personen. | 1 |
| careProviderId | HsaId | Id på medarbetarens vårdgivare enligt aktuellt medarbetaruppdrag. | 1 |
| careUnitId | HsaId | Id på medarbetarens vårdenhet enligt aktuellt medarbetaruppdrag. | 1 |

#### 6.1.2 ActionType

Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med

en möjlig orsak/anledning angivet som fritext.

| | | | |
| :--- | :--- | :--- | :--- |
| requestDate | xs:DateTime | Tidpunkt då åtgärden begärdes. | 1 |
| requestedBy | ActorType | Anger vem som begärt åtgärden. | 1 |
| registrationDate | xs:DateTime | Tidpunkt då händelsen registrerades. Kan vara samma tidpunkt som när åtgärden begärdes. | 1 |
| registeredBy | ActorType | Anger vem som registrerat åtgärden. Detta värde kan vara samma som den som begärt åtgärden. | 1 |
| reasonText | ReasonText | Optionellt fritext fält som anger orsaken/anledningen till åtgärden. | 0..1 |

#### 6.1.3 ActorType

Datatyp som identifierar en medarbetare/person.

| | | | |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId | Id för medarbetaren/personen. | 1 |
| assignmentId | HsaId | Optionellt id för medarbetarens aktuella uppdrag. | 0..1 |
| assignmentName | AssignmentNameType | Optionellt namn på medarbetarens aktuella uppdrag. | 0..1 |

#### 6.1.4 AssignmentNameType

Datatyp som representerar namn på medarbetaruppdrag.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.5 BlockType

Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr.

| | | | |
| :--- | :--- | :--- | :--- |
| blockId | Id | Unik, global identifierare för spärren. | 1 |
| blockType | BlockTypeType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare) spärr. | 1 |
| informationStartDate | xs:DateTime | Startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:DateTime | Slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | HsaId | Anger HSA-id för den vårdenhet som informationen tillhör. Anges enbart för inre spärrar. | 0..1 |
| informationCareProviderId | HsaId | Anger HSA-id för den vårdgivare som informationen tillhör. | 1 |
| patientId | IIType | Identifierar den patient spärren avser. | 1 |
| excludedInformationTypes | InformationTypeType | Lista med de informationstyper som är undantagna från spärren. Spärren gäller för all sorts information om inget anges. | 0..* |
| temporaryRevokes | TemporaryRevokeType | Lista med tillfälliga hävningar för denna spärr. | 0..* |
| ownerId | OwnerId | Optionell identifierare för det system som skapade spärren. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### 6.1.6 BlockHeaderType

Datatyp som representerar spärrdata, antingen innehållandes endast spärrdata, eller spärrdata tillsammans med avregistrerade spärrar, beroende på hur klienten efterfrågat data.

Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType |   | 1 |
| blocks | BlockType | Lista av spärrdata. | 0..* |
| nextCreatedOnOrAfter | xs:DateTime | Tidpunkt som anger sluttidpunkten för det returnerade spärrdatat. Detta datum används lämpligen i nästa anrop för att få nytt spärrdata från den tidpunkt då föregående anrop gjordes. / Tidpunkt representerar den aktuella tidpunkten i tjänsten då anropet gjordes. | 1 |
| latestCancellation | xs:DateTime | Tidpunkt som anger när en spärr blev återkallad eller makulerad. / Detta datum kan användas för att avgöra om en full synkronisering av spärrdata behöver göras får att få en aktuell bild över aktiva spärrar, då anropet i sig inte returnerar data om återkallade eller makulerade spärrar. / Tidpunkten representerar den tidpunkt då den senaste återkallan eller makulering av en spärr utfördes. En temporär hävning som återkallas ändrar ej detta datum då tillfälliga hävningar anses vara temporära ändringar. / På nationell nivå avses den senaste utförda avregistreringen av en spärr. | 1 |

#### 6.1.7 BlockTypeType

Enumerationsvärde som anger typ av spärr.

| | |
| :--- | :--- |
| "Inner" | Representerar en inre spärr (inom vårdenhet). |
| "Outer" | Representerar en yttre spärr (inom vårdgivare). |

#### 6.1.8 CheckBlocksResultType

Datatyp som innehåller resultatet från tjänsten CheckBlocks.

Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType |   | 1 |
| checkResults | CheckResultType | Information om information är spärrad | 0..* |

#### 6.1.9 CheckResultType

Datatyp som representerar ett svar från kontrollen av åtkomst till information.

| | | | |
| :--- | :--- | :--- | :--- |
| status | CheckStatusType | Status för om informationen är spärrad. | 1 |
| rowNumber | xs:Int | Detta nummer motsvarar samma element i den inskickade listan av informationsentiteter. Används för att klienten skall kunna mappa svarslistan med den inskickade informationslistan. | 1 |

#### 6.1.10 CheckStatusType

Enumerationsvärde som anger de svarskoder som finns.

| | |
| :--- | :--- |
| "OK" | Information är ej spärrad. |
| "BLOCKED" | Informationen är spärrad. |
| "VALIDATIONERROR" | En eller flera inparametrar innehåller felaktiga värden. Kontroll av spärr utfördes ej för denna informationsresurs. |

#### 6.1.11 ExtendedBlockType

Datatyp som representerar en spärr enligt det utökade formatet.

| | | | |
| :--- | :--- | :--- | :--- |
| blockId | Id | Unik, global identifierare för spärren. | 1 |
| blockType | BlockTypeType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1 |
| informationStartDate | xs:DateTime | Startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:DateTime | Slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | HsaId | Anger HSA-id för den vårdenhet som informationen tillhör. Anges ej för yttre spärrar. | 0..1 |
| informationCareProviderId | HsaId | Anger HSA-id för den vårdgivare som informationen tillhör. | 1 |
| patientId | IIType | Identifierar den patient som spärren avser. | 1 |
| excludedInformationTypes | InformationTypeType | Lista med de informationstyper som är undantagna från spärren. Spärren gäller för all sorts information om inget anges. | 0..* |
| registrationInfo | ActionType | Identifierar den eller de aktörer som har begärt och registrerat denna spärr. | 1 |
| permanentRevokedInfo | ActionType | Identifierar den eller de aktörer som har begärt och registrerat en permanent hävning av denna spärr, tillsammans med en orsak/anledning till permanent hävningen. | 0..1 |
| deletionInfo | ActionType | Identifierar den eller de aktörer som har begärt och registrerat makuleringen av denna spärr, tillsammans med en orsak/anledning till makulering. | 0..1 |
| temporaryRevokes | ExtendedTemporaryRevokeType | Lista med tillfälliga hävningar enligt det utökade formatet för denna spärr. | 0..* |
| ownerId | OwnerId | Optionell identifierare för det system som skapade spärren. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |
| locallyCreated | xs:Boolean | Anger om spärren är registrerad på lokal nivå eller hämtat från nationell nivå. | 1 |

#### 6.1.12 ExtendedTemporaryRevokeType

Datatyp som representerar en tillfällig hävning enligt det utökade formatet.

| | | | |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id | Unik, global identifierare för den tillfälliga hävningen. | 1 |
| endDate | xs:DateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1 |
| revokedForCareUnitId | HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1 |
| revokedForEmployeeId | HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en person, annars gäller hävningen för all behörig personal på vårdenheten. | 0..1 |
| revocationReason | TemporaryRevokeReasonType | Enumerationsvärde som anger orsaken/anledningen till den tillfälliga hävningen. | 0..1 |
| revocationReasonText | ReasonText | Optionellt fritext fält som anger orsaken/anledningen till den tillfälliga hävningen. | 0..1 |
| registrationInfo | ActionType | Identifierare den eller de aktörer som har begärt och registrerat den tillfälliga hävningen. | 1 |
| cancellationInfo | ActionType | Identifierare den eller de aktörer som har begärt och makulerat den tillfälliga hävningen. | 0..1 |
| ownerId | OwnerId | Optionell identifierare för det system som skapade hävningen. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### 6.1.13 GetExtendedBlocksResultType

Datatyp som innehåller resultatet från tjänsten GetExtendedBlocksForPatient.

Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType |   | 1 |
| blocks | ExtendedBlockType |   | 0..* |

#### 6.1.14 GetPatientIdResultType

Datatyp som innehåller resultatet från tjänsten GetPatientIdsForCareProvider.

Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType |   | 1 |
| patientIds | IIType | Lista med unika personnummer. | 0..* |

#### 6.1.15 HsaId

Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).

Specificerat enligt HSA-schema tjänsteträdet version 3.9.

Restriktionstyp: xs:string

Maxlängd: 32

#### 6.1.16 IIType

En universellt unik identifierare.

| | | | |
| :--- | :--- | :--- | :--- |
| root | xs:String | Fältet root sätts till OID för kodverket för identifieraren (extension) / Som exempel för svenskt personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. | 1 |
| extension | xs:String | Ett id som tillsammans med värdet i root är unikt. Som exempel för svensk personidentitet så är extension lika med personnummer. | 0..1 |

#### 6.1.17 Id

Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).

Restriktionstyp: xs:string

Maxlängd: 36

#### 6.1.18 InformationEntityType

Datatyp som representerar den information som behövs vid en kontroll om spärr föreligger.

| | | | |
| :--- | :--- | :--- | :--- |
| informationStartDate | xs:DateTime | Startdatum för vilken information i tiden som avses, dvs. när information som skall kontrolleras har registrerats. | 1 |
| informationEndDate | xs:DateTime | Slutdatum för vilken information i tiden som avses, dvs. när information som skall kontrolleras har registrerats. | 1 |
| informationCareUnitId | HsaId | Anger HSA-id för den vårdenhet som informationen tillhör. | 1 |
| informationCareProviderId | HsaId | Anger HSA-id för den vårdgivare som informationen tillhör. | 1 |
| informationType | InformationTypeIdValue | Anger informationtypen för den entitet som skall kontrolleras. / Giltiga värden är endast 'lak' och 'upp'. Övriga informationtyper anges med att inte ange något värde. / Se även InformationTypeIdValue. | 0..1 |
| rowNumber | xs:Int | Detta nummer motsvarar ett element i den inskickade listan av informationsentiteter. Används för att klienten skall kunna mappa svarslistan med den inskickade informationslistan. | 1 |

#### 6.1.19 InformationTypeType

Datatyp som representerar de Informationstyper som kan undantas från att spärras.

En spärr gäller normalt alla informationstyper.

Denna lista utgör de informationstyper som kan undantas från att spärras.

Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta.

lak Läkemedel - Ordination/förskrivning

upp Uppmärksamhetsinformation

| | | | |
| :--- | :--- | :--- | :--- |
| infoTypeId | InformationTypeIdValue | Förkortning av informationstyp enligt ovan tabell. | 1 |
| infoTypeDescription | InformationTypeDescription | Beskrivning av informationstyp enligt ovan tabell. | 1 |

#### 6.1.20 InformationTypeDescription

Datatyp som används för att ange en beskrivning på en informationstyp.

Restriktionstyp: xs:string

Maxlängd: 64

#### 6.1.21 InformationTypeIdValue

Datatyp som används för att ange informationstyper.

Giltiga värden är endast:

Typ Beskrivning

lak Läkemedel - Ordination/förskrivning

upp Uppmärksamhetsinformation

Restriktionstyp: xs:string

Maxlängd: 6

#### 6.1.22 OwnerId

Datatyp som identifierar systemet som registrerade/skapade artifakten. Används endast för tekniskt bruk för t.ex. uppföljning och spårning.

Restriktionstyp: xs:string

Maxlängd: 512

#### 6.1.23 ReasonText

Datatyp som representerar en orsak eller anledning till en viss åtgärd.

Restriktionstyp: xs:string

Maxlängd: 1024

#### 6.1.24 ResultType

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.

En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.

Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| | | | |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType | Anger svarskod för åtgärden. | 1 |
| resultText | xs:String | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 0..1 |

#### 6.1.25 ResultCodeType

Enumerationsvärde som anger de svarskoder som finns.

| | |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "kom fastande". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "tiden har bokats av annan patient". |
| "VALIDATIONERROR" | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| "NOTFOUND" | Angiven artifakt finns ej. Angiven tjänst utfördes ej. |
| "ALREADYEXISTS" | Angiven artifakt finns redan. Angiven tjänst utfördes ej. |
| "INVALIDSTATE" | Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd. |

#### 6.1.26 TemporaryRevokeType

Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr.

Datatypen beskriver grundformatet för en tillfällig hävning.

| | | | |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id | Unik, global identifierare för den tillfälliga hävningen. Följer formatet för UUID. | 1 |
| endDate | xs:DateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1 |
| revokedForCareUnitId | HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1 |
| revokedForEmployeeId | HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en person, annars gäller hävningen för all personal på angiven vårdenhet. | 0..1 |
| ownerId | OwnerId | Optionell identifierare för det system som skapade hävningen. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### 6.1.27 TemporaryRevokeReasonType

Enumerationsvärde som anger orsaken/anledningen till en tillfällig hävning.

| | |
| :--- | :--- |
| "PatientsConsent" | Patienten har givit sitt samtycke till en tillfällig hävning. |
| "Emergency" | Nödsituation föreligger. Patientens samtycke för en tillfällig hävning kunde ej inhämtas. |

#### 6.1.28 TemporaryRevokeRegistrationType

Datatyp som representerar en registrering av en tillfällig hävning med de attribut som behövs.

| | | | |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id | Unik, global identifierare för den tillfälliga hävningen. Följer formatet för UUID. | 1 |
| blockId | Id | Unik, global identifierare som anger den spärr som den tillfälliga hävningen avser. Följer formatet för UUID. | 1 |
| endDate | xs:DateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1 |
| revokedForCareUnitId | HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1 |
| revokedForEmployeeId | HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en person, annars gäller hävningen för all behörig personal på angiven vårdenhet. | 0..1 |

### 6.2 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| | | | |
| :--- | :--- | :--- | :--- |
| BlockType (`BlockTypeType`) | Inner, Outer | [authorization-blocking-blocktype-cs](CodeSystem-authorization-blocking-blocktype-cs.md) | [authorization-blocking-blocktype-vs](ValueSet-authorization-blocking-blocktype-vs.md) |
| CheckStatus (`CheckStatusType`) | OK, BLOCKED, VALIDATIONERROR | [authorization-blocking-checkstatus-cs](CodeSystem-authorization-blocking-checkstatus-cs.md) | [authorization-blocking-checkstatus-vs](ValueSet-authorization-blocking-checkstatus-vs.md) |
| ResultCode (`ResultCodeType`) | OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE | [authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md) | [authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md) |
| TemporaryRevokeReason (`TemporaryRevokeReasonType`) | PatientsConsent, Emergency | [authorization-blocking-temporaryrevokereason-cs](CodeSystem-authorization-blocking-temporaryrevokereason-cs.md) | [authorization-blocking-temporaryrevokereason-vs](ValueSet-authorization-blocking-temporaryrevokereason-vs.md) |

### 6.3 Typer i domänschemat (XSD)

Genererat ur [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd).

#### AccessingActorType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| | | | |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId |   | 1..1 |
| careProviderId | HsaId |   | 1..1 |
| careUnitId | HsaId |   | 1..1 |

#### ActionType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.

| | | | |
| :--- | :--- | :--- | :--- |
| requestDate | dateTime |   | 1..1 |
| requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| registrationDate | dateTime |   | 1..1 |
| registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| reasonText | ReasonText |   | 0..1 |

#### ActorType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som identifierar en medarbetare/person.

| | | | |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId |   | 1..1 |
| assignmentId | HsaId |   | 0..1 |
| assignmentName | AssignmentNameType |   | 0..1 |

#### BlockHeaderType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar spärrdata, antingen innehållandes endast spärrdata, eller spärrdata tillsammans med avregistrerade spärrar, beroende på hur klienten efterfrågat data. Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| blocks | BlockType | Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr. | 0..* |
| nextCreatedOnOrAfter | dateTime |   | 1..1 |
| latestCancellation | dateTime |   | 1..1 |

#### BlockType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr.

| | | | |
| :--- | :--- | :--- | :--- |
| blockId | Id |   | 1..1 |
| blockType | BlockTypeType |   | 1..1 |
| informationStartDate | dateTime |   | 0..1 |
| informationEndDate | dateTime |   | 0..1 |
| informationCareUnitId | HsaId |   | 0..1 |
| informationCareProviderId | HsaId |   | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| excludedInformationTypes | InformationTypeType | Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation | 0..* |
| temporaryRevokes | TemporaryRevokeType | Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr. Datatypen beskriver grundformatet för en tillfällig hävning. | 0..* |
| ownerId | OwnerId |   | 0..1 |

#### CheckBlocksResultType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som innehåller resultatet från tjänsten CheckBlocks. Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| checkResults | CheckResultType | Datatyp som representerar ett svar från kontrollen av åtkomst till information. | 0..* |

#### CheckResultType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar ett svar från kontrollen av åtkomst till information.

| | | | |
| :--- | :--- | :--- | :--- |
| status | CheckStatusType |   | 1..1 |
| rowNumber | int |   | 1..1 |

#### ExtendedBlockType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar en spärr enligt det utökade formatet.

| | | | |
| :--- | :--- | :--- | :--- |
| blockId | Id |   | 1..1 |
| blockType | BlockTypeType |   | 1..1 |
| informationStartDate | dateTime |   | 0..1 |
| informationEndDate | dateTime |   | 0..1 |
| informationCareUnitId | HsaId |   | 0..1 |
| informationCareProviderId | HsaId |   | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| excludedInformationTypes | InformationTypeType | Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation | 0..* |
| registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| permanentRevokedInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| deletionInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| temporaryRevokes | ExtendedTemporaryRevokeType | Datatyp som representerar en tillfällig hävning enligt det utökade formatet. | 0..* |
| ownerId | OwnerId |   | 0..1 |
| locallyCreated | boolean |   | 1..1 |

#### ExtendedTemporaryRevokeType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar en tillfällig hävning enligt det utökade formatet.

| | | | |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id |   | 1..1 |
| endDate | dateTime |   | 1..1 |
| revokedForCareUnitId | HsaId |   | 1..1 |
| revokedForEmployeeId | HsaId |   | 0..1 |
| revocationReason | TemporaryRevokeReasonType |   | 0..1 |
| revocationReasonText | ReasonText |   | 0..1 |
| registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| cancellationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ownerId | OwnerId |   | 0..1 |

#### GetExtendedBlocksResultType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som innehåller resultatet från tjänsten GetExtendedBlocksForPatient. Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| blocks | ExtendedBlockType | Datatyp som representerar en spärr enligt det utökade formatet. | 0..* |

#### GetPatientIdResultType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som innehåller resultatet från tjänsten GetPatientIdsForCareProvider. Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| patientIds | IIType | En universellt unik identifierare. | 0..* |

#### IIType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

En universellt unik identifierare.

| | | | |
| :--- | :--- | :--- | :--- |
| root | string |   | 1..1 |
| extension | string |   | 0..1 |

#### InformationEntityType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar den information som behövs vid en kontroll om spärr föreligger.

| | | | |
| :--- | :--- | :--- | :--- |
| informationStartDate | dateTime |   | 1..1 |
| informationEndDate | dateTime |   | 1..1 |
| informationCareUnitId | HsaId |   | 1..1 |
| informationCareProviderId | HsaId |   | 1..1 |
| informationType | InformationTypeIdValue |   | 0..1 |
| rowNumber | int |   | 1..1 |

#### InformationTypeType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation

| | | | |
| :--- | :--- | :--- | :--- |
| infoTypeId | InformationTypeIdValue |   | 1..1 |
| infoTypeDescription | InformationTypeDescription |   | 1..1 |

#### ResultType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| | | | |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType |   | 1..1 |
| resultText | string |   | 0..1 |

#### TemporaryRevokeRegistrationType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar en registrering av en tillfällig hävning med de attribut som behövs.

| | | | |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id |   | 1..1 |
| blockId | Id |   | 1..1 |
| endDate | dateTime |   | 1..1 |
| revokedForCareUnitId | HsaId |   | 1..1 |
| revokedForEmployeeId | HsaId |   | 0..1 |

#### TemporaryRevokeType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr. Datatypen beskriver grundformatet för en tillfällig hävning.

| | | | |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id |   | 1..1 |
| endDate | dateTime |   | 1..1 |
| revokedForCareUnitId | HsaId |   | 1..1 |
| revokedForEmployeeId | HsaId |   | 0..1 |
| ownerId | OwnerId |   | 0..1 |

