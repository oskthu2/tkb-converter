# DeleteQuestions — Request - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteQuestions — Request**

## Logical Model: DeleteQuestions — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/deletequestions-request | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:DeleteQuestionsRequest |
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
  "version" : "1.0",
  "name" : "DeleteQuestionsRequest",
  "title" : "DeleteQuestions — Request",
  "status" : "active",
  "date" : "2026-11-09T03:41:48+00:00",
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
      "short" : "II",
      "definition" : "Vårdenhetens hsa-id",
      "comment" : "TKB-fält: `careUnitId` (`hsaid`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "deletequestions-request.careUnitId.root",
      "path" : "deletequestions-request.careUnitId.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deletequestions-request.careUnitId.extension",
      "path" : "deletequestions-request.careUnitId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deletequestions-request.careUnitId.identifierName",
      "path" : "deletequestions-request.careUnitId.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deletequestions-request.careGiverId",
      "path" : "deletequestions-request.careGiverId",
      "short" : "II",
      "definition" : "Vårdgivarens hsa-id",
      "comment" : "TKB-fält: `careGiverId` (`hsaid`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "deletequestions-request.careGiverId.root",
      "path" : "deletequestions-request.careGiverId.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deletequestions-request.careGiverId.extension",
      "path" : "deletequestions-request.careGiverId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deletequestions-request.careGiverId.identifierName",
      "path" : "deletequestions-request.careGiverId.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deletequestions-request.questionId",
      "path" : "deletequestions-request.questionId",
      "short" : "questionId",
      "definition" : "Ärendelådans identitet på frågor som skall tas bort ur ärendelådan.",
      "comment" : "TKB-fält: `questionId` (`string`, kardinalitet 0..n).\n\nObs: modellen anger 1..* där TKB:n anger 0..*.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
