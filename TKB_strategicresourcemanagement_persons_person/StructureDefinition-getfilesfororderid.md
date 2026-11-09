# GetFilesForOrderId — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFilesForOrderId — Response**

## Logical Model: GetFilesForOrderId — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getfilesfororderid | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:GetFilesForOrderId |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetFilesForOrderId (urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4, GetFilesForOrderIdResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-getfilesfororderid.json)

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
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getfilesfororderid",
  "version" : "4.0",
  "name" : "GetFilesForOrderId",
  "title" : "GetFilesForOrderId — Response",
  "status" : "active",
  "date" : "2026-11-09T03:51:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetFilesForOrderId\n(urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4, GetFilesForOrderIdResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getfilesfororderid",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getfilesfororderid",
      "path" : "getfilesfororderid",
      "short" : "GetFilesForOrderId — Response",
      "definition" : "Logisk modell för svaret i GetFilesForOrderId\n(urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4, GetFilesForOrderIdResponseType)."
    },
    {
      "id" : "getfilesfororderid.multimedia",
      "path" : "getfilesfororderid.multimedia",
      "short" : "MultimediaType",
      "definition" : "GetFilesResponse innehållande 0..* Multimedia element med data för, eller referenser till (URL-referenser), tillgängliga filer.",
      "comment" : "TKB-fält: `multimedia` (`urn:riv:strategicresourcemanagement:persons:person:5:MultimediaType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfilesfororderid.multimedia.id",
      "path" : "getfilesfororderid.multimedia.id",
      "short" : "id",
      "definition" : "id",
      "comment" : "TKB-fält: `../id` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../mediaType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfilesfororderid.multimedia.value",
      "path" : "getfilesfororderid.multimedia.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../value` (`base64Binary`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../reference` (`anyURI`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    }]
  }
}

```
