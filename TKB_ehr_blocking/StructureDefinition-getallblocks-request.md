# GetAllBlocks — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllBlocks — Request**

## Logical Model: GetAllBlocks — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocks-request | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:GetAllBlocksRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetAllBlocks. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-getallblocks-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getallblocks-request.csv), [Excel](StructureDefinition-getallblocks-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getallblocks-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocks-request",
  "version" : "3.2.2",
  "name" : "GetAllBlocksRequest",
  "title" : "GetAllBlocks — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetAllBlocks.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocks-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getallblocks-request",
      "path" : "getallblocks-request",
      "short" : "GetAllBlocks — Request",
      "definition" : "Logisk modell för requestparametrar i GetAllBlocks."
    },
    {
      "id" : "getallblocks-request.careProviderIds",
      "path" : "getallblocks-request.careProviderIds",
      "short" : "HSA-id på de vårdgivare vars spärrar skall hämtas. Om utelämnat hämtas alla spärrar oavsett organisation.",
      "definition" : "HSA-id på de vårdgivare vars spärrar skall hämtas. Om utelämnat hämtas alla spärrar oavsett organisation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks-request.createdOnOrAfter",
      "path" : "getallblocks-request.createdOnOrAfter",
      "short" : "Startdatum — returnerar endast spärrar lagrade/förändrade på eller efter detta datum.",
      "definition" : "Startdatum — returnerar endast spärrar lagrade/förändrade på eller efter detta datum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
