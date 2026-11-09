# TimeType - coreprocess: residentparticipation: residentparticipation v1.0.0-rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TimeType**

## Data Type Profile: TimeType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:TimeType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
HHmmss (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetCareManagers — Response](StructureDefinition-getcaremanagers.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.coreprocess-residentparticipation-residentparticipation|current/StructureDefinition/StructureDefinition-TimeType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TimeType.csv), [Excel](StructureDefinition-TimeType.xlsx), [Schematron](StructureDefinition-TimeType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TimeType",
  "url" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType",
  "name" : "TimeType",
  "title" : "TimeType",
  "status" : "draft",
  "date" : "2026-11-09T03:25:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "HHmmss (xs:simpleType i domänens schema.)",
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
        "human" : "TimeType ska följa mönstret i schemat: ([0-1][0-9]|2[0-3])[0-5][0-9][0-5][0-9]",
        "expression" : "matches('^(?:(?:([0-1][0-9]|2[0-3])[0-5][0-9][0-5][0-9]))$')",
        "source" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"
      }]
    }]
  }
}

```
