# TimeType - financial: billing: claim v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TimeType**

## Data Type Profile: TimeType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/TimeType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:TimeType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
The time has the format hhmmss (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [ProcessClaimSpecification — Request](StructureDefinition-processclaimspecification-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.financial-billing-claim|current/StructureDefinition/StructureDefinition-TimeType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TimeType.csv), [Excel](StructureDefinition-TimeType.xlsx), [Schematron](StructureDefinition-TimeType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TimeType",
  "url" : "https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/TimeType",
  "name" : "TimeType",
  "title" : "TimeType",
  "status" : "active",
  "date" : "2026-11-09T03:31:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "The time has the format hhmmss (xs:simpleType i domänens schema.)",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "string",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/string",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "string",
      "path" : "string",
      "constraint" : [{
        "key" : "local-timetype-pattern",
        "severity" : "error",
        "human" : "TimeType ska följa mönstret i schemat: (0[0-9]|1[0-9]|2[0123])([0-5])([0-9])([0-5])([0-9])",
        "expression" : "matches('^(?:(?:(0[0-9]|1[0-9]|2[0123])([0-5])([0-9])([0-5])([0-9])))$')",
        "source" : "https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/TimeType"
      }]
    }]
  }
}

```
