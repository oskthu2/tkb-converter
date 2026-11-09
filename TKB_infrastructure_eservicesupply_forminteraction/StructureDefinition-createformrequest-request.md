# CreateFormRequest — Request - infrastructure: eservicesupply: forminteraction v2.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateFormRequest — Request**

## Logical Model: CreateFormRequest — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createformrequest-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:CreateFormRequestRequest |
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
  "version" : "2.0",
  "name" : "CreateFormRequestRequest",
  "title" : "CreateFormRequest — Request",
  "status" : "active",
  "date" : "2026-11-09T03:38:34+00:00",
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
      "short" : "FormRequestType",
      "definition" : "formRequests",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.clinicalProcessInterestId",
      "path" : "createformrequest-request.formRequests.clinicalProcessInterestId",
      "short" : "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID.",
      "definition" : "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.expireDate",
      "path" : "createformrequest-request.formRequests.expireDate",
      "short" : "expireDate",
      "definition" : "expireDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.formText",
      "path" : "createformrequest-request.formRequests.formText",
      "short" : "formText",
      "definition" : "Unik text för Formulär. Används t.ex. \"CreateFormRequest\" för att bifoga en unik text för formuläret. T.ex. \"Hälsoundersökning inför besök X\".",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.healthcare-CareGiver",
      "path" : "createformrequest-request.formRequests.healthcare_CareGiver",
      "short" : "Ansvarig vårdgivare (huvudman). T.ex. Landsting.",
      "definition" : "Ansvarig vårdgivare (huvudman). T.ex. Landsting.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.healthcare-facility-CareUnit",
      "path" : "createformrequest-request.formRequests.healthcare_facility_CareUnit",
      "short" : "healthcare_facility_CareUnit",
      "definition" : "Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning. T.ex. Den avdelning som formuläret: se2321000016-1hz3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.healthcare-MedUnit",
      "path" : "createformrequest-request.formRequests.healthcare_MedUnit",
      "short" : "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik",
      "definition" : "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.healthcare-systemID",
      "path" : "createformrequest-request.formRequests.healthcare_systemID",
      "short" : "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem",
      "definition" : "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.keepUntil",
      "path" : "createformrequest-request.formRequests.keepUntil",
      "short" : "keepUntil",
      "definition" : "keepUntil",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.subjectOfCare",
      "path" : "createformrequest-request.formRequests.subjectOfCare",
      "short" : "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "definition" : "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.templateId",
      "path" : "createformrequest-request.formRequests.templateId",
      "short" : "Typ av formulär. Kodverk för standardiserade id för formulärtyper.",
      "definition" : "Typ av formulär. Kodverk för standardiserade id för formulärtyper.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest-request.formRequests.templateVersion",
      "path" : "createformrequest-request.formRequests.templateVersion",
      "short" : "templateVersion",
      "definition" : "templateVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
