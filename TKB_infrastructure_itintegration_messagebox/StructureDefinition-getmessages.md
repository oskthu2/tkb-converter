# GetMessages — Response - infrastructure: itintegration: messagebox v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMessages — Response**

## Logical Model: GetMessages — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/getmessages | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:GetMessages |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetMessages (urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1, GetMessagesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-itintegration-messagebox|current/StructureDefinition/StructureDefinition-getmessages.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmessages.csv), [Excel](StructureDefinition-getmessages.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmessages",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/getmessages",
  "version" : "1.0.0",
  "name" : "GetMessages",
  "title" : "GetMessages — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:32:38+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetMessages\n(urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1, GetMessagesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/getmessages",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmessages",
      "path" : "getmessages",
      "short" : "GetMessages — Response",
      "definition" : "Logisk modell för svaret i GetMessages\n(urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1, GetMessagesResponseType)."
    },
    {
      "id" : "getmessages.result",
      "path" : "getmessages.result",
      "short" : "result",
      "definition" : "Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är \"INFO\" eller ERROR kan information skickas i errorId och/eller errorMessage.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmessages.result.resultCode",
      "path" : "getmessages.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/ValueSet/messagebox-resultcode-vs"
      }
    },
    {
      "id" : "getmessages.result.errorId",
      "path" : "getmessages.result.errorId",
      "short" : "errorId",
      "definition" : "errorId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmessages.result.errorMessage",
      "path" : "getmessages.result.errorMessage",
      "short" : "errorMessage",
      "definition" : "errorMessage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmessages.responses",
      "path" : "getmessages.responses",
      "short" : "responses",
      "definition" : "responses",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmessages.responses.messageId",
      "path" : "getmessages.responses.messageId",
      "short" : "messageId",
      "definition" : "messageId (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmessages.responses.targetOrganization",
      "path" : "getmessages.responses.targetOrganization",
      "short" : "targetOrganization",
      "definition" : "targetOrganization",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmessages.responses.serviceContractType",
      "path" : "getmessages.responses.serviceContractType",
      "short" : "serviceContractType",
      "definition" : "Type which describes a service contract. Used in interaction GetSupportedServiceContracts.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmessages.responses.serviceContractType.ServiceContractNamespace",
      "path" : "getmessages.responses.serviceContractType.ServiceContractNamespace",
      "short" : "ServiceContractNamespace",
      "definition" : "ServiceContractNamespace",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getmessages.responses.message",
      "path" : "getmessages.responses.message",
      "short" : "message",
      "definition" : "message",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
