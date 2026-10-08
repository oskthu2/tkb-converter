# GetLogsByOrder — Request - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogsByOrder — Request**

## Logical Model: GetLogsByOrder — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogsbyorder-request | *Version*:1.0 |
| Active as of 2026-10-08 | *Computable Name*:GetLogsByOrderRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetLogsByOrder (urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1, GetLogsByOrderType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-getlogsbyorder-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogsbyorder-request.csv), [Excel](StructureDefinition-getlogsbyorder-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogsbyorder-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogsbyorder-request",
  "version" : "1.0",
  "name" : "GetLogsByOrderRequest",
  "title" : "GetLogsByOrder — Request",
  "status" : "active",
  "date" : "2026-10-08T18:28:09+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetLogsByOrder\n(urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1, GetLogsByOrderType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogsbyorder-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogsbyorder-request",
      "path" : "getlogsbyorder-request",
      "short" : "GetLogsByOrder — Request",
      "definition" : "Logisk modell för begäran i GetLogsByOrder\n(urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1, GetLogsByOrderType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getlogsbyorder-request.logicalAddress",
      "path" : "getlogsbyorder-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Ineras nationella HSA-id SE165565594230-1000.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsbyorder-request.careProviderId",
      "path" : "getlogsbyorder-request.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsbyorder-request.careUnitId",
      "path" : "getlogsbyorder-request.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsbyorder-request.patientId",
      "path" : "getlogsbyorder-request.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogsbyorder-request.patientId.root",
      "path" : "getlogsbyorder-request.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsbyorder-request.patientId.iiExtension",
      "path" : "getlogsbyorder-request.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsbyorder-request.userId",
      "path" : "getlogsbyorder-request.userId",
      "short" : "userId",
      "definition" : "userId",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsbyorder-request.fromDate",
      "path" : "getlogsbyorder-request.fromDate",
      "short" : "fromDate",
      "definition" : "fromDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsbyorder-request.toDate",
      "path" : "getlogsbyorder-request.toDate",
      "short" : "toDate",
      "definition" : "toDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsbyorder-request.maxResultsPerFile",
      "path" : "getlogsbyorder-request.maxResultsPerFile",
      "short" : "maxResultsPerFile",
      "definition" : "maxResultsPerFile",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
