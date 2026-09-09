# FindAllQuestions — Request - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindAllQuestions — Request**

## Logical Model: FindAllQuestions — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallquestions-request | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:FindAllQuestionsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet FindAllQuestions (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1). Returnerar frågor från FK som mellanlagrats av vården. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-findallquestions-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-findallquestions-request.csv), [Excel](StructureDefinition-findallquestions-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "findallquestions-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallquestions-request",
  "version" : "3.1.0",
  "name" : "FindAllQuestionsRequest",
  "title" : "FindAllQuestions — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet FindAllQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1).\nReturnerar frågor från FK som mellanlagrats av vården.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallquestions-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "findallquestions-request",
      "path" : "findallquestions-request",
      "short" : "FindAllQuestions — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet FindAllQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1).\nReturnerar frågor från FK som mellanlagrats av vården."
    },
    {
      "id" : "findallquestions-request.careUnitId",
      "path" : "findallquestions-request.careUnitId",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "system = urn:oid:1.2.752.129.2.1.4.1 (HSA-ID).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "findallquestions-request.careGiverId",
      "path" : "findallquestions-request.careGiverId",
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
