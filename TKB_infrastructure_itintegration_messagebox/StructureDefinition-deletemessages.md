# DeleteMessages — Response - infrastructure: itintegration: messagebox v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteMessages — Response**

## Logical Model: DeleteMessages — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/deletemessages | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:DeleteMessages |
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
  "version" : "1.0",
  "name" : "DeleteMessages",
  "title" : "DeleteMessages — Response",
  "status" : "active",
  "date" : "2026-11-06T21:33:36+00:00",
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
      "comment" : "TKB-fält: `result` (kardinalitet 1..1).\n\n**Modellanteckning:** Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är \"INFO\" eller ERROR kan information skickas i errorId och/eller errorMessage.",
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
      "definition" : "Information om anropet gick bra(OK, ERROR, INFO)",
      "comment" : "TKB-fält: `result.code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Heter code i schemat.",
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
      "definition" : "Enda möjliga är:\n\n1=INTERNAL, 2=UNREAD_DELETE",
      "comment" : "TKB-fält: `result.errorId` (`string`, kardinalitet 0..1).",
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
      "definition" : "Text som ytterliggare beskriver felet",
      "comment" : "TKB-fält: `result.errorMessage` (`string`, kardinalitet 0..1).",
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
      "definition" : "Meddelandeidentitet",
      "comment" : "TKB-fält: `deletedIds` (`long`, kardinalitet 0..n).\n\n**Modellanteckning:** deletedIds (xs:long i schemat.)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
