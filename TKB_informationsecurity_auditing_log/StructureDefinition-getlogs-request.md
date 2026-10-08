# GetLogs — Request - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogs — Request**

## Logical Model: GetLogs — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogs-request | *Version*:2.0 |
| Active as of 2026-10-08 | *Computable Name*:GetLogsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetLogs (urn:riv:informationsecurity:auditing:log:GetLogsResponder:2, GetLogsType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-getlogs-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogs-request.csv), [Excel](StructureDefinition-getlogs-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogs-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogs-request",
  "version" : "2.0",
  "name" : "GetLogsRequest",
  "title" : "GetLogs — Request",
  "status" : "active",
  "date" : "2026-10-08T18:28:09+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetLogs\n(urn:riv:informationsecurity:auditing:log:GetLogsResponder:2, GetLogsType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogs-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogs-request",
      "path" : "getlogs-request",
      "short" : "GetLogs — Request",
      "definition" : "Logisk modell för begäran i GetLogs\n(urn:riv:informationsecurity:auditing:log:GetLogsResponder:2, GetLogsType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getlogs-request.logicalAddress",
      "path" : "getlogs-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Ineras nationella HSA-id SE165565594230-1000.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs-request.careProviderId",
      "path" : "getlogs-request.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs-request.patientId",
      "path" : "getlogs-request.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs-request.patientId.root",
      "path" : "getlogs-request.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs-request.patientId.iiExtension",
      "path" : "getlogs-request.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs-request.userId",
      "path" : "getlogs-request.userId",
      "short" : "userId",
      "definition" : "userId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs-request.fromDate",
      "path" : "getlogs-request.fromDate",
      "short" : "fromDate",
      "definition" : "fromDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogs-request.toDate",
      "path" : "getlogs-request.toDate",
      "short" : "toDate",
      "definition" : "toDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogs-request.careUnitId",
      "path" : "getlogs-request.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs-request.queuedReportId",
      "path" : "getlogs-request.queuedReportId",
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
