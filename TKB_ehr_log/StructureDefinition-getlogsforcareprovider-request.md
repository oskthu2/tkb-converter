# GetLogsForCareProvider — Request - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogsForCareProvider — Request**

## Logical Model: GetLogsForCareProvider — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforcareprovider-request | *Version*:1.2.3 |
| Draft as of 2026-09-09 | *Computable Name*:GetLogsForCareProviderRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetLogsForCareProvider. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getlogsforcareprovider-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogsforcareprovider-request.csv), [Excel](StructureDefinition-getlogsforcareprovider-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogsforcareprovider-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforcareprovider-request",
  "version" : "1.2.3",
  "name" : "GetLogsForCareProviderRequest",
  "title" : "GetLogsForCareProvider — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:53:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetLogsForCareProvider.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforcareprovider-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogsforcareprovider-request",
      "path" : "getlogsforcareprovider-request",
      "short" : "GetLogsForCareProvider — Request",
      "definition" : "Logisk modell för requestparametrar i GetLogsForCareProvider."
    },
    {
      "id" : "getlogsforcareprovider-request.careProviderId",
      "path" : "getlogsforcareprovider-request.careProviderId",
      "short" : "Vårdgivare som är ägare till loggposter",
      "definition" : "HSA-id för vårdgivaren vars loggposter ska hämtas. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlogsforcareprovider-request.fromDate",
      "path" : "getlogsforcareprovider-request.fromDate",
      "short" : "Obligatoriskt startdatum för rapportuttaget",
      "definition" : "Obligatoriskt startdatum för rapportuttaget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforcareprovider-request.toDate",
      "path" : "getlogsforcareprovider-request.toDate",
      "short" : "Obligatoriskt slutdatum för rapportuttaget",
      "definition" : "Obligatoriskt slutdatum för rapportuttaget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforcareprovider-request.queuedReportId",
      "path" : "getlogsforcareprovider-request.queuedReportId",
      "short" : "Id på en pågående rapport (UUID, 36 tecken)",
      "definition" : "Returneras från tidigare anrop med REPORTONQUEUE/REPORTINPROCESS.\nMåste anges vid uppföljande anrop för att undvika att ny rapport skapas.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider-request.careUnitId",
      "path" : "getlogsforcareprovider-request.careUnitId",
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
