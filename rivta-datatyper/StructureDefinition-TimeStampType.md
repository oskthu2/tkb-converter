# TimeStampType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TimeStampType**

## Data Type Profile: TimeStampType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType | *Version*:1.0.0 |
| Active as of 2026-11-06 | *Computable Name*:TimeStampType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tidpunkt på formatet YYYYMMDDhhmmss utan tidszon. (xs:simpleType, restriktion av xs:string.) 

**Usages:**

* Use this Primitive Type Profile: [HealthcareProfessionalType](StructureDefinition-HealthcareProfessionalType.md), [LegalAuthenticatorType](StructureDefinition-LegalAuthenticatorType.md) and [TimePeriodType](StructureDefinition-TimePeriodType.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-TimeStampType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TimeStampType.csv), [Excel](StructureDefinition-TimeStampType.xlsx), [Schematron](StructureDefinition-TimeStampType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TimeStampType",
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType",
  "version" : "1.0.0",
  "name" : "TimeStampType",
  "title" : "TimeStampType",
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
  "description" : "Tidpunkt på formatet YYYYMMDDhhmmss utan tidszon. (xs:simpleType, restriktion av xs:string.)",
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
        "key" : "rivta-timestamptype-pattern",
        "severity" : "error",
        "human" : "TimeStampType ska följa mönstret i schemat: (19|20)\\d\\d(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])(0[0-9]|1[0-9]|2[0123])([0-5])([0-9])([0-5])([0-9])",
        "expression" : "matches('^(?:(?:(19|20)\\\\d\\\\d(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])(0[0-9]|1[0-9]|2[0123])([0-5])([0-9])([0-5])([0-9])))$')",
        "source" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"
      }]
    }]
  }
}

```
