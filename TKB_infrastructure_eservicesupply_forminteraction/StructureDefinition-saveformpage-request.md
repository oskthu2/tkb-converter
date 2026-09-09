# SaveFormPage — Request - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SaveFormPage — Request**

## Logical Model: SaveFormPage — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformpage-request | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:SaveFormPageRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i SaveFormPage. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-saveformpage-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-saveformpage-request.csv), [Excel](StructureDefinition-saveformpage-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "saveformpage-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformpage-request",
  "version" : "2.1",
  "name" : "SaveFormPageRequest",
  "title" : "SaveFormPage — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i SaveFormPage.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformpage-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "saveformpage-request",
      "path" : "saveformpage-request",
      "short" : "SaveFormPage — Request",
      "definition" : "Logisk modell för requestparametrar i SaveFormPage."
    },
    {
      "id" : "saveformpage-request.formID",
      "path" : "saveformpage-request.formID",
      "short" : "Formulär-id",
      "definition" : "Formulärets unika id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswers",
      "path" : "saveformpage-request.pageAnswers",
      "short" : "Svar på sida (PageAnswerType)",
      "definition" : "Invånarens besvarade frågor för aktuell sida.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "saveformpage-request.subjectOfCare",
      "path" : "saveformpage-request.subjectOfCare",
      "short" : "Personnummer",
      "definition" : "Starkt autentiserad användares personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "saveformpage-request.temporarySave",
      "path" : "saveformpage-request.temporarySave",
      "short" : "Temporärspara",
      "definition" : "True = temporär sparning (utan validering), False/utelämnad = normal hantering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "saveformpage-request.actor",
      "path" : "saveformpage-request.actor",
      "short" : "Aktör",
      "definition" : "Aktören kan vara invånaren/patienten själv, vårdnadshavare eller vårdpersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "saveformpage-request.actor.actorType",
      "path" : "saveformpage-request.actor.actorType",
      "short" : "Aktörstyp",
      "definition" : "Typ av aktör.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformpage-request.actor.actorId",
      "path" : "saveformpage-request.actor.actorId",
      "short" : "Aktörs-id",
      "definition" : "Identifierare för aktören.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
