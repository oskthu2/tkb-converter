# GetForms — Request - infrastructure: supportservices: forminteraction v2.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetForms — Request**

## Logical Model: GetForms — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getforms-request | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetFormsRequest |
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
  "version" : "2.0",
  "name" : "GetFormsRequest",
  "title" : "GetForms — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:41:01+00:00",
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
      "id" : "getforms-request.clinicalProcessInterestId",
      "path" : "getforms-request.clinicalProcessInterestId",
      "short" : "clinicalProcessInterestId",
      "definition" : "clinicalProcessInterestId",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms-request.healthcare-facility-CareUnit",
      "path" : "getforms-request.healthcare_facility_CareUnit",
      "short" : "healthcare_facility_CareUnit",
      "definition" : "healthcare_facility_CareUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms-request.subjectOfCare",
      "path" : "getforms-request.subjectOfCare",
      "short" : "subjectOfCare",
      "definition" : "Autentiserad invånare (personnummer). FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms-request.templateId",
      "path" : "getforms-request.templateId",
      "short" : "templateId",
      "definition" : "templateId",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
