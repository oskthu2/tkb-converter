# CancelForm — Request - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelForm — Request**

## Logical Model: CancelForm — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/cancelform-request | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:CancelFormRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CancelForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2). Avbryter och raderar ett pågående formulär. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-cancelform-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cancelform-request.csv), [Excel](StructureDefinition-cancelform-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cancelform-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/cancelform-request",
  "version" : "2.0.0",
  "name" : "CancelFormRequest",
  "title" : "CancelForm — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CancelForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2).\nAvbryter och raderar ett pågående formulär.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/cancelform-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cancelform-request",
      "path" : "cancelform-request",
      "short" : "CancelForm — Request",
      "definition" : "Logisk modell för requestparametrar i CancelForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2).\nAvbryter och raderar ett pågående formulär."
    },
    {
      "id" : "cancelform-request.formId",
      "path" : "cancelform-request.formId",
      "short" : "Formulärets unika ID (GUID) som skall avbrytas",
      "definition" : "Formulärets unika ID (GUID) som skall avbrytas",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelform-request.subjectOfCare",
      "path" : "cancelform-request.subjectOfCare",
      "short" : "Invånarens personnummer (yyyymmddnnnn)",
      "definition" : "Invånarens personnummer (yyyymmddnnnn)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelform-request.reason",
      "path" : "cancelform-request.reason",
      "short" : "Anledning till avbrytning (valfri kommentar)",
      "definition" : "Anledning till avbrytning (valfri kommentar)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
