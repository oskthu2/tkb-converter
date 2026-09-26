# DeleteMessages — Response - infrastructure: itintegration: messagebox v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteMessages — Response**

## Logical Model: DeleteMessages — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/deletemessages | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:DeleteMessages |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i DeleteMessages (urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1, DeleteMessagesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-itintegration-messagebox|current/StructureDefinition/StructureDefinition-deletemessages.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deletemessages.csv), [Excel](StructureDefinition-deletemessages.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deletemessages",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/deletemessages",
  "version" : "1.0.0",
  "name" : "DeleteMessages",
  "title" : "DeleteMessages — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:32:38+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i DeleteMessages\n(urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1, DeleteMessagesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/deletemessages",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deletemessages",
      "path" : "deletemessages",
      "short" : "DeleteMessages — Response",
      "definition" : "Logisk modell för svaret i DeleteMessages\n(urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1, DeleteMessagesResponseType)."
    },
    {
      "id" : "deletemessages.result",
      "path" : "deletemessages.result",
      "short" : "result",
      "definition" : "Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är \"INFO\" eller ERROR kan information skickas i errorId och/eller errorMessage.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deletemessages.result.resultCode",
      "path" : "deletemessages.result.resultCode",
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
      "id" : "deletemessages.result.errorId",
      "path" : "deletemessages.result.errorId",
      "short" : "errorId",
      "definition" : "errorId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "deletemessages.result.errorMessage",
      "path" : "deletemessages.result.errorMessage",
      "short" : "errorMessage",
      "definition" : "errorMessage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deletemessages.deletedIds",
      "path" : "deletemessages.deletedIds",
      "short" : "deletedIds",
      "definition" : "deletedIds (xs:long i schemat.)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
