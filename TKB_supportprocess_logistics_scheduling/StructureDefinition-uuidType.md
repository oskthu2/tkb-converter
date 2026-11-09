# uuidType - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **uuidType**

## Data Type Profile: uuidType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/uuidType | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:uuidType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
uuidType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [CancelAppointment — Request](StructureDefinition-cancelappointment-request.md), [ConfirmAppointment — Request](StructureDefinition-confirmappointment-request.md), [GetAppointment — Request](StructureDefinition-getappointment-request.md), [GetAppointment — Response](StructureDefinition-getappointment.md)... Show 10 more, [GetAppointments — Response](StructureDefinition-getappointments.md), [GetAvailableDates — Request](StructureDefinition-getavailabledates-request.md), [GetAvailableTimeslots — Request](StructureDefinition-getavailabletimeslots-request.md), [GetAvailableTimeslots — Response](StructureDefinition-getavailabletimeslots.md), [GetHealthcareFacilities — Request](StructureDefinition-gethealthcarefacilities-request.md), [GetPractitioners — Request](StructureDefinition-getpractitioners-request.md), [MakeAppointment — Request](StructureDefinition-makeappointment-request.md), [MakeAppointment — Response](StructureDefinition-makeappointment.md), [UpdateAppointment — Request](StructureDefinition-updateappointment-request.md) and [UpdateAppointment — Response](StructureDefinition-updateappointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-uuidType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-uuidType.csv), [Excel](StructureDefinition-uuidType.xlsx), [Schematron](StructureDefinition-uuidType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uuidType",
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/uuidType",
  "name" : "uuidType",
  "title" : "uuidType",
  "status" : "draft",
  "date" : "2026-11-09T03:52:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "uuidType (xs:simpleType i domänens schema.)",
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
        "key" : "local-uuidtype-pattern",
        "severity" : "error",
        "human" : "uuidType ska följa mönstret i schemat: ([0-9]|[a-f]|[A-F]){8}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){12}",
        "expression" : "matches('^(?:(?:([0-9]|[a-f]|[A-F]){8}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){4}-([0-9]|[a-f]|[A-F]){12}))$')",
        "source" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/uuidType"
      }]
    }]
  }
}

```
