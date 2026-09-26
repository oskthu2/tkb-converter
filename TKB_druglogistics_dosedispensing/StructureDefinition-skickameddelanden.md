# SkickaMeddelanden — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkickaMeddelanden — Response**

## Logical Model: SkickaMeddelanden — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skickameddelanden | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:SkickaMeddelanden |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i SkickaMeddelanden (urn:riv:druglogistics:dosedispensing:SkickaMeddelandenResponder:1, SkickaMeddelandenResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-skickameddelanden.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-skickameddelanden.csv), [Excel](StructureDefinition-skickameddelanden.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "skickameddelanden",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skickameddelanden",
  "version" : "1.1.0",
  "name" : "SkickaMeddelanden",
  "title" : "SkickaMeddelanden — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i SkickaMeddelanden\n(urn:riv:druglogistics:dosedispensing:SkickaMeddelandenResponder:1, SkickaMeddelandenResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skickameddelanden",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "skickameddelanden",
      "path" : "skickameddelanden",
      "short" : "SkickaMeddelanden — Response",
      "definition" : "Logisk modell för svaret i SkickaMeddelanden\n(urn:riv:druglogistics:dosedispensing:SkickaMeddelandenResponder:1, SkickaMeddelandenResponseType)."
    },
    {
      "id" : "skickameddelanden.resultatkod",
      "path" : "skickameddelanden.resultatkod",
      "short" : "resultatkod",
      "definition" : "resultatkod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-resultatkod-vs"
      }
    },
    {
      "id" : "skickameddelanden.meddelandetext",
      "path" : "skickameddelanden.meddelandetext",
      "short" : "meddelandetext",
      "definition" : "meddelandetext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skickameddelanden.meddelandeid",
      "path" : "skickameddelanden.meddelandeid",
      "short" : "meddelandeid",
      "definition" : "meddelandeid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "skickameddelanden.meddelande",
      "path" : "skickameddelanden.meddelande",
      "short" : "meddelande",
      "definition" : "meddelande",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
