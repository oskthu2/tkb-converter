# HamtaBarn — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaBarn — Response**

## Logical Model: HamtaBarn — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtabarn | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaBarn |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaBarn (urn:riv:se.apotekensservice:pris:HamtaBarnResponder:1, HamtaBarnResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-hamtabarn.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtabarn.csv), [Excel](StructureDefinition-hamtabarn.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtabarn",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtabarn",
  "version" : "2.0.0",
  "name" : "HamtaBarn",
  "title" : "HamtaBarn — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaBarn\n(urn:riv:se.apotekensservice:pris:HamtaBarnResponder:1, HamtaBarnResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtabarn",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtabarn",
      "path" : "hamtabarn",
      "short" : "HamtaBarn — Response",
      "definition" : "Logisk modell för svaret i HamtaBarn\n(urn:riv:se.apotekensservice:pris:HamtaBarnResponder:1, HamtaBarnResponseType)."
    },
    {
      "id" : "hamtabarn.barn",
      "path" : "hamtabarn.barn",
      "short" : "barn",
      "definition" : "En lista med personnr för barnen.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
