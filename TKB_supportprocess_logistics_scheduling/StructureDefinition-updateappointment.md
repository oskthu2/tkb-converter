# UpdateAppointment — Response - supportprocess: logistics: scheduling v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdateAppointment — Response**

## Logical Model: UpdateAppointment — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/updateappointment | *Version*:2.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:UpdateAppointment |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i UpdateAppointment (urn:riv:supportprocess:logistics:scheduling:UpdateAppointmentResponder:2, UpdateAppointmentResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-updateappointment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updateappointment.csv), [Excel](StructureDefinition-updateappointment.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updateappointment",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/updateappointment",
  "version" : "2.0.0",
  "name" : "UpdateAppointment",
  "title" : "UpdateAppointment — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:26:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i UpdateAppointment\n(urn:riv:supportprocess:logistics:scheduling:UpdateAppointmentResponder:2, UpdateAppointmentResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/updateappointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updateappointment",
      "path" : "updateappointment",
      "short" : "UpdateAppointment — Response",
      "definition" : "Logisk modell för svaret i UpdateAppointment\n(urn:riv:supportprocess:logistics:scheduling:UpdateAppointmentResponder:2, UpdateAppointmentResponseType)."
    },
    {
      "id" : "updateappointment.appointmentId",
      "path" : "updateappointment.appointmentId",
      "short" : "appointmentId",
      "definition" : "appointmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment.resultCode",
      "path" : "updateappointment.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/ValueSet/scheduling-resultcode-vs"
      }
    },
    {
      "id" : "updateappointment.resultText",
      "path" : "updateappointment.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
