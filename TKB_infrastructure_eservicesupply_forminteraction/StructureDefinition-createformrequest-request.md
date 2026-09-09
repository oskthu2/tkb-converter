# CreateFormRequest — Request - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateFormRequest — Request**

## Logical Model: CreateFormRequest — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createformrequest-request | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:CreateFormRequestRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CreateFormRequest. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-createformrequest-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createformrequest-request.csv), [Excel](StructureDefinition-createformrequest-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createformrequest-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createformrequest-request",
  "version" : "2.1",
  "name" : "CreateFormRequestRequest",
  "title" : "CreateFormRequest — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CreateFormRequest.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createformrequest-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createformrequest-request",
      "path" : "createformrequest-request",
      "short" : "CreateFormRequest — Request",
      "definition" : "Logisk modell för requestparametrar i CreateFormRequest."
    },
    {
      "id" : "createformrequest-request.formRequests",
      "path" : "createformrequest-request.formRequests",
      "short" : "Formulärbegäran (FormRequestType)",
      "definition" : "Lista med formulärbegäran att skapa.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.healthcare-CareGiver",
      "path" : "createformrequest-request.formRequests.healthcare_CareGiver",
      "short" : "Vårdenhetens HSA-id (vårdgivare)",
      "definition" : "Hsa-id vårdgivare (informationsägare).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.healthcare-MedUnit",
      "path" : "createformrequest-request.formRequests.healthcare_MedUnit",
      "short" : "Medicinsk ansvarig enhet",
      "definition" : "Hsa-id medicinskt ansvarig (informationsägare).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.healthcare-Facility-CareUnit",
      "path" : "createformrequest-request.formRequests.healthcare_Facility_CareUnit",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Hsa-id vårdenhet (informationsägare).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.healthcare-systemID",
      "path" : "createformrequest-request.formRequests.healthcare_systemID",
      "short" : "System-id",
      "definition" : "Hsa-id vårdsystem.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.subjectOfCare",
      "path" : "createformrequest-request.formRequests.subjectOfCare",
      "short" : "Personnummer",
      "definition" : "Personnummer patient/invånare. Utelämnas hanteras formulär som anonymt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.templateId",
      "path" : "createformrequest-request.formRequests.templateId",
      "short" : "Formulärmall-id",
      "definition" : "Formulärmall id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.templateVersion",
      "path" : "createformrequest-request.formRequests.templateVersion",
      "short" : "Mallversion",
      "definition" : "Formulärmall version.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.clinicalProcessInterestId",
      "path" : "createformrequest-request.formRequests.clinicalProcessInterestId",
      "short" : "Hälsoärende-id",
      "definition" : "Hälsoärende id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.formText",
      "path" : "createformrequest-request.formRequests.formText",
      "short" : "Formulärtext",
      "definition" : "Formulärtext för formulärbegäran.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.expireDate",
      "path" : "createformrequest-request.formRequests.expireDate",
      "short" : "Utgångsdatum",
      "definition" : "Datum för att reglera hur länge patient/invånaren kan besvara formulär.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.keepUntil",
      "path" : "createformrequest-request.formRequests.keepUntil",
      "short" : "Bevaras till",
      "definition" : "Datum för hur länge formulär lagras innan gallring/arkivering. Tomt indikerar tillsvidare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
