# FindAllAnswers - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindAllAnswers**

## Logical Model: FindAllAnswers 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:FindAllAnswers |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllAnswers (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-findallanswers.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-findallanswers.csv), [Excel](StructureDefinition-findallanswers.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "findallanswers",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers",
  "version" : "3.1.0",
  "name" : "FindAllAnswers",
  "title" : "FindAllAnswers",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "findallanswers",
      "path" : "findallanswers",
      "short" : "FindAllAnswers",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1)."
    },
    {
      "id" : "findallanswers.result",
      "path" : "findallanswers.result",
      "short" : "Resultatinformation",
      "definition" : "Resultatinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "findallanswers.result.resultCode",
      "path" : "findallanswers.result.resultCode",
      "short" : "Resultatkod (OK, ERROR, INFO)",
      "definition" : "Resultatkod (OK, ERROR, INFO)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.result.infoText",
      "path" : "findallanswers.result.infoText",
      "short" : "Extra information om anropets utgång",
      "definition" : "Extra information om anropets utgång",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.result.errorId",
      "path" : "findallanswers.result.errorId",
      "short" : "Felkategori",
      "definition" : "Felkategori",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.result.errorText",
      "path" : "findallanswers.result.errorText",
      "short" : "Beskrivande text för felet",
      "definition" : "Beskrivande text för felet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answersLeft",
      "path" : "findallanswers.answersLeft",
      "short" : "Antal kvarvarande svar för denna vårdenhet",
      "definition" : "Antal kvarvarande svar för denna vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "findallanswers.answers",
      "path" : "findallanswers.answers",
      "short" : "Svar",
      "definition" : "Svar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "findallanswers.answers.answer",
      "path" : "findallanswers.answers.answer",
      "short" : "Lista av svar",
      "definition" : "Lista av svar",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.answerId",
      "path" : "findallanswers.answers.answer.answerId",
      "short" : "Ärendelådans identitet på det returnerade svaret",
      "definition" : "Används när man vill ta bort svaret från ärendelådan via DeleteAnswers.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.receivedDate",
      "path" : "findallanswers.answers.answer.receivedDate",
      "short" : "Datum då svaret inkom",
      "definition" : "Datum då svaret inkom",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.answerData",
      "path" : "findallanswers.answers.answer.answerData",
      "short" : "Själva svaret (se ReceiveMedicalCertificateAnswer)",
      "definition" : "Själva svaret (se ReceiveMedicalCertificateAnswer)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    }]
  }
}

```
