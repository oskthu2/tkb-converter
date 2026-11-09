# FindContent — Request - itintegration: engagementindex v1.0.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindContent — Request**

## Logical Model: FindContent — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/findcontent-request | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:FindContentRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet FindContent (RIV-TA urn:riv:itintegration:engagementindex:FindContent:1). Alla angivna attribut används för exakt matchningsfiltrering av sökresultatet. Åtkomst till FindContent i nationell EI-instans är begränsad till aggregerande tjänster i den nationella aggregeringsplattformen. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-engagementindex|current/StructureDefinition/StructureDefinition-findcontent-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-findcontent-request.csv), [Excel](StructureDefinition-findcontent-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "findcontent-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/findcontent-request",
  "version" : "1.0",
  "name" : "FindContentRequest",
  "title" : "FindContent — Request",
  "status" : "active",
  "date" : "2026-11-09T03:42:52+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet FindContent\n(RIV-TA urn:riv:itintegration:engagementindex:FindContent:1).\nAlla angivna attribut används för exakt matchningsfiltrering av sökresultatet.\nÅtkomst till FindContent i nationell EI-instans är begränsad till aggregerande\ntjänster i den nationella aggregeringsplattformen.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/findcontent-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "findcontent-request",
      "path" : "findcontent-request",
      "short" : "FindContent — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet FindContent\n(RIV-TA urn:riv:itintegration:engagementindex:FindContent:1).\nAlla angivna attribut används för exakt matchningsfiltrering av sökresultatet.\nÅtkomst till FindContent i nationell EI-instans är begränsad till aggregerande\ntjänster i den nationella aggregeringsplattformen."
    },
    {
      "id" : "findcontent-request.registeredResidentIdentification",
      "path" : "findcontent-request.registeredResidentIdentification",
      "short" : "registeredResidentIdentification",
      "definition" : "Enligt formatregler i meddelandemodellen",
      "comment" : "TKB-fält: `registeredResidentIdentification` (`Nationell accepterad personidentitet`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/RegisteredResidentIdentificationType"]
      }]
    },
    {
      "id" : "findcontent-request.serviceDomain",
      "path" : "findcontent-request.serviceDomain",
      "short" : "serviceDomain",
      "definition" : "Namnrymd för Tjänstedomän\n\nexempel:\n\nurn:riv:clinicalprocess:activity:request",
      "comment" : "TKB-fält: `serviceDomain` (`URN`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "findcontent-request.categorization",
      "path" : "findcontent-request.categorization",
      "short" : "categorization",
      "definition" : "Kodverk enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `categorization` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.logicalAddress",
      "path" : "findcontent-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `logicalAddress` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.businessObjectInstanceIdentifier",
      "path" : "findcontent-request.businessObjectInstanceIdentifier",
      "short" : "businessObjectInstanceIdentifier",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.clinicalProcessInterestId",
      "path" : "findcontent-request.clinicalProcessInterestId",
      "short" : "clinicalProcessInterestId",
      "definition" : "Enligt tjänstedomänens dokumentation",
      "comment" : "TKB-fält: `clinicalProcessInterestId` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.mostRecentContent",
      "path" : "findcontent-request.mostRecentContent",
      "short" : "mostRecentContent",
      "definition" : "YYYYMMDDhhmmss.",
      "comment" : "TKB-fält: `mostRecentContent` (`TS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "findcontent-request.sourceSystem",
      "path" : "findcontent-request.sourceSystem",
      "short" : "sourceSystem",
      "definition" : "Källsystemet som innehåller den information som EI-posten pekar ut.\n\nI regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen.",
      "comment" : "TKB-fält: `sourceSystem` (`HSA-id`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.dataController",
      "path" : "findcontent-request.dataController",
      "short" : "dataController",
      "definition" : "Identitet för den PUA som ansvarar för postens innehåll.\n\nI första hand organisationsnummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)\n\nViktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgiftsansvarig för sin information i engagemangsindex.",
      "comment" : "TKB-fält: `dataController` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.owner",
      "path" : "findcontent-request.owner",
      "short" : "owner",
      "definition" : "HSA-id för den organisations vars index tog emot uppdateringsbegäran.",
      "comment" : "TKB-fält: `owner` (`HSA-id`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
