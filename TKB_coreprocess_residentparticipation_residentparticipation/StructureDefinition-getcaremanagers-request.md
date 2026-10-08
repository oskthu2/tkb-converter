# GetCareManagers — Request - coreprocess: residentparticipation: residentparticipation v1.0.0-rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareManagers — Request**

## Logical Model: GetCareManagers — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/getcaremanagers-request | *Version*:1.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetCareManagersRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetCareManagers (urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.coreprocess-residentparticipation-residentparticipation|current/StructureDefinition/StructureDefinition-getcaremanagers-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcaremanagers-request.csv), [Excel](StructureDefinition-getcaremanagers-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcaremanagers-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/getcaremanagers-request",
  "version" : "1.0",
  "name" : "GetCareManagersRequest",
  "title" : "GetCareManagers — Request",
  "status" : "draft",
  "date" : "2026-10-08T18:13:26+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetCareManagers\n(urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/getcaremanagers-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcaremanagers-request",
      "path" : "getcaremanagers-request",
      "short" : "GetCareManagers — Request",
      "definition" : "Logisk modell för begäran i GetCareManagers\n(urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getcaremanagers-request.logicalAddress",
      "path" : "getcaremanagers-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The county/region code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.patientId",
      "path" : "getcaremanagers-request.patientId",
      "short" : "patientId",
      "definition" : "patientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers-request.patientId.root",
      "path" : "getcaremanagers-request.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.patientId.iIExtension",
      "path" : "getcaremanagers-request.patientId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careGiverId",
      "path" : "getcaremanagers-request.careGiverId",
      "short" : "careGiverId",
      "definition" : "careGiverId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers-request.careGiverId.root",
      "path" : "getcaremanagers-request.careGiverId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careGiverId.iIExtension",
      "path" : "getcaremanagers-request.careGiverId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careUnitId",
      "path" : "getcaremanagers-request.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers-request.careUnitId.root",
      "path" : "getcaremanagers-request.careUnitId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careUnitId.iIExtension",
      "path" : "getcaremanagers-request.careUnitId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType",
      "path" : "getcaremanagers-request.careManagerType",
      "short" : "careManagerType",
      "definition" : "careManagerType",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.cVCode",
      "path" : "getcaremanagers-request.careManagerType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.codeSystem",
      "path" : "getcaremanagers-request.careManagerType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.codeSystemName",
      "path" : "getcaremanagers-request.careManagerType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.codeSystemVersion",
      "path" : "getcaremanagers-request.careManagerType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.displayName",
      "path" : "getcaremanagers-request.careManagerType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.originalText",
      "path" : "getcaremanagers-request.careManagerType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careProcessId",
      "path" : "getcaremanagers-request.careProcessId",
      "short" : "careProcessId",
      "definition" : "careProcessId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers-request.careProcessId.root",
      "path" : "getcaremanagers-request.careProcessId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careProcessId.iIExtension",
      "path" : "getcaremanagers-request.careProcessId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
