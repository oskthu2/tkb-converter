# FindAllAnswers — Request - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindAllAnswers — Request**

## Logical Model: FindAllAnswers — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers-request | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:FindAllAnswersRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet FindAllAnswers (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1). Returnerar svar från FK på tidigare skickade frågor från vården. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-findallanswers-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-findallanswers-request.csv), [Excel](StructureDefinition-findallanswers-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "findallanswers-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers-request",
  "version" : "3.1.0",
  "name" : "FindAllAnswersRequest",
  "title" : "FindAllAnswers — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet FindAllAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).\nReturnerar svar från FK på tidigare skickade frågor från vården.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "findallanswers-request",
      "path" : "findallanswers-request",
      "short" : "FindAllAnswers — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet FindAllAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).\nReturnerar svar från FK på tidigare skickade frågor från vården."
    },
    {
      "id" : "findallanswers-request.careUnitId",
      "path" : "findallanswers-request.careUnitId",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Vårdenhetens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "findallanswers-request.careGiverId",
      "path" : "findallanswers-request.careGiverId",
      "short" : "Vårdgivarens HSA-id",
      "definition" : "Vårdgivarens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
