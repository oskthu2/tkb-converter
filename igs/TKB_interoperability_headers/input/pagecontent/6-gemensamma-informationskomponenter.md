# 6 Gemensamma informationskomponenter

> **SAKNAS I KÄLLDOKUMENT — kontrollera manuellt.** Det finns ingen TKB för domänen. Avsnittet återger schemat `interoperability_headers_1.1.xsd` fullständigt: alla element, typer, kardinaliteter, enum-värden och all dokumentation. Citaten under "Dokumentation i schemat" är ordagranna (engelska) från `xs:documentation`.

Namnrymd: `urn:riv:interoperability:headers:1` (`elementFormDefault="qualified"`).

## Actor

Toppnivåelement `Actor` av typen `ActorType`. Identifierar den aktör som ett anrop görs för räkning av. Schemat har ingen `xs:documentation` för elementet.

FHIR: [StructureDefinition/actor](StructureDefinition-actor.html)

| Element | XSD-typ | Kardinalitet | FHIR-element | Beskrivning |
|---------|---------|--------------|--------------|-------------|
| `actorId` | `ActorIdType` (restriktion av `xs:string`) | 1..1 | `actorId` (string) | Aktörens identitet. Format anges inte i schemat. |
| `actorType` | `ActorTypeEnum` | 1..1 | `actorType` (code) | Typ av aktör, se kodverk nedan. |
| `xs:any` (`##other`, lax) | – | 0..* | – | Utökningspunkt för element i andra namnrymder. |

### ActorTypeEnum

FHIR: [CodeSystem/actortype-cs](CodeSystem-actortype-cs.html), [ValueSet/actortype-vs](ValueSet-actortype-vs.html)

| Kod | Betydelse |
|-----|-----------|
| `subject_of_care` | Invånaren/patienten själv |
| `subject_of_care_agent` | Ombud för invånaren/patienten |

## ProcessingStatus

Toppnivåelement `ProcessingStatus` av typen `ProcessingStatusType`. Används av aggregerande tjänster för att rapportera tillbaka till konsumenten hur giltiga de returnerade uppgifterna är.

FHIR: [StructureDefinition/processingstatus](StructureDefinition-processingstatus.html)

### Dokumentation i schemat

> ProcessingStatus is used by aggregating services to report back to the consumer regarding the validity of the data returned.
>
> The following status codes are used to describe the quality of the data returned for a specific logicalAddress:
>
> 1. DataFromSource — No data was available in cache, up-to-date data retrieved from source system
> 2. DataFromCache — Up-to-date data returned from cache, no call performed to source system
> 3. DataFromCacheSynchFailed — Required synch with source system failed. Potentially out-of-date data returned from Cache
> 4. NoDataSynchFailed — No data returned, no data in cache and call to source system failed
>
> The following table describes the relationship between the status code element and the other elements in a processing-status-record:

| Status Code | isResponseFromCache | isResponseInSynch | lastSuccessfulSynch | lastUnsuccessfulSynch | lastUnsuccessfulSynchError |
|-------------|---------------------|-------------------|---------------------|-----------------------|----------------------------|
| DataFromSource | False | True | Current timestamp | Emtpy | Empty |
| DataFromCache | True | True | Last time for succ. call | Empty | Empty |
| DataFromCacheSynchFailed | True | False | Last time for succ. call | Current timestamp | Relevant error info |
| NoDataSynchFailed | False | False | Empty | Current timestamp | Relevant error info |

Tabellen är modellerad som invarianten `processingstatus-statuscode-consistency` (statusCode mot de två booleska fälten) och `processingstatus-unsuccessful-only-when-not-in-synch` (felfälten får bara finnas när `isResponseInSynch` är false).

### ProcessingStatusType

| Element | XSD-typ | Kardinalitet | FHIR-element | Beskrivning |
|---------|---------|--------------|--------------|-------------|
| `ProcessingStatusList` | `ProcessingStatusRecordType` | 0..* | `processingStatusList` (BackboneElement) | En statuspost per logisk adress. |
| `xs:any` (`##other`, lax) | – | 0..* | – | Utökningspunkt för element i andra namnrymder. |

### ProcessingStatusRecordType

