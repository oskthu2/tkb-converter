# ListMessages — Response - infrastructure: itintegration: messagebox v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListMessages — Response**

## Logical Model: ListMessages — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/listmessages | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:ListMessages |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i ListMessages (urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-itintegration-messagebox|current/StructureDefinition/StructureDefinition-listmessages.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listmessages.csv), [Excel](StructureDefinition-listmessages.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listmessages",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/listmessages",
  "version" : "1.0.0",
  "name" : "ListMessages",
  "title" : "ListMessages — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:32:38+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i ListMessages\n(urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/listmessages",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listmessages",
      "path" : "listmessages",
      "short" : "ListMessages — Response",
      "definition" : "Logisk modell för svaret i ListMessages\n(urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesResponseType)."
    },
    {
      "id" : "listmessages.result",
      "path" : "listmessages.result",
      "short" : "result",
      "definition" : "Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är \"INFO\" eller ERROR kan information skickas i errorId och/eller errorMessage.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listmessages.result.resultCode",
      "path" : "listmessages.result.resultCode",
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
      "id" : "listmessages.result.errorId",
      "path" : "listmessages.result.errorId",
      "short" : "errorId",
      "definition" : "errorId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listmessages.result.errorMessage",
      "path" : "listmessages.result.errorMessage",
      "short" : "errorMessage",
      "definition" : "errorMessage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listmessages.messageMetas",
      "path" : "listmessages.messageMetas",
      "short" : "messageMetas",
      "definition" : "messageMetas",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listmessages.messageMetas.messageId",
      "path" : "listmessages.messageMetas.messageId",
      "short" : "messageId",
      "definition" : "messageId (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listmessages.messageMetas.targetOrganization",
      "path" : "listmessages.messageMetas.targetOrganization",
      "short" : "targetOrganization",
      "definition" : "targetOrganization",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listmessages.messageMetas.serviceContractType",
      "path" : "listmessages.messageMetas.serviceContractType",
      "short" : "serviceContractType",
      "definition" : "serviceContractType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listmessages.messageMetas.messageSize",
      "path" : "listmessages.messageMetas.messageSize",
      "short" : "messageSize",
      "definition" : "messageSize (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listmessages.messageMetas.arrivalTime",
      "path" : "listmessages.messageMetas.arrivalTime",
      "short" : "arrivalTime",
      "definition" : "arrivalTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "listmessages.messageMetas.messageMetaStatus",
      "path" : "listmessages.messageMetas.messageMetaStatus",
      "short" : "messageMetaStatus",
      "definition" : "messageMetaStatus Heter status i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/ValueSet/messagebox-messagestatus-vs"
      }
    }]
  }
}

```
