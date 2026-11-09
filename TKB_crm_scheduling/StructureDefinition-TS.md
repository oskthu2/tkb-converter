# TS - crm: scheduling v1.1.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TS**

## Data Type Profile: TS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/TS | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:TS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
TS (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetBookingDetails](StructureDefinition-getbookingdetails.md), [GetSubjectOfCareSchedule](StructureDefinition-getsubjectofcareschedule.md), [MakeBooking — Request](StructureDefinition-makebooking-request.md) and [UpdateBooking — Request](StructureDefinition-updatebooking-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-TS.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TS.csv), [Excel](StructureDefinition-TS.xlsx), [Schematron](StructureDefinition-TS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TS",
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/TS",
  "name" : "TS",
  "title" : "TS",
  "status" : "active",
  "date" : "2026-11-09T03:26:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "TS (xs:simpleType i domänens schema.)",
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
        "key" : "local-ts-pattern",
        "severity" : "error",
        "human" : "TS ska följa mönstret i schemat: [1-9]{1}[0-9]{3}(0[1-9]{1}|1[0-2]{1})([0-2]{1}[0-9]{1}|3[0-1]{1})([0-1]{1}[0-9]{1}|2[0-3]{1})[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}",
        "expression" : "matches('^(?:(?:[1-9]{1}[0-9]{3}(0[1-9]{1}|1[0-2]{1})([0-2]{1}[0-9]{1}|3[0-1]{1})([0-1]{1}[0-9]{1}|2[0-3]{1})[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}))$')",
        "source" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/TS"
      }]
    }]
  }
}

```
