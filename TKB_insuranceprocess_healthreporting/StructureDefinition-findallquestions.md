# FindAllQuestions - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindAllQuestions**

## Logical Model: FindAllQuestions 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallquestions | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:FindAllQuestions |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllQuestions (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-findallquestions.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-findallquestions.csv), [Excel](StructureDefinition-findallquestions.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "findallquestions",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallquestions",
  "version" : "3.1.0",
  "name" : "FindAllQuestions",
  "title" : "FindAllQuestions",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallquestions",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "findallquestions",
      "path" : "findallquestions",
      "short" : "FindAllQuestions",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1)."
    },
    {
      "id" : "findallquestions.result",
      "path" : "findallquestions.result",
      "short" : "Resultatinformation",
      "definition" : "Resultatinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "findallquestions.result.resultCode",
      "path" : "findallquestions.result.resultCode",
      "short" : "Resultatkod (OK, ERROR, INFO)",
      "definition" : "Resultatkod (OK, ERROR, INFO)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.result.infoText",
      "path" : "findallquestions.result.infoText",
      "short" : "Extra information om anropets utgång",
      "definition" : "Extra information om anropets utgång",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.result.errorId",
      "path" : "findallquestions.result.errorId",
      "short" : "Felkategori",
      "definition" : "Felkategori",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.result.errorText",
      "path" : "findallquestions.result.errorText",
      "short" : "Beskrivande text för felet",
      "definition" : "Beskrivande text för felet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questionsLeft",
      "path" : "findallquestions.questionsLeft",
      "short" : "Antal kvarvarande frågor för denna vårdenhet",
      "definition" : "Antal kvarvarande frågor för denna vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "findallquestions.questions",
      "path" : "findallquestions.questions",
      "short" : "Frågor",
      "definition" : "Frågor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "findallquestions.questions.question",
      "path" : "findallquestions.questions.question",
      "short" : "Lista av frågor",
      "definition" : "Lista av frågor",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "findallquestions.questions.question.questionId",
      "path" : "findallquestions.questions.question.questionId",
      "short" : "Ärendelådans identitet på den returnerade frågan",
      "definition" : "Används när man vill ta bort frågan från ärendelådan via DeleteQuestions.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "findallquestions.questions.question.receivedDate",
      "path" : "findallquestions.questions.question.receivedDate",
      "short" : "Datum då frågan inkom",
      "definition" : "Datum då frågan inkom",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "findallquestions.questions.question.questionData",
      "path" : "findallquestions.questions.question.questionData",
      "short" : "Själva frågan (se ReceiveMedicalCertificateQuestion)",
      "definition" : "Själva frågan (se ReceiveMedicalCertificateQuestion)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    }]
  }
}

```
