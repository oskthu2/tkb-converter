# DeleteAnswers - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteAnswers**

## Logical Model: DeleteAnswers 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/deleteanswers | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:DeleteAnswers |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet DeleteAnswers (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-deleteanswers.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteanswers.csv), [Excel](StructureDefinition-deleteanswers.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteanswers",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/deleteanswers",
  "version" : "1.0",
  "name" : "DeleteAnswers",
  "title" : "DeleteAnswers",
  "status" : "active",
  "date" : "2026-11-09T03:41:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet DeleteAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/deleteanswers",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteanswers",
      "path" : "deleteanswers",
      "short" : "DeleteAnswers",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet DeleteAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1)."
    },
    {
      "id" : "deleteanswers.result",
      "path" : "deleteanswers.result",
      "short" : "ResultOfCall",
      "definition" : "result",
      "comment" : "TKB-fält: `result` (kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "deleteanswers.result.resultCode",
      "path" : "deleteanswers.result.resultCode",
      "short" : "resultCode",
      "definition" : "Information om anropet gick bra(OK, ERROR, INFO)",
      "comment" : "TKB-fält: `result.resultCode` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "deleteanswers.result.infoText",
      "path" : "deleteanswers.result.infoText",
      "short" : "infoText",
      "definition" : "Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text.",
      "comment" : "TKB-fält: `result.infoText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteanswers.result.errorId",
      "path" : "deleteanswers.result.errorId",
      "short" : "errorId",
      "definition" : "Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)",
      "comment" : "TKB-fält: `result.errorId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "deleteanswers.result.errorText",
      "path" : "deleteanswers.result.errorText",
      "short" : "errorText",
      "definition" : "Text som ytterliggare beskriver felet",
      "comment" : "TKB-fält: `result.errorText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
