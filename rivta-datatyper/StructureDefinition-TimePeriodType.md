# TimePeriodType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TimePeriodType**

## Logical Model: TimePeriodType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:TimePeriodType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tidsintervall med minst en start- eller sluttidpunkt. (xs:complexType.) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-TimePeriodType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TimePeriodType.csv), [Excel](StructureDefinition-TimePeriodType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TimePeriodType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType",
  "version" : "1.0.0",
  "name" : "TimePeriodType",
  "title" : "TimePeriodType",
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
  "description" : "Tidsintervall med minst en start- eller sluttidpunkt. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "TimePeriodType",
      "path" : "TimePeriodType",
      "short" : "TimePeriodType",
      "definition" : "Tidsintervall med minst en start- eller sluttidpunkt. (xs:complexType.)"
    },
    {
      "id" : "TimePeriodType.start",
      "path" : "TimePeriodType.start",
      "short" : "start",
      "definition" : "Starttidpunkt (ÅÅÅÅMMDDttmmss). Typ i schemat: TimeStampType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "TimePeriodType.end",
      "path" : "TimePeriodType.end",
      "short" : "end",
      "definition" : "Sluttidpunkt (ÅÅÅÅMMDDttmmss). Typ i schemat: TimeStampType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    }]
  }
}

```
