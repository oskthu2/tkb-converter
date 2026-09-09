# CreateForm — Request - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateForm — Request**

## Logical Model: CreateForm — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createform-request | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:CreateFormInput |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CreateForm. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-createform-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createform-request.csv), [Excel](StructureDefinition-createform-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createform-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createform-request",
  "version" : "2.1",
  "name" : "CreateFormInput",
  "title" : "CreateForm — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CreateForm.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createform-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createform-request",
      "path" : "createform-request",
      "short" : "CreateForm — Request",
      "definition" : "Logisk modell för requestparametrar i CreateForm."
    },
    {
      "id" : "createform-request.healthcare-Facility-CareUnit",
      "path" : "createform-request.healthcare_Facility_CareUnit",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Hsa-Id (Vårdenhet/enhets-id). T.ex. se2321000016-1hz3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createform-request.subjectOfCare",
      "path" : "createform-request.subjectOfCare",
      "short" : "Personnummer",
      "definition" : "Starkt autentiserad användares personnummer. Tomt fält indikerar anonym användare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createform-request.templateId",
      "path" : "createform-request.templateId",
      "short" : "Mall-id",
      "definition" : "Mallid för den formulärmall som skall användas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.templateVersion",
      "path" : "createform-request.templateVersion",
      "short" : "Mallversion",
      "definition" : "Mallens version. Utelämnas används den senaste versionen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "createform-request.clinicalProcessInterestId",
      "path" : "createform-request.clinicalProcessInterestId",
      "short" : "Hälsoärende-id",
      "definition" : "Indikerar att formuläret ingår i ett hälsoärende.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createform-request.actor",
      "path" : "createform-request.actor",
      "short" : "Aktör",
      "definition" : "Aktör som skapar formuläret — invånaren själv, vårdnadshavare eller vårdpersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createform-request.actor.actorType",
      "path" : "createform-request.actor.actorType",
      "short" : "Aktörstyp",
      "definition" : "Typ av aktör.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.actor.actorId",
      "path" : "createform-request.actor.actorId",
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
