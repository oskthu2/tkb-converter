# CheckBlocks — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckBlocks — Request**

## Logical Model: CheckBlocks — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/checkblocks-request | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:CheckBlocksRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CheckBlocks v3.0. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-checkblocks-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-checkblocks-request.csv), [Excel](StructureDefinition-checkblocks-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "checkblocks-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/checkblocks-request",
  "version" : "3.2.2",
  "name" : "CheckBlocksRequest",
  "title" : "CheckBlocks — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CheckBlocks v3.0.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/checkblocks-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkblocks-request",
      "path" : "checkblocks-request",
      "short" : "CheckBlocks — Request",
      "definition" : "Logisk modell för requestparametrar i CheckBlocks v3.0."
    },
    {
      "id" : "checkblocks-request.accessingActor",
      "path" : "checkblocks-request.accessingActor",
      "short" : "Aktören (personal/vårdenhet) som begär åtkomst",
      "definition" : "Aktören (personal/vårdenhet) som begär åtkomst",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkblocks-request.accessingActor.employeeId",
      "path" : "checkblocks-request.accessingActor.employeeId",
      "short" : "HSA-id för den anställde som begär åtkomst",
      "definition" : "HSA-id för den anställde som begär åtkomst",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.accessingActor.careProviderId",
      "path" : "checkblocks-request.accessingActor.careProviderId",
      "short" : "HSA-id för aktörens vårdgivare",
      "definition" : "HSA-id för aktörens vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.accessingActor.careUnitId",
      "path" : "checkblocks-request.accessingActor.careUnitId",
      "short" : "HSA-id för aktörens vårdenhet",
      "definition" : "HSA-id för aktörens vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities",
      "path" : "checkblocks-request.informationEntities",
      "short" : "Lista med informationsresurser vars spärrning skall kontrolleras",
      "definition" : "Lista med informationsresurser vars spärrning skall kontrolleras",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities.informationCareProviderId",
      "path" : "checkblocks-request.informationEntities.informationCareProviderId",
      "short" : "HSA-id för vårdgivaren vars information kontrolleras",
      "definition" : "HSA-id för vårdgivaren vars information kontrolleras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities.informationCareUnitId",
      "path" : "checkblocks-request.informationEntities.informationCareUnitId",
      "short" : "HSA-id för vårdenhet (krävs vid inre spärr)",
      "definition" : "HSA-id för vårdenhet (krävs vid inre spärr)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities.informationType",
      "path" : "checkblocks-request.informationEntities.informationType",
      "short" : "Informationstyp att kontrollera (lämna tomt för alla typer)",
      "definition" : "Informationstyp att kontrollera (lämna tomt för alla typer)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.patientId",
      "path" : "checkblocks-request.patientId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
