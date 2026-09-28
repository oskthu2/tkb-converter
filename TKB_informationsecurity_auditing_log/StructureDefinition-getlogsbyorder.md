# GetLogsByOrder — Response - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogsByOrder — Response**

## Logical Model: GetLogsByOrder — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogsbyorder | *Version*:2.0.8 |
| Draft as of 2026-09-28 | *Computable Name*:GetLogsByOrder |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetLogsByOrder (urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1, GetLogsByOrderResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-getlogsbyorder.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogsbyorder.csv), [Excel](StructureDefinition-getlogsbyorder.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogsbyorder",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogsbyorder",
  "version" : "2.0.8",
  "name" : "GetLogsByOrder",
  "title" : "GetLogsByOrder — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:01:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetLogsByOrder\n(urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1, GetLogsByOrderResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogsbyorder",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogsbyorder",
      "path" : "getlogsbyorder",
      "short" : "GetLogsByOrder — Response",
      "definition" : "Logisk modell för svaret i GetLogsByOrder\n(urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1, GetLogsByOrderResponseType)."
    },
    {
      "id" : "getlogsbyorder.result",
      "path" : "getlogsbyorder.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogsbyorder.result.resultCode",
      "path" : "getlogsbyorder.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/ValueSet/auditing-log-resultcode-vs"
      }
    },
    {
      "id" : "getlogsbyorder.result.resultText",
      "path" : "getlogsbyorder.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsbyorder.orderId",
      "path" : "getlogsbyorder.orderId",
      "short" : "orderId",
      "definition" : "orderId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
