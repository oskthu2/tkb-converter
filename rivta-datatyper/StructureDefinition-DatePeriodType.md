# DatePeriodType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DatePeriodType**

## Logical Model: DatePeriodType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DatePeriodType | *Version*:1.0.0 |
| Active as of 2026-11-06 | *Computable Name*:DatePeriodType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Datumintervall med minst ett start- eller slutdatum. (xs:complexType.) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-DatePeriodType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DatePeriodType.csv), [Excel](StructureDefinition-DatePeriodType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DatePeriodType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DatePeriodType",
  "version" : "1.0.0",
  "name" : "DatePeriodType",
  "title" : "DatePeriodType",
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
  "description" : "Datumintervall med minst ett start- eller slutdatum. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DatePeriodType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "DatePeriodType",
      "path" : "DatePeriodType",
      "short" : "DatePeriodType",
      "definition" : "Datumintervall med minst ett start- eller slutdatum. (xs:complexType.)"
    },
    {
      "id" : "DatePeriodType.start",
      "path" : "DatePeriodType.start",
      "short" : "start",
      "definition" : "Startdatum (ÅÅÅÅMMDD). Typ i schemat: DateType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "DatePeriodType.end",
      "path" : "DatePeriodType.end",
      "short" : "end",
      "definition" : "Slutdatum (ÅÅÅÅMMDD). Typ i schemat: DateType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    }]
  }
}

```
