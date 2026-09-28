# Artifacts Summary - interoperability: headers — Gemensamma huvudelement v1.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Actor](StructureDefinition-actor.md) | Logisk modell för det gemensamma huvudelementet Actor (RIV-TA urn:riv:interoperability:headers:1, element Actor av typen ActorType). Identifierar den aktör som ett anrop görs för räkning av, t.ex. invånaren själv eller ett ombud för invånaren. |
| [ProcessingStatus](StructureDefinition-processingstatus.md) | Logisk modell för det gemensamma huvudelementet ProcessingStatus (RIV-TA urn:riv:interoperability:headers:1, element ProcessingStatus av typen ProcessingStatusType). Används av aggregerande tjänster för att rapportera tillbaka till konsumenten hur giltiga de returnerade uppgifterna är, med en statuspost per logisk adress (källsystem). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ActorType — ValueSet](ValueSet-actortype-vs.md) | Tillåtna värden för Actor.actorType enligt ActorTypeCS. |
| [CausingAgent — ValueSet](ValueSet-causingagent-vs.md) | Tillåtna värden för ProcessingStatus.processingStatusList.lastUnsuccessfulSynchError.causingAgent enligt CausingAgentCS. |
| [ProcessingStatusCode — ValueSet](ValueSet-processingstatuscode-vs.md) | Tillåtna värden för ProcessingStatus.processingStatusList.statusCode enligt ProcessingStatusCodeCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ActorType](CodeSystem-actortype-cs.md) | Kodverk ActorTypeEnum enligt interoperability_headers_1.1.xsd (urn:riv:interoperability:headers:1). Anger vilken typ av aktör som anges i Actor. |
| [CausingAgent](CodeSystem-causingagent-cs.md) | Kodverk CausingAgentEnum enligt interoperability_headers_1.1.xsd (urn:riv:interoperability:headers:1). Identifierar den komponent som felade vid en misslyckad synkronisering. |
| [ProcessingStatusCode](CodeSystem-processingstatuscode-cs.md) | Kodverk StatusCodeEnum enligt interoperability_headers_1.1.xsd (urn:riv:interoperability:headers:1). Beskriver kvaliteten på de uppgifter som en aggregerande tjänst returnerat för en logisk adress. |

