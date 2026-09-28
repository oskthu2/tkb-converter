# GetFilesForOrderId — Response - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFilesForOrderId — Response**

## Logical Model: GetFilesForOrderId — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getfilesfororderid | *Version*:2.0.8 |
| Draft as of 2026-09-28 | *Computable Name*:GetFilesForOrderId |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetFilesForOrderId (urn:riv:informationsecurity:auditing:log:GetFilesForOrderIdResponder:1, GetFilesForOrderIdResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-getfilesfororderid.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getfilesfororderid.csv), [Excel](StructureDefinition-getfilesfororderid.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getfilesfororderid",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getfilesfororderid",
  "version" : "2.0.8",
  "name" : "GetFilesForOrderId",
  "title" : "GetFilesForOrderId — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:01:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetFilesForOrderId\n(urn:riv:informationsecurity:auditing:log:GetFilesForOrderIdResponder:1, GetFilesForOrderIdResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getfilesfororderid",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getfilesfororderid",
      "path" : "getfilesfororderid",
      "short" : "GetFilesForOrderId — Response",
      "definition" : "Logisk modell för svaret i GetFilesForOrderId\n(urn:riv:informationsecurity:auditing:log:GetFilesForOrderIdResponder:1, GetFilesForOrderIdResponseType)."
    },
    {
      "id" : "getfilesfororderid.result",
      "path" : "getfilesfororderid.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getfilesfororderid.result.resultCode",
      "path" : "getfilesfororderid.result.resultCode",
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
      "id" : "getfilesfororderid.result.resultText",
      "path" : "getfilesfororderid.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfilesfororderid.multimedia",
      "path" : "getfilesfororderid.multimedia",
      "short" : "multimedia",
      "definition" : "Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getfilesfororderid.multimedia.multimediaId",
      "path" : "getfilesfororderid.multimedia.multimediaId",
      "short" : "multimediaId",
      "definition" : "multimediaId Heter id i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfilesfororderid.multimedia.mediaType",
      "path" : "getfilesfororderid.multimedia.mediaType",
      "short" : "mediaType",
      "definition" : "mediaType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfilesfororderid.multimedia.multimediaValue",
      "path" : "getfilesfororderid.multimedia.multimediaValue",
      "short" : "multimediaValue",
      "definition" : "multimediaValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "getfilesfororderid.multimedia.reference",
      "path" : "getfilesfororderid.multimedia.reference",
      "short" : "reference",
      "definition" : "reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    }]
  }
}

```
