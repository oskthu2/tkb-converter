# DeleteMessages — Request - infrastructure: itintegration: messagebox v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteMessages — Request**

## Logical Model: DeleteMessages — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/deletemessages-request | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:DeleteMessagesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i DeleteMessages (urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1, DeleteMessagesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-itintegration-messagebox|current/StructureDefinition/StructureDefinition-deletemessages-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deletemessages-request.csv), [Excel](StructureDefinition-deletemessages-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deletemessages-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/deletemessages-request",
  "version" : "1.0.0",
  "name" : "DeleteMessagesRequest",
  "title" : "DeleteMessages — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:32:38+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i DeleteMessages\n(urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1, DeleteMessagesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/deletemessages-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deletemessages-request",
      "path" : "deletemessages-request",
      "short" : "DeleteMessages — Request",
      "definition" : "Logisk modell för begäran i DeleteMessages\n(urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1, DeleteMessagesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "deletemessages-request.logicalAddress",
      "path" : "deletemessages-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the National Service Platform",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deletemessages-request.messageIds",
      "path" : "deletemessages-request.messageIds",
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
