# PartialDateValueType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PartialDateValueType**

## Data Type Profile: PartialDateValueType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PartialDateValueType | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:PartialDateValueType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Datumvärde på formatet YYYY, YYYYMM eller YYYYMMDD. (xs:simpleType, restriktion av xs:string.) 

**Usages:**

* Use this Primitive Type Profile: [PartialDateType](StructureDefinition-PartialDateType.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-PartialDateValueType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PartialDateValueType.csv), [Excel](StructureDefinition-PartialDateValueType.xlsx), [Schematron](StructureDefinition-PartialDateValueType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PartialDateValueType",
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PartialDateValueType",
  "version" : "1.0.0",
  "name" : "PartialDateValueType",
  "title" : "PartialDateValueType",
  "status" : "active",
  "date" : "2026-11-09T03:12:38+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Datumvärde på formatet YYYY, YYYYMM eller YYYYMMDD. (xs:simpleType, restriktion av xs:string.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
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
        "key" : "rivta-partialdatevaluetype-pattern",
        "severity" : "error",
        "human" : "PartialDateValueType ska följa mönstret i schemat: -?([1-9][0-9]{3}|0[0-9]{3})((0[1-9]|1[0-2])((0[1-9]|[12][0-9]|3[01]))?)?",
        "expression" : "matches('^(?:(?:-?([1-9][0-9]{3}|0[0-9]{3})((0[1-9]|1[0-2])((0[1-9]|[12][0-9]|3[01]))?)?))$')",
        "source" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PartialDateValueType"
      }]
    }]
  }
}

```
