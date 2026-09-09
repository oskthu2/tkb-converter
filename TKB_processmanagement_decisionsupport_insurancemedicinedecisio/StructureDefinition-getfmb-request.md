# GetFmb — Request - processmanagement: decisionsupport: insurancemedicinedecisionsupport v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFmb — Request**

## Logical Model: GetFmb — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getfmb-request | *Version*:1.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetFmbRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetFmb. (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1). Anges inga parametrar returneras samtliga aktiva underlag. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processmanagement-decisionsupport-insurancemedicinedecisio|current/StructureDefinition/StructureDefinition-getfmb-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getfmb-request.csv), [Excel](StructureDefinition-getfmb-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getfmb-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getfmb-request",
  "version" : "1.0.0",
  "name" : "GetFmbRequest",
  "title" : "GetFmb — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:05:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetFmb.\n(RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1).\nAnges inga parametrar returneras samtliga aktiva underlag.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getfmb-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getfmb-request",
      "path" : "getfmb-request",
      "short" : "GetFmb — Request",
      "definition" : "Logisk modell för requestparametrar i GetFmb.\n(RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1).\nAnges inga parametrar returneras samtliga aktiva underlag."
    },
    {
      "id" : "getfmb-request.underlagsId",
      "path" : "getfmb-request.underlagsId",
      "short" : "Identifierare för ett specifikt beslutsunderlag",
      "definition" : "Anger om endast ett eller ett antal underlag skall hämtas och i så fall vilka.\nAnges inget underlagsId returneras alla underlag.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfmb-request.diagnosKod",
      "path" : "getfmb-request.diagnosKod",
      "short" : "Diagnoskod för filtrering av beslutsunderlag",
      "definition" : "Anger om beslutsunderlag endast skall hämtas för en eller ett antal diagnoskoder.\nAnges med ICD-10-SE kodverket.\nAnges ingen diagnoskod returneras alla underlag.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getfmb-request.avenEjAktiva",
      "path" : "getfmb-request.avenEjAktiva",
      "short" : "Anger om även inaktiva beslutsunderlag skall hämtas",
      "definition" : "Anger om även ej aktiva beslutsunderlag skall hämtas.\nAnges ej attributet hämtas endast aktiva.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
