# GetBinaryData — Response - infrastructure: itintegration: dataexchange v1.0.0-draft

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetBinaryData — Response**

## Logical Model: GetBinaryData — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-dataexchange/StructureDefinition/getbinarydata | *Version*:1.0.0-draft |
| Draft as of 2026-09-28 | *Computable Name*:GetBinaryData |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetBinaryData (urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1, GetBinaryDataResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-itintegration-dataexchange|current/StructureDefinition/StructureDefinition-getbinarydata.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getbinarydata.csv), [Excel](StructureDefinition-getbinarydata.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getbinarydata",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-itintegration-dataexchange/StructureDefinition/getbinarydata",
  "version" : "1.0.0-draft",
  "name" : "GetBinaryData",
  "title" : "GetBinaryData — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:08:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetBinaryData\n(urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1, GetBinaryDataResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-itintegration-dataexchange/StructureDefinition/getbinarydata",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getbinarydata",
      "path" : "getbinarydata",
      "short" : "GetBinaryData — Response",
      "definition" : "Logisk modell för svaret i GetBinaryData\n(urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1, GetBinaryDataResponseType)."
    },
    {
      "id" : "getbinarydata.binaryData",
      "path" : "getbinarydata.binaryData",
      "short" : "binaryData",
      "definition" : "binaryData",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getbinarydata.binaryData.contentType",
      "path" : "getbinarydata.binaryData.contentType",
      "short" : "contentType",
      "definition" : "contentType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbinarydata.binaryData.data",
      "path" : "getbinarydata.binaryData.data",
      "short" : "data",
      "definition" : "data",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "getbinarydata.result",
      "path" : "getbinarydata.result",
      "short" : "result",
      "definition" : "result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getbinarydata.result.resultCode",
      "path" : "getbinarydata.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-itintegration-dataexchange/ValueSet/dataexchange-resultcode-vs"
      }
    },
    {
      "id" : "getbinarydata.result.resultText",
      "path" : "getbinarydata.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
