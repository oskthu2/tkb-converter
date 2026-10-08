# GetInfoLogs — Request - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetInfoLogs — Request**

## Logical Model: GetInfoLogs — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getinfologs-request | *Version*:2.0 |
| Active as of 2026-10-08 | *Computable Name*:GetInfoLogsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetInfoLogs (urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2, GetInfoLogsType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-getinfologs-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getinfologs-request.csv), [Excel](StructureDefinition-getinfologs-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getinfologs-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getinfologs-request",
  "version" : "2.0",
  "name" : "GetInfoLogsRequest",
  "title" : "GetInfoLogs — Request",
  "status" : "active",
  "date" : "2026-10-08T18:28:09+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetInfoLogs\n(urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2, GetInfoLogsType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getinfologs-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getinfologs-request",
      "path" : "getinfologs-request",
      "short" : "GetInfoLogs — Request",
      "definition" : "Logisk modell för begäran i GetInfoLogs\n(urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2, GetInfoLogsType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getinfologs-request.logicalAddress",
      "path" : "getinfologs-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Ineras nationella HSA-id SE165565594230-1000.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologs-request.careProviderId",
      "path" : "getinfologs-request.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologs-request.patientId",
      "path" : "getinfologs-request.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getinfologs-request.patientId.root",
      "path" : "getinfologs-request.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologs-request.patientId.iiExtension",
      "path" : "getinfologs-request.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologs-request.fromDate",
      "path" : "getinfologs-request.fromDate",
      "short" : "fromDate",
      "definition" : "fromDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getinfologs-request.toDate",
      "path" : "getinfologs-request.toDate",
      "short" : "toDate",
      "definition" : "toDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getinfologs-request.queuedReportId",
      "path" : "getinfologs-request.queuedReportId",
      "short" : "queuedReportId",
      "definition" : "queuedReportId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
