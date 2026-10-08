# GetAppointments — Response - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAppointments — Response**

## Logical Model: GetAppointments — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getappointments | *Version*:2.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetAppointments |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetAppointments (urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-getappointments.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getappointments.csv), [Excel](StructureDefinition-getappointments.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getappointments",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getappointments",
  "version" : "2.0",
  "name" : "GetAppointments",
  "title" : "GetAppointments — Response",
  "status" : "draft",
  "date" : "2026-10-08T18:56:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetAppointments\n(urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getappointments",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getappointments",
      "path" : "getappointments",
      "short" : "GetAppointments — Response",
      "definition" : "Logisk modell för svaret i GetAppointments\n(urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsResponseType)."
    },
    {
      "id" : "getappointments.appointment",
      "path" : "getappointments.appointment",
      "short" : "appointment",
      "definition" : "appointment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getappointments.appointment.appointmentId",
      "path" : "getappointments.appointment.appointmentId",
      "short" : "appointmentId",
      "definition" : "appointmentId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments.appointment.healthcareFacilityId",
      "path" : "getappointments.appointment.healthcareFacilityId",
      "short" : "healthcareFacilityId",
      "definition" : "healthcareFacilityId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getappointments.appointment.healthcareFacilityId.root",
      "path" : "getappointments.appointment.healthcareFacilityId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments.appointment.healthcareFacilityId.hSAIdExtension",
      "path" : "getappointments.appointment.healthcareFacilityId.hSAIdExtension",
      "short" : "hSAIdExtension",
      "definition" : "hSAIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
