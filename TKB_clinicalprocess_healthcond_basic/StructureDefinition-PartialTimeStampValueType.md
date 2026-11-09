# PartialTimeStampValueType - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PartialTimeStampValueType**

## Data Type Profile: PartialTimeStampValueType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/PartialTimeStampValueType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:PartialTimeStampValueType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetObservations](StructureDefinition-getobservations.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-basic|current/StructureDefinition/StructureDefinition-PartialTimeStampValueType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PartialTimeStampValueType.csv), [Excel](StructureDefinition-PartialTimeStampValueType.xlsx), [Schematron](StructureDefinition-PartialTimeStampValueType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PartialTimeStampValueType",
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/PartialTimeStampValueType",
  "name" : "PartialTimeStampValueType",
  "title" : "PartialTimeStampValueType",
  "status" : "active",
  "date" : "2026-11-09T03:20:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss (xs:simpleType i domänens schema.)",
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
        "key" : "local-partialtimestampvaluetype-pattern",
        "severity" : "error",
        "human" : "PartialTimeStampValueType ska följa mönstret i schemat: -?([1-9][0-9]{3}|0[0-9]{3})((0[1-9]|1[0-2])((0[1-9]|[12][0-9]|3[01]))?(((0[0-9]|1[0-9]|2[0123]))?([0-5])([0-9])([0-5])([0-9]))?)?",
        "expression" : "matches('^(?:(?:-?([1-9][0-9]{3}|0[0-9]{3})((0[1-9]|1[0-2])((0[1-9]|[12][0-9]|3[01]))?(((0[0-9]|1[0-9]|2[0123]))?([0-5])([0-9])([0-5])([0-9]))?)?))$')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/PartialTimeStampValueType"
      }]
    }]
  }
}

```
