# GetForms — Request - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetForms — Request**

## Logical Model: GetForms — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getforms-request | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetForms (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForms:2). Hämtar alla pågående eller avslutade formulär för en invånare. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-getforms-request.json)

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
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getforms-request",
  "version" : "2.0.0",
  "name" : "GetFormsRequest",
  "title" : "GetForms — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetForms\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForms:2).\nHämtar alla pågående eller avslutade formulär för en invånare.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getforms-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getforms-request",
      "path" : "getforms-request",
      "short" : "GetForms — Request",
      "definition" : "Logisk modell för requestparametrar i GetForms\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForms:2).\nHämtar alla pågående eller avslutade formulär för en invånare."
    },
    {
      "id" : "getforms-request.healthcareFacilityCareUnit",
      "path" : "getforms-request.healthcareFacilityCareUnit",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms-request.subjectOfCare",
      "path" : "getforms-request.subjectOfCare",
      "short" : "Invånarens personnummer (yyyymmddnnnn)",
      "definition" : "Invånarens personnummer (yyyymmddnnnn)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms-request.formStatus",
      "path" : "getforms-request.formStatus",
      "short" : "Filterering på formulärstatus",
      "definition" : "Filterering på formulärstatus",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/ValueSet/formstatus-vs"
      }
    },
    {
      "id" : "getforms-request.clinicalProcessInterestId",
      "path" : "getforms-request.clinicalProcessInterestId",
      "short" : "Hälsoärende-id",
      "definition" : "Hälsoärende-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
