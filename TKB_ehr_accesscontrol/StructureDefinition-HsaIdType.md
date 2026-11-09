# HsaIdType - ehr:accesscontrol v1.0.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HsaIdType**

## Data Type Profile: HsaIdType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/HsaIdType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:HsaIdType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
HsaIdType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [AssertCareEngagement — Request](StructureDefinition-assertcareengagement-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-accesscontrol|current/StructureDefinition/StructureDefinition-HsaIdType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HsaIdType.csv), [Excel](StructureDefinition-HsaIdType.xlsx), [Schematron](StructureDefinition-HsaIdType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HsaIdType",
  "url" : "https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/HsaIdType",
  "name" : "HsaIdType",
  "title" : "HsaIdType",
  "status" : "active",
  "date" : "2026-11-09T03:28:00+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  },
  {
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "HsaIdType (xs:simpleType i domänens schema.)",
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
        "key" : "local-hsaidtype-pattern",
        "severity" : "error",
        "human" : "HsaIdType ska följa mönstret i schemat: [(\\p{L})0-9\\-]*",
        "expression" : "matches('^(?:(?:[(\\\\p{L})0-9\\\\-]*))$')",
        "source" : "https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/HsaIdType"
      }]
    }]
  }
}

```
