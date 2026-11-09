# VersionNumberType - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VersionNumberType**

## Data Type Profile: VersionNumberType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/VersionNumberType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:VersionNumberType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
VersionNumberType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [ProcessRequest — Remiss (begäran)](StructureDefinition-processrequest.md), [ProcessRequestConfirmation — Remissbekräftelse (begäran)](StructureDefinition-processrequestconfirmation.md) and [ProcessRequestOutcome — Remissvar (begäran)](StructureDefinition-processrequestoutcome.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activity-request|current/StructureDefinition/StructureDefinition-VersionNumberType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VersionNumberType.csv), [Excel](StructureDefinition-VersionNumberType.xlsx), [Schematron](StructureDefinition-VersionNumberType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VersionNumberType",
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/VersionNumberType",
  "name" : "VersionNumberType",
  "title" : "VersionNumberType",
  "status" : "active",
  "date" : "2026-11-09T03:14:11+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "VersionNumberType (xs:simpleType i domänens schema.)",
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
        "key" : "local-versionnumbertype-pattern",
        "severity" : "error",
        "human" : "VersionNumberType ska följa mönstret i schemat: (0*[1-9]+|[1-9])\\d*",
        "expression" : "matches('^(?:(?:(0*[1-9]+|[1-9])\\\\d*))$')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/VersionNumberType"
      }]
    }]
  }
}

```
