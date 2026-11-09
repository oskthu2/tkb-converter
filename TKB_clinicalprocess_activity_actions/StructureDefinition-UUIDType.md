# UUIDType - clinicalprocess: activity: actions v1.3.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UUIDType**

## Data Type Profile: UUIDType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/UUIDType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:UUIDType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
UUIDType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetActivities — Request](StructureDefinition-getactivities-request.md) and [GetActivities](StructureDefinition-getactivities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activity-actions|current/StructureDefinition/StructureDefinition-UUIDType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-UUIDType.csv), [Excel](StructureDefinition-UUIDType.xlsx), [Schematron](StructureDefinition-UUIDType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "UUIDType",
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/UUIDType",
  "name" : "UUIDType",
  "title" : "UUIDType",
  "status" : "active",
  "date" : "2026-11-09T03:13:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "UUIDType (xs:simpleType i domänens schema.)",
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
        "key" : "local-uuidtype-pattern",
        "severity" : "error",
        "human" : "UUIDType ska följa mönstret i schemat: [0-9a-fA-F]{8}-[0-9a-fA-F]{4}-4[0-9a-fA-F]{3}-[8-9a-bA-B][0-9a-fA-F]{3}-[0-9a-fA-F]{12}",
        "expression" : "matches('^(?:(?:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-4[0-9a-fA-F]{3}-[8-9a-bA-B][0-9a-fA-F]{3}-[0-9a-fA-F]{12}))$')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/UUIDType"
      }]
    }]
  }
}

```
