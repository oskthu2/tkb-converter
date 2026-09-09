# DeleteAnswers — Request - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteAnswers — Request**

## Logical Model: DeleteAnswers — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/deleteanswers-request | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:DeleteAnswersRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet DeleteAnswers (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1). Tar bort svar som mellanlagrats av vården och tidigare hämtats via FindAllAnswers. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-deleteanswers-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteanswers-request.csv), [Excel](StructureDefinition-deleteanswers-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteanswers-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/deleteanswers-request",
  "version" : "3.1.0",
  "name" : "DeleteAnswersRequest",
  "title" : "DeleteAnswers — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet DeleteAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1).\nTar bort svar som mellanlagrats av vården och tidigare hämtats via FindAllAnswers.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/deleteanswers-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteanswers-request",
      "path" : "deleteanswers-request",
      "short" : "DeleteAnswers — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet DeleteAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1).\nTar bort svar som mellanlagrats av vården och tidigare hämtats via FindAllAnswers."
    },
    {
      "id" : "deleteanswers-request.careUnitId",
      "path" : "deleteanswers-request.careUnitId",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Vårdenhetens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deleteanswers-request.careGiverId",
      "path" : "deleteanswers-request.careGiverId",
      "short" : "Vårdgivarens HSA-id",
      "definition" : "Vårdgivarens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deleteanswers-request.answerId",
      "path" : "deleteanswers-request.answerId",
      "short" : "Ärendelådans identitet på svar som skall tas bort",
      "definition" : "Ärendelådans identitet på svar som skall tas bort",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
