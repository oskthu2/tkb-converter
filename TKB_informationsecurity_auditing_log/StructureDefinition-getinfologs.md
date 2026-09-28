# GetInfoLogs — Response - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetInfoLogs — Response**

## Logical Model: GetInfoLogs — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getinfologs | *Version*:2.0.8 |
| Draft as of 2026-09-28 | *Computable Name*:GetInfoLogs |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetInfoLogs (urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2, GetInfoLogsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-getinfologs.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getinfologs.csv), [Excel](StructureDefinition-getinfologs.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getinfologs",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getinfologs",
  "version" : "2.0.8",
  "name" : "GetInfoLogs",
  "title" : "GetInfoLogs — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:01:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetInfoLogs\n(urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2, GetInfoLogsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getinfologs",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getinfologs",
      "path" : "getinfologs",
      "short" : "GetInfoLogs — Response",
      "definition" : "Logisk modell för svaret i GetInfoLogs\n(urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2, GetInfoLogsResponseType)."
    },
    {
      "id" : "getinfologs.infoLogsResult",
      "path" : "getinfologs.infoLogsResult",
      "short" : "infoLogsResult",
      "definition" : "Datatyp som returneras av tjänst. careProviders är ej satt vid eventuella fel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.reportResult",
      "path" : "getinfologs.infoLogsResult.reportResult",
      "short" : "reportResult",
      "definition" : "reportResult",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.reportResult.result",
      "path" : "getinfologs.infoLogsResult.reportResult.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.reportResult.result.resultCode",
      "path" : "getinfologs.infoLogsResult.reportResult.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/ValueSet/auditing-log-resultcode-vs"
      }
    },
    {
      "id" : "getinfologs.infoLogsResult.reportResult.result.resultText",
      "path" : "getinfologs.infoLogsResult.reportResult.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.reportResult.startInterval",
      "path" : "getinfologs.infoLogsResult.reportResult.startInterval",
      "short" : "startInterval",
      "definition" : "startInterval",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.reportResult.endInterval",
      "path" : "getinfologs.infoLogsResult.reportResult.endInterval",
      "short" : "endInterval",
      "definition" : "endInterval",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.reportResult.queuedReportId",
      "path" : "getinfologs.infoLogsResult.reportResult.queuedReportId",
      "short" : "queuedReportId",
      "definition" : "queuedReportId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.reportResult.queueTime",
      "path" : "getinfologs.infoLogsResult.reportResult.queueTime",
      "short" : "queueTime",
      "definition" : "queueTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.careProviders",
      "path" : "getinfologs.infoLogsResult.careProviders",
      "short" : "careProviders",
      "definition" : "Datatyp som håller lista med vårdgivare. Kan vara en tom lista.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.careProviders.careProvider",
      "path" : "getinfologs.infoLogsResult.careProviders.careProvider",
      "short" : "careProvider",
      "definition" : "Datatyp som representerar en vårdgivare.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.careProviders.careProvider.careProviderId",
      "path" : "getinfologs.infoLogsResult.careProviders.careProvider.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologs.infoLogsResult.careProviders.careProvider.careProviderName",
      "path" : "getinfologs.infoLogsResult.careProviders.careProvider.careProviderName",
      "short" : "careProviderName",
      "definition" : "careProviderName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
