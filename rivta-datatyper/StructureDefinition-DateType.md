# DateType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DateType**

## Data Type Profile: DateType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType | *Version*:1.0.0 |
| Active as of 2026-11-06 | *Computable Name*:DateType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Datum på formatet YYYYMMDD utan tidszon. (xs:simpleType, restriktion av xs:string.) 

**Usages:**

* Use this Primitive Type Profile: [DatePeriodType](StructureDefinition-DatePeriodType.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-DateType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DateType.csv), [Excel](StructureDefinition-DateType.xlsx), [Schematron](StructureDefinition-DateType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DateType",
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType",
  "version" : "1.0.0",
  "name" : "DateType",
  "title" : "DateType",
  "status" : "active",
  "date" : "2026-11-06T20:56:47+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Datum på formatet YYYYMMDD utan tidszon. (xs:simpleType, restriktion av xs:string.)",
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
        "key" : "rivta-datetype-pattern",
        "severity" : "error",
        "human" : "DateType ska följa mönstret i schemat: (19|20)\\d\\d(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])",
        "expression" : "matches('^(?:(?:(19|20)\\\\d\\\\d(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])))$')",
        "source" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"
      }]
    }]
  }
}

```
