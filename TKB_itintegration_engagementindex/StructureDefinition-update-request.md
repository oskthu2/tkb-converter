# Update — Request - itintegration: engagementindex v1.0.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Update — Request**

## Logical Model: Update — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/update-request | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:UpdateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet Update (RIV-TA urn:riv:itintegration:engagementindex:Update:1). Kontraktet används av källsystem för att skapa, uppdatera och radera indexposter i ett engagemangsindex. Flera engagemangstransaktioner kan paketeras i ett och samma anrop (max 1000 poster i nationell instans). 
Alla fält i EngagementType-typen ingår i modellen, inklusive fält som sätts av engagemangsindex och INTE ska populeras av konsumenten (creationTime, updateTime, owner). Se respektive fältbeskrivning. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-engagementindex|current/StructureDefinition/StructureDefinition-update-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-update-request.csv), [Excel](StructureDefinition-update-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "update-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/update-request",
  "version" : "1.0",
  "name" : "UpdateRequest",
  "title" : "Update — Request",
  "status" : "active",
  "date" : "2026-11-09T03:42:52+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet Update\n(RIV-TA urn:riv:itintegration:engagementindex:Update:1).\nKontraktet används av källsystem för att skapa, uppdatera och radera\nindexposter i ett engagemangsindex. Flera engagemangstransaktioner\nkan paketeras i ett och samma anrop (max 1000 poster i nationell instans).\n\nAlla fält i EngagementType-typen ingår i modellen, inklusive fält som\nsätts av engagemangsindex och INTE ska populeras av konsumenten\n(creationTime, updateTime, owner). Se respektive fältbeskrivning.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/update-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "update-request",
      "path" : "update-request",
      "short" : "Update — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet Update\n(RIV-TA urn:riv:itintegration:engagementindex:Update:1).\nKontraktet används av källsystem för att skapa, uppdatera och radera\nindexposter i ett engagemangsindex. Flera engagemangstransaktioner\nkan paketeras i ett och samma anrop (max 1000 poster i nationell instans).\n\nAlla fält i EngagementType-typen ingår i modellen, inklusive fält som\nsätts av engagemangsindex och INTE ska populeras av konsumenten\n(creationTime, updateTime, owner). Se respektive fältbeskrivning."
    },
    {
      "id" : "update-request.engagementTransaction",
      "path" : "update-request.engagementTransaction",
      "short" : "EngagementTransactionType",
      "definition" : "engagementTransaction",
      "comment" : "TKB-fält: `engagementTransaction` (`EngagementTransactionType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "update-request.engagementTransaction.deleteFlag",
      "path" : "update-request.engagementTransaction.deleteFlag",
      "short" : "deleteFlag",
      "definition" : "True anger att posten ska tas bort. False anger att posten ska skapas/uppdateras.",
      "comment" : "TKB-fält: `engagementTransaction.deleteFlag` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement",
      "path" : "update-request.engagementTransaction.engagement",
      "short" : "EngagementType",
      "definition" : "engagement",
      "comment" : "TKB-fält: `engagementTransaction .engagement` (`EngagementType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.registeredResidentIdentification",
      "path" : "update-request.engagementTransaction.engagement.registeredResidentIdentification",
      "short" : "registeredResidentIdentification",
      "definition" : "Enligt formatregler i meddelandemodellen",
      "comment" : "TKB-fält: `engagementTransaction .engagement.registeredResidentIdentification` (`Nationell accepterad personidentitet`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/RegisteredResidentIdentificationType"]
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.serviceDomain",
      "path" : "update-request.engagementTransaction.engagement.serviceDomain",
      "short" : "serviceDomain",
      "definition" : "Namnrymd för Tjänstedomän\n\nexempel:\n\nurn:riv:clinicalprocess:activity:request",
      "comment" : "TKB-fält: `engagementTransaction .engagement.serviceDomain` (`URN`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.categorization",
      "path" : "update-request.engagementTransaction.engagement.categorization",
      "short" : "categorization",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.categorization` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.logicalAddress",
      "path" : "update-request.engagementTransaction.engagement.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.logicalAddress` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.businessObjectInstanceIdentifier",
      "path" : "update-request.engagementTransaction.engagement.businessObjectInstanceIdentifier",
      "short" : "businessObjectInstanceIdentifier",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.clinicalProcessInterestId",
      "path" : "update-request.engagementTransaction.engagement.clinicalProcessInterestId",
      "short" : "clinicalProcessInterestId",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.clinicalProcess InterestId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.mostRecentContent",
      "path" : "update-request.engagementTransaction.engagement.mostRecentContent",
      "short" : "mostRecentContent",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.mostRecentContent` (`TS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.sourceSystem",
      "path" : "update-request.engagementTransaction.engagement.sourceSystem",
      "short" : "sourceSystem",
      "definition" : "Källsystemet som innehåller den information som EI-posten pekar ut.\n\nI regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.sourceSystem` (`HSA-id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.creationTime",
      "path" : "update-request.engagementTransaction.engagement.creationTime",
      "short" : "creationTime",
      "definition" : "creationTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.updateTime",
      "path" : "update-request.engagementTransaction.engagement.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.dataController",
      "path" : "update-request.engagementTransaction.engagement.dataController",
      "short" : "dataController",
      "definition" : "Identitet för den PUA som ansvarar för postens innehåll.\n\nI första hand organisations-nummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)\n\nViktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgifts-ansvarig för sin information i engagemangsindex.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.dataController` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "update-request.engagementTransaction.engagement.owner",
      "path" : "update-request.engagementTransaction.engagement.owner",
      "short" : "owner",
      "definition" : "owner",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
