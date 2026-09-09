# GetLogsForUser — Request - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogsForUser — Request**

## Logical Model: GetLogsForUser — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforuser-request | *Version*:1.2.3 |
| Draft as of 2026-09-09 | *Computable Name*:GetLogsForUserRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetLogsForUser. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getlogsforuser-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogsforuser-request.csv), [Excel](StructureDefinition-getlogsforuser-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogsforuser-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforuser-request",
  "version" : "1.2.3",
  "name" : "GetLogsForUserRequest",
  "title" : "GetLogsForUser — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:53:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetLogsForUser.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforuser-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogsforuser-request",
      "path" : "getlogsforuser-request",
      "short" : "GetLogsForUser — Request",
      "definition" : "Logisk modell för requestparametrar i GetLogsForUser."
    },
    {
      "id" : "getlogsforuser-request.careProviderId",
      "path" : "getlogsforuser-request.careProviderId",
      "short" : "Vårdgivare som är ägare till loggposter",
      "definition" : "Vårdgivare som är ägare till loggposter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlogsforuser-request.userId",
      "path" : "getlogsforuser-request.userId",
      "short" : "Medarbetare vars åtkomster ska hämtas (HSA-id)",
      "definition" : "Medarbetare vars åtkomster ska hämtas (HSA-id)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlogsforuser-request.fromDate",
      "path" : "getlogsforuser-request.fromDate",
      "short" : "Obligatoriskt startdatum för rapportuttaget",
      "definition" : "Obligatoriskt startdatum för rapportuttaget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforuser-request.toDate",
      "path" : "getlogsforuser-request.toDate",
      "short" : "Obligatoriskt slutdatum för rapportuttaget",
      "definition" : "Obligatoriskt slutdatum för rapportuttaget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforuser-request.queuedReportId",
      "path" : "getlogsforuser-request.queuedReportId",
      "short" : "Id på en pågående rapport (UUID, 36 tecken)",
      "definition" : "Id på en pågående rapport (UUID, 36 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforuser-request.careUnitId",
      "path" : "getlogsforuser-request.careUnitId",
      "short" : "HSA-id för specifik vårdenhet (valfritt filter)",
      "definition" : "HSA-id för specifik vårdenhet (valfritt filter)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
