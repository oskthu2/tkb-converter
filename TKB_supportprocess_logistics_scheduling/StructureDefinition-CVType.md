# CVType - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CVType**

## Logical Model: CVType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/CVType | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:CVType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
CVType enligt domänens schema: den gemensamma RIV-TA-typen CVType med snävare kardinalitet. 

**Usages:**

* Use this Logical Model: [CancelAppointment — Request](StructureDefinition-cancelappointment-request.md), [GetAppointment — Response](StructureDefinition-getappointment.md), [GetAvailableDates — Request](StructureDefinition-getavailabledates-request.md), [GetAvailableDates — Response](StructureDefinition-getavailabledates.md)... Show 5 more, [GetAvailableTimeslots — Request](StructureDefinition-getavailabletimeslots-request.md), [GetAvailableTimeslots — Response](StructureDefinition-getavailabletimeslots.md), [GetTimeTypes — Response](StructureDefinition-gettimetypes.md), [MakeAppointment — Request](StructureDefinition-makeappointment-request.md) and [UpdateAppointment — Request](StructureDefinition-updateappointment-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-CVType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CVType.csv), [Excel](StructureDefinition-CVType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CVType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/CVType",
  "name" : "CVType",
  "title" : "CVType",
  "status" : "draft",
  "date" : "2026-11-09T03:52:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "CVType enligt domänens schema: den gemensamma RIV-TA-typen CVType med snävare kardinalitet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/CVType",
  "baseDefinition" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "CVType",
      "path" : "CVType",
      "definition" : "CVType enligt domänens schema: den gemensamma RIV-TA-typen CVType med snävare kardinalitet."
    },
    {
      "id" : "CVType.code",
      "path" : "CVType.code",
      "min" : 1
    },
    {
      "id" : "CVType.codeSystem",
      "path" : "CVType.codeSystem",
      "min" : 1
    }]
  }
}

```
