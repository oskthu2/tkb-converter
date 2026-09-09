# GetInfoLogsForCareProvider — Request - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetInfoLogsForCareProvider — Request**

## Logical Model: GetInfoLogsForCareProvider — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforcareprovider-request | *Version*:1.2.3 |
| Draft as of 2026-09-09 | *Computable Name*:GetInfoLogsForCareProviderRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetInfoLogsForCareProvider. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getinfologsforcareprovider-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getinfologsforcareprovider-request.csv), [Excel](StructureDefinition-getinfologsforcareprovider-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getinfologsforcareprovider-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforcareprovider-request",
  "version" : "1.2.3",
  "name" : "GetInfoLogsForCareProviderRequest",
  "title" : "GetInfoLogsForCareProvider — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:53:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetInfoLogsForCareProvider.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforcareprovider-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getinfologsforcareprovider-request",
      "path" : "getinfologsforcareprovider-request",
      "short" : "GetInfoLogsForCareProvider — Request",
      "definition" : "Logisk modell för requestparametrar i GetInfoLogsForCareProvider."
    },
    {
      "id" : "getinfologsforcareprovider-request.careProviderId",
      "path" : "getinfologsforcareprovider-request.careProviderId",
      "short" : "Vårdgivare som är informationsägare (HSA-id)",
      "definition" : "Vårdgivare som är informationsägare (HSA-id)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getinfologsforcareprovider-request.fromDate",
      "path" : "getinfologsforcareprovider-request.fromDate",
      "short" : "Obligatoriskt startdatum för rapportuttaget",
      "definition" : "Obligatoriskt startdatum för rapportuttaget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getinfologsforcareprovider-request.toDate",
      "path" : "getinfologsforcareprovider-request.toDate",
      "short" : "Obligatoriskt slutdatum för rapportuttaget",
      "definition" : "Obligatoriskt slutdatum för rapportuttaget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getinfologsforcareprovider-request.queuedReportId",
      "path" : "getinfologsforcareprovider-request.queuedReportId",
      "short" : "Id på en pågående rapport (UUID, 36 tecken)",
      "definition" : "Id på en pågående rapport (UUID, 36 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