| Element | XSD-typ | Kardinalitet | FHIR-element | Dokumentation i schemat |
|---------|---------|--------------|--------------|-------------------------|
| `logicalAddress` | `xs:string` | 1..1 | `logicalAddress` (string) | Logical address for the source system of this status record. |
| `statusCode` | `StatusCodeEnum` | 1..1 | `statusCode` (code) | Status code for the data returned from this logical address as described above. |
| `isResponseFromCache` | `xs:boolean` | 1..1 | `isResponseFromCache` (boolean) | Is true if the response from this logical address comes from the cache, either: directly without calling the source system; after a failed call to the source system during this processing. Is false if: the source system was called during the processing and returned up-to-date data; no data could be returned, neither from the cache nor from the source system. |
| `isResponseInSynch` | `xs:boolean` | 1..1 | `isResponseInSynch` (boolean) | Is true if the response is up-to-date, either: the data in the cache was already up-to-date; the call to the source system during this processing was successful. Is false if the response is not up-to-date, the call to the source system during this processing failed. See element lastUnsuccessfulSynchError for error-information regarding the failed call. |
| `lastSuccessfulSynch` | `xs:string` | 1..1 | `lastSuccessfulSynch` (string, 0..1) | Specifies the timestamp of the most recent successfull call to the source system from the aggregating service, if any. |
| `lastUnsuccessfulSynch` | `xs:string` | 0..1 | `lastUnsuccessfulSynch` (string) | Optional element that only is provided if the isResponseInSynch element is false. Specifies the timestamp of the most recent unsuccessfull call to the source system from the aggregating service. |
| `lastUnsuccessfulSynchError` | `LastUnsuccessfulSynchErrorType` | 0..1 | `lastUnsuccessfulSynchError` (BackboneElement) | Optional element that only is provided if the isResponseInSynch element is false. Describes the error that occurred when calling the source system during this processing. |

`lastSuccessfulSynch` är obligatoriskt i schemat men ska enligt tabellen ovan vara tomt vid `NoDataSynchFailed`. FHIR-modellen har därför kardinaliteten 0..1 (ASSUME-IH-002).

### LastUnsuccessfulSynchErrorType

| Element | XSD-typ | Kardinalitet | FHIR-element | Dokumentation i schemat |
|---------|---------|--------------|--------------|-------------------------|
| `causingAgent` | `CausingAgentEnum` | 1..1 | `causingAgent` (code) | Identifies the failing component. |
| `code` | `xs:string` | 1..1 | `errorCode` (string) | Describes the error with a code that is significant for the causingAgent. |
| `text` | `xs:string` | 1..1 | `errorText` (string) | Describes the error with a free form text message. |
| `xs:any` (`##other`, lax) | – | 0..* | – | Utökningspunkt för element i andra namnrymder. |

`code` och `text` har döpts om till `errorCode` och `errorText` i FHIR-modellen enligt projektets konvention för reserverade elementnamn.

### StatusCodeEnum

FHIR: [CodeSystem/processingstatuscode-cs](CodeSystem-processingstatuscode-cs.html), [ValueSet/processingstatuscode-vs](ValueSet-processingstatuscode-vs.html)

| Kod | Betydelse |
|-----|-----------|
| `DataFromSource` | Inga uppgifter fanns i cache; aktuella uppgifter hämtades från källsystemet. |
| `DataFromCache` | Aktuella uppgifter returnerades från cache; inget anrop gjordes till källsystemet. |
| `DataFromCacheSynchFailed` | Nödvändig synkronisering med källsystemet misslyckades; eventuellt inaktuella uppgifter returnerades från cache. |
| `NoDataSynchFailed` | Inga uppgifter returnerades: inga uppgifter i cache och anropet till källsystemet misslyckades. |

### CausingAgentEnum

FHIR: [CodeSystem/causingagent-cs](CodeSystem-causingagent-cs.html), [ValueSet/causingagent-vs](ValueSet-causingagent-vs.html)

| Kod | Betydelse |
|-----|-----------|
| `service_catalog` | Tjänstekatalogen |
| `virtualization_platform` | Virtualiseringsplattformen (tjänsteplattformen) |
| `service_producer` | Tjänsteproducenten (källsystemet) |
| `engagement_index` | Engagemangsindex |
| `other` | Annan komponent |

De svenska betydelserna för `ActorTypeEnum` och `CausingAgentEnum` är tolkningar av kodvärdena, eftersom schemat saknar dokumentation för dem (ASSUME-IH-003).
