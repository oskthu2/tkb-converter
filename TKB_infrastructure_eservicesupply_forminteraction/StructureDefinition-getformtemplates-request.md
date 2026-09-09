# GetFormTemplates — Request - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormTemplates — Request**

## Logical Model: GetFormTemplates — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformtemplates-request | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormTemplatesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetFormTemplates. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-getformtemplates-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getformtemplates-request.csv), [Excel](StructureDefinition-getformtemplates-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getformtemplates-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformtemplates-request",
  "version" : "2.1",
  "name" : "GetFormTemplatesRequest",
  "title" : "GetFormTemplates — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetFormTemplates.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformtemplates-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformtemplates-request",
      "path" : "getformtemplates-request",
      "short" : "GetFormTemplates — Request",
      "definition" : "Logisk modell för requestparametrar i GetFormTemplates."
    },
    {
      "id" : "getformtemplates-request.healthcare-Facility-CareUnit",
      "path" : "getformtemplates-request.healthcare_Facility_CareUnit",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Hsa-Id (Vårdenhet/enhets-id). T.ex. se2321000016-1hz3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getformtemplates-request.publishedStatus",
      "path" : "getformtemplates-request.publishedStatus",
      "short" : "Publiceringsstatus",
      "definition" : "Indikerar vilken status en mall skall ha.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/ValueSet/publishstatus-vs"
      }
    },
    {
      "id" : "getformtemplates-request.subjectOfCare",
      "path" : "getformtemplates-request.subjectOfCare",
      "short" : "Personnummer",
      "definition" : "Starkt autentiserad användares personnummer. T.ex. 191212121212 (yyyymmddnnnn).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getformtemplates-request.templateIds",
      "path" : "getformtemplates-request.templateIds",
      "short" : "Mall-id:n",
      "definition" : "Typ av formulärmall. Om denna inte anges returneras ALLA tillgängliga formulärmallar för medborgaren.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates-request.clinicalProcessInterestIds",
      "path" : "getformtemplates-request.clinicalProcessInterestIds",
      "short" : "Hälsoärenden",
      "definition" : "Hälsoärende-id:n för filtrering.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
