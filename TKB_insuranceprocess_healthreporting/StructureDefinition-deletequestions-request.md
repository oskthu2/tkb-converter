# DeleteQuestions — Request - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteQuestions — Request**

## Logical Model: DeleteQuestions — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/deletequestions-request | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:DeleteQuestionsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet DeleteQuestions (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1). Tar bort frågor som mellanlagrats av vården och tidigare hämtats via FindAllQuestions. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-deletequestions-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deletequestions-request.csv), [Excel](StructureDefinition-deletequestions-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deletequestions-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/deletequestions-request",
  "version" : "3.1.0",
  "name" : "DeleteQuestionsRequest",
  "title" : "DeleteQuestions — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet DeleteQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1).\nTar bort frågor som mellanlagrats av vården och tidigare hämtats via FindAllQuestions.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/deletequestions-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deletequestions-request",
      "path" : "deletequestions-request",
      "short" : "DeleteQuestions — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet DeleteQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1).\nTar bort frågor som mellanlagrats av vården och tidigare hämtats via FindAllQuestions."
    },
    {
      "id" : "deletequestions-request.careUnitId",
      "path" : "deletequestions-request.careUnitId",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Vårdenhetens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deletequestions-request.careGiverId",
      "path" : "deletequestions-request.careGiverId",
      "short" : "Vårdgivarens HSA-id",
      "definition" : "Vårdgivarens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deletequestions-request.questionId",
      "path" : "deletequestions-request.questionId",
      "short" : "Ärendelådans identitet på frågor som skall tas bort",
      "definition" : "Ärendelådans identitet på frågor som skall tas bort",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
