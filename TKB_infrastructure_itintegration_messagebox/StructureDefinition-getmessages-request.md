# GetMessages — Request - infrastructure: itintegration: messagebox v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMessages — Request**

## Logical Model: GetMessages — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/getmessages-request | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:GetMessagesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetMessages (urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1, GetMessagesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-itintegration-messagebox|current/StructureDefinition/StructureDefinition-getmessages-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmessages-request.csv), [Excel](StructureDefinition-getmessages-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmessages-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/getmessages-request",
  "version" : "1.0.0",
  "name" : "GetMessagesRequest",
  "title" : "GetMessages — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:32:38+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetMessages\n(urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1, GetMessagesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/getmessages-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmessages-request",
      "path" : "getmessages-request",
      "short" : "GetMessages — Request",
      "definition" : "Logisk modell för begäran i GetMessages\n(urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1, GetMessagesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getmessages-request.logicalAddress",
      "path" : "getmessages-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the National Service Platform",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmessages-request.messageIds",
      "path" : "getmessages-request.messageIds",
      "short" : "messageIds",
      "definition" : "messageIds (xs:long i schemat.)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
