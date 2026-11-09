# CreateForm — Request - infrastructure: eservicesupply: forminteraction v2.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateForm — Request**

## Logical Model: CreateForm — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createform-request | *Version*:2.1.1 |
| Active as of 2026-11-09 | *Computable Name*:CreateFormInput |
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
  "version" : "2.1.1",
  "name" : "CreateFormInput",
  "title" : "CreateForm — Request",
  "status" : "active",
  "date" : "2026-11-09T03:38:34+00:00",
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
      "id" : "createform-request.healthcare-facility-CareUnit",
      "path" : "createform-request.healthcare_facility_CareUnit",
      "short" : "healthcare_facility_CareUnit",
      "definition" : "healthcare_facility_CareUnit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.clinicalProcessInterestId",
      "path" : "createform-request.clinicalProcessInterestId",
      "short" : "clinicalProcessInterestId",
      "definition" : "clinicalProcessInterestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.subjectOfCare",
      "path" : "createform-request.subjectOfCare",
      "short" : "subjectOfCare",
      "definition" : "Autentiserad invånare (personnummer). FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.templateId",
      "path" : "createform-request.templateId",
      "short" : "templateId",
      "definition" : "templateId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.templateVersion",
      "path" : "createform-request.templateVersion",
      "short" : "templateVersion",
      "definition" : "templateVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "createform-request.actor",
      "path" : "createform-request.actor",
      "short" : "ActorType",
      "definition" : "actor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createform-request.actor.actorId",
      "path" : "createform-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "createform-request.actor.actorType",
      "path" : "createform-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType Tillåtna värden: CITIZEN, GUARDIAN, CAREGIVER.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
