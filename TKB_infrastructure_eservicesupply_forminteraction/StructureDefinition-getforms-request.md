# GetForms — Request - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetForms — Request**

## Logical Model: GetForms — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getforms-request | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetForms. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-getforms-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getforms-request.csv), [Excel](StructureDefinition-getforms-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getforms-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getforms-request",
  "version" : "2.1",
  "name" : "GetFormsRequest",
  "title" : "GetForms — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetForms.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getforms-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getforms-request",
      "path" : "getforms-request",
      "short" : "GetForms — Request",
      "definition" : "Logisk modell för requestparametrar i GetForms."
    },
    {
      "id" : "getforms-request.healthcare-Facility-CareUnit",
      "path" : "getforms-request.healthcare_Facility_CareUnit",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Hsa-Id. Konsument ska säkerställa att konsument har avtal (PuB-avtal).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getforms-request.subjectOfCare",
      "path" : "getforms-request.subjectOfCare",
      "short" : "Personnummer",
      "definition" : "Starkt autentiserad användares personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getforms-request.templateIds",
      "path" : "getforms-request.templateIds",
      "short" : "Mall-id:n",
      "definition" : "Filtrera på formulärtyp.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms-request.clinicalProcessInterestIds",
      "path" : "getforms-request.clinicalProcessInterestIds",
      "short" : "Hälsoärende-id:n",
      "definition" : "Filtrera på hälsoärende.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
