# GetSubjectOfCareSchedule — Request - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetSubjectOfCareSchedule — Request**

## Logical Model: GetSubjectOfCareSchedule — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getsubjectofcareschedule-request | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetSubjectOfCareScheduleRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetSubjectOfCareSchedule. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getsubjectofcareschedule-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getsubjectofcareschedule-request.csv), [Excel](StructureDefinition-getsubjectofcareschedule-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getsubjectofcareschedule-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getsubjectofcareschedule-request",
  "version" : "1.1",
  "name" : "GetSubjectOfCareScheduleRequest",
  "title" : "GetSubjectOfCareSchedule — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetSubjectOfCareSchedule.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getsubjectofcareschedule-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getsubjectofcareschedule-request",
      "path" : "getsubjectofcareschedule-request",
      "short" : "GetSubjectOfCareSchedule — Request",
      "definition" : "Logisk modell för requestparametrar i GetSubjectOfCareSchedule."
    },
    {
      "id" : "getsubjectofcareschedule-request.healthcare-facility",
      "path" : "getsubjectofcareschedule-request.healthcare_facility",
      "short" : "HSA-id för mottagning/vårdenhet",
      "definition" : "HSA-id för mottagning/vårdenhet.\nObservera att vid adressering av aggregerande tjänst kommer detta fält att ignoreras.\nFältet måste ändå finnas med av kompatibilitetsskäl.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getsubjectofcareschedule-request.subject-of-care",
      "path" : "getsubjectofcareschedule-request.subject_of_care",
      "short" : "Personnummer enl. yyyymmddxxxx",
      "definition" : "Personnummer för invånaren.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
