# ProcessClaimSpecification — Response - financial: billing: claim v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessClaimSpecification — Response**

## Logical Model: ProcessClaimSpecification — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/processclaimspecification | *Version*:1.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:ProcessClaimSpecification |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i ProcessClaimSpecification (urn:riv:financial:billing:claim:ProcessClaimSpecificationResponder:1, ProcessClaimSpecificationResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.financial-billing-claim|current/StructureDefinition/StructureDefinition-processclaimspecification.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processclaimspecification.csv), [Excel](StructureDefinition-processclaimspecification.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processclaimspecification",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/processclaimspecification",
  "version" : "1.1.0",
  "name" : "ProcessClaimSpecification",
  "title" : "ProcessClaimSpecification — Response",
  "status" : "draft",
  "date" : "2026-09-28T08:57:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i ProcessClaimSpecification\n(urn:riv:financial:billing:claim:ProcessClaimSpecificationResponder:1, ProcessClaimSpecificationResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/processclaimspecification",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processclaimspecification",
      "path" : "processclaimspecification",
      "short" : "ProcessClaimSpecification — Response",
      "definition" : "Logisk modell för svaret i ProcessClaimSpecification\n(urn:riv:financial:billing:claim:ProcessClaimSpecificationResponder:1, ProcessClaimSpecificationResponseType)."
    },
    {
      "id" : "processclaimspecification.resultCode",
      "path" : "processclaimspecification.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/financial-billing-claim/ValueSet/financial-billing-claim-resultcode-vs"
      }
    },
    {
      "id" : "processclaimspecification.comment",
      "path" : "processclaimspecification.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
