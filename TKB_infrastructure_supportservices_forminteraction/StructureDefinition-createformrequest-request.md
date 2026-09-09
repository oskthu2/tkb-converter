# CreateFormRequest — Request - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateFormRequest — Request**

## Logical Model: CreateFormRequest — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/createformrequest-request | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:CreateFormRequestRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CreateFormRequest (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2). Ett vårdsystem skapar en begäran om att patient skall fylla i ett formulär. Formulärmotor skapar ett formulär och skickar indexpost till engagemangsindex (categorization = FormCreated). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-createformrequest-request.json)

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
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/createformrequest-request",
  "version" : "2.0.0",
  "name" : "CreateFormRequestRequest",
  "title" : "CreateFormRequest — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CreateFormRequest\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2).\nEtt vårdsystem skapar en begäran om att patient skall fylla i ett formulär.\nFormulärmotor skapar ett formulär och skickar indexpost till engagemangsindex\n(categorization = FormCreated).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/createformrequest-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createformrequest-request",
      "path" : "createformrequest-request",
      "short" : "CreateFormRequest — Request",
      "definition" : "Logisk modell för requestparametrar i CreateFormRequest\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2).\nEtt vårdsystem skapar en begäran om att patient skall fylla i ett formulär.\nFormulärmotor skapar ett formulär och skickar indexpost till engagemangsindex\n(categorization = FormCreated)."
    },
    {
      "id" : "createformrequest-request.healthcareFacilityCareUnit",
      "path" : "createformrequest-request.healthcareFacilityCareUnit",
      "short" : "HSA-id för vårdenhet (ansvarig enhet)",
      "definition" : "HSA-id för vårdenhet (ansvarig enhet)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.healthcareMedUnit",
      "path" : "createformrequest-request.healthcareMedUnit",
      "short" : "HSA-id för medicinsk ansvarig klinik/vårdcentral",
      "definition" : "HSA-id för medicinsk ansvarig klinik/vårdcentral",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.healthcareCareGiver",
      "path" : "createformrequest-request.healthcareCareGiver",
      "short" : "HSA-id för ansvarig vårdgivare (landsting/region)",
      "definition" : "HSA-id för ansvarig vårdgivare (landsting/region)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.healthcareSystemId",
      "path" : "createformrequest-request.healthcareSystemId",
      "short" : "HSA-id för mottagande system",
      "definition" : "HSA-id för mottagande system",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.subjectOfCare",
      "path" : "createformrequest-request.subjectOfCare",
      "short" : "Patientens personnummer (yyyymmddnnnn)",
      "definition" : "Obligatorisk i CreateFormRequest — formulärbegäran är alltid knuten till en specifik patient.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.templateId",
      "path" : "createformrequest-request.templateId",
      "short" : "Typ av formulärmall (KV Malltyp)",
      "definition" : "Typ av formulärmall (KV Malltyp)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.templateVersion",
      "path" : "createformrequest-request.templateVersion",
      "short" : "Önskad version av formulärmallt",
      "definition" : "Önskad version av formulärmallt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.clinicalProcessInterestId",
      "path" : "createformrequest-request.clinicalProcessInterestId",
      "short" : "Hälsoärende-id (HSA-id + unik identifierare)",
      "definition" : "Hälsoärende-id (HSA-id + unik identifierare)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formId",
      "path" : "createformrequest-request.formId",
      "short" : "Formulär-id genererat av vårdsystemet (GUID). Notera: vårdsystemet genererar detta.",
      "definition" : "Att notera: Vårdsystemet (konsumenten) genererar ett unikt id för formuläret (FormID).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.expireDate",
      "path" : "createformrequest-request.expireDate",
      "short" : "Formulärets giltighetstid (ISO 8601 yyyyMMdd)",
      "definition" : "Formulärets giltighetstid (ISO 8601 yyyyMMdd)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formText",
      "path" : "createformrequest-request.formText",
      "short" : "Unik text för formuläret, t.ex. Hälsoundersökning inför besök X",
      "definition" : "Unik text för formuläret, t.ex. Hälsoundersökning inför besök X",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
