# DatePeriodType - informationsecurity: authorization: pip v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DatePeriodType**

## Logical Model: DatePeriodType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/DatePeriodType | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:DatePeriodType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
DatePeriodType enligt domänens schema: den gemensamma RIV-TA-typen DatePeriodType med snävare kardinalitet. 

**Usages:**

* Use this Logical Model: [GetSeals — Response](StructureDefinition-getseals.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-pip|current/StructureDefinition/StructureDefinition-DatePeriodType.json)

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
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/DatePeriodType",
  "name" : "DatePeriodType",
  "title" : "DatePeriodType",
  "status" : "draft",
  "date" : "2026-11-09T03:36:20+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "DatePeriodType enligt domänens schema: den gemensamma RIV-TA-typen DatePeriodType med snävare kardinalitet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/DatePeriodType",
  "baseDefinition" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DatePeriodType",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "DatePeriodType",
      "path" : "DatePeriodType",
      "definition" : "DatePeriodType enligt domänens schema: den gemensamma RIV-TA-typen DatePeriodType med snävare kardinalitet."
    },
    {
      "id" : "DatePeriodType.start",
      "path" : "DatePeriodType.start",
      "min" : 1
    },
    {
      "id" : "DatePeriodType.end",
      "path" : "DatePeriodType.end",
      "min" : 1
    }]
  }
}

```
