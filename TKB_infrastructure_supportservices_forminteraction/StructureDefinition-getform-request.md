# GetForm — Request - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetForm — Request**

## Logical Model: GetForm — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getform-request | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForm:2). Hämtar ett specifikt formulär inkl. aktuell sida med frågor. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-getform-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getform-request.csv), [Excel](StructureDefinition-getform-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getform-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getform-request",
  "version" : "2.0.0",
  "name" : "GetFormRequest",
  "title" : "GetForm — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForm:2).\nHämtar ett specifikt formulär inkl. aktuell sida med frågor.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getform-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getform-request",
      "path" : "getform-request",
      "short" : "GetForm — Request",
      "definition" : "Logisk modell för requestparametrar i GetForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForm:2).\nHämtar ett specifikt formulär inkl. aktuell sida med frågor."
    },
    {
      "id" : "getform-request.formId",
      "path" : "getform-request.formId",
      "short" : "Formulärets unika ID (GUID)",
      "definition" : "Formulärets unika ID (GUID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform-request.subjectOfCare",
      "path" : "getform-request.subjectOfCare",
      "short" : "Invånarens personnummer (yyyymmddnnnn)",
      "definition" : "Invånarens personnummer (yyyymmddnnnn)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
