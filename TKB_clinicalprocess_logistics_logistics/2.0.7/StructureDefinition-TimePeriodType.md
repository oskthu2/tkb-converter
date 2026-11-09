# TimePeriodType - clinicalprocess: logistics: logistics 2.0.7 v2.0.7

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TimePeriodType**

## Logical Model: TimePeriodType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/TimePeriodType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:TimePeriodType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
TimePeriodType enligt domänens schema: den gemensamma RIV-TA-typen TimePeriodType med snävare kardinalitet. 

**Usages:**

* Use this Logical Model: [GetCareContacts](StructureDefinition-getcarecontacts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-logistics-logistics|current/StructureDefinition/StructureDefinition-TimePeriodType.json)

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
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/TimePeriodType",
  "name" : "TimePeriodType",
  "title" : "TimePeriodType",
  "status" : "active",
  "date" : "2026-11-09T03:24:40+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "TimePeriodType enligt domänens schema: den gemensamma RIV-TA-typen TimePeriodType med snävare kardinalitet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/TimePeriodType",
  "baseDefinition" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "TimePeriodType",
      "path" : "TimePeriodType",
      "definition" : "TimePeriodType enligt domänens schema: den gemensamma RIV-TA-typen TimePeriodType med snävare kardinalitet."
    },
    {
      "id" : "TimePeriodType.start",
      "path" : "TimePeriodType.start",
      "min" : 1
    }]
  }
}

```
