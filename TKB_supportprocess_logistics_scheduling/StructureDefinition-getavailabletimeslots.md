# GetAvailableTimeslots — Response - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableTimeslots — Response**

## Logical Model: GetAvailableTimeslots — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabletimeslots | *Version*:2.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetAvailableTimeslots |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetAvailableTimeslots (urn:riv:supportprocess:logistics:scheduling:GetAvailableTimeslotsResponder:2, GetAvailableTimeslotsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-getavailabletimeslots.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailabletimeslots.csv), [Excel](StructureDefinition-getavailabletimeslots.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailabletimeslots",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabletimeslots",
  "version" : "2.0",
  "name" : "GetAvailableTimeslots",
  "title" : "GetAvailableTimeslots — Response",
  "status" : "draft",
  "date" : "2026-10-08T18:56:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetAvailableTimeslots\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableTimeslotsResponder:2, GetAvailableTimeslotsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabletimeslots",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailabletimeslots",
      "path" : "getavailabletimeslots",
      "short" : "GetAvailableTimeslots — Response",
      "definition" : "Logisk modell för svaret i GetAvailableTimeslots\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableTimeslotsResponder:2, GetAvailableTimeslotsResponseType)."
    },
    {
      "id" : "getavailabletimeslots.timeslot",
      "path" : "getavailabletimeslots.timeslot",
      "short" : "timeslot",
      "definition" : "timeslot",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeslotId",
      "path" : "getavailabletimeslots.timeslot.timeslotId",
      "short" : "timeslotId",
      "definition" : "timeslotId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType",
      "path" : "getavailabletimeslots.timeslot.timeType",
      "short" : "timeType",
      "definition" : "timeType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.timeTypeCode",
      "path" : "getavailabletimeslots.timeslot.timeType.timeTypeCode",
      "short" : "timeTypeCode",
      "definition" : "timeTypeCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.hidden",
      "path" : "getavailabletimeslots.timeslot.timeType.hidden",
      "short" : "hidden",
      "definition" : "hidden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.careContactCode",
      "path" : "getavailabletimeslots.timeslot.timeType.careContactCode",
      "short" : "careContactCode",
      "definition" : "careContactCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.careContactCode.cvCode",
      "path" : "getavailabletimeslots.timeslot.timeType.careContactCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.careContactCode.codeSystem",
      "path" : "getavailabletimeslots.timeslot.timeType.careContactCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.careContactCode.codeSystemName",
      "path" : "getavailabletimeslots.timeslot.timeType.careContactCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.careContactCode.codeSystemVersion",
      "path" : "getavailabletimeslots.timeslot.timeType.careContactCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.careContactCode.displayName",
      "path" : "getavailabletimeslots.timeslot.timeType.careContactCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.careContactCode.originalText",
      "path" : "getavailabletimeslots.timeslot.timeType.careContactCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService",
      "short" : "healthcareService",
      "definition" : "healthcareService",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "healthcareServiceCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.snomedCtCode",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.snomedCtCode",
      "short" : "snomedCtCode",
      "definition" : "snomedCtCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.codeSystem",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "Tillåtna värden: 1.2.752.116.2.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.codeSystemName",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.codeSystemVersion",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.displayName",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.originalText",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.healthcareServiceCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.information",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.information",
      "short" : "information",
      "definition" : "information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.information.header",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.information.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.information.description",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.information.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.information.link",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.information.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm",
      "short" : "conditionsToConfirm",
      "definition" : "conditionsToConfirm",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm.header",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm.description",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm.link",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareTeam",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareTeam",
      "short" : "healthcareTeam",
      "definition" : "healthcareTeam",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.patientGroup",
      "path" : "getavailabletimeslots.timeslot.timeType.patientGroup",
      "short" : "patientGroup",
      "definition" : "patientGroup",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.cancelAppointmentAllowed",
      "path" : "getavailabletimeslots.timeslot.timeType.cancelAppointmentAllowed",
      "short" : "cancelAppointmentAllowed",
      "definition" : "cancelAppointmentAllowed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.updateAppointmentAllowed",
      "path" : "getavailabletimeslots.timeslot.timeType.updateAppointmentAllowed",
      "short" : "updateAppointmentAllowed",
      "definition" : "updateAppointmentAllowed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule",
      "short" : "appointmentRule",
      "definition" : "appointmentRule",
      "min" : 0,
      "max" : "3",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.timeTypeRulesType",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.timeTypeRulesType",
      "short" : "timeTypeRulesType",
      "definition" : "timeTypeRulesType Heter type i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/ValueSet/scheduling-process-vs"
      }
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonTextRequired",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonTextRequired",
      "short" : "reasonTextRequired",
      "definition" : "reasonTextRequired",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/ValueSet/scheduling-reasonrequired-vs"
      }
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodeRequired",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodeRequired",
      "short" : "reasonCodeRequired",
      "definition" : "reasonCodeRequired",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/ValueSet/scheduling-reasonrequired-vs"
      }
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes",
      "short" : "reasonCodes",
      "definition" : "reasonCodes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.cvCode",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.codeSystem",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.codeSystemName",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.codeSystemVersion",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.displayName",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.originalText",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.reasonCodes.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information",
      "short" : "information",
      "definition" : "information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information.header",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information.description",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information.link",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm",
      "short" : "conditionToConfirm",
      "definition" : "conditionToConfirm",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm.header",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm.description",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm.link",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.startTime",
      "path" : "getavailabletimeslots.timeslot.startTime",
      "short" : "startTime",
      "definition" : "startTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.endTime",
      "path" : "getavailabletimeslots.timeslot.endTime",
      "short" : "endTime",
      "definition" : "endTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeLength",
      "path" : "getavailabletimeslots.timeslot.timeLength",
      "short" : "timeLength",
      "definition" : "timeLength",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.healthcareFacilityHSAId",
      "path" : "getavailabletimeslots.timeslot.healthcareFacilityHSAId",
      "short" : "healthcareFacilityHSAId",
      "definition" : "healthcareFacilityHSAId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.healthcareFacilityHSAId.root",
      "path" : "getavailabletimeslots.timeslot.healthcareFacilityHSAId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.healthcareFacilityHSAId.hSAIdExtension",
      "path" : "getavailabletimeslots.timeslot.healthcareFacilityHSAId.hSAIdExtension",
      "short" : "hSAIdExtension",
      "definition" : "hSAIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.practitioner",
      "path" : "getavailabletimeslots.timeslot.practitioner",
      "short" : "practitioner",
      "definition" : "practitioner",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.practitioner.HSAId",
      "path" : "getavailabletimeslots.timeslot.practitioner.HSAId",
      "short" : "HSAId",
      "definition" : "HSAId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.practitioner.HSAId.root",
      "path" : "getavailabletimeslots.timeslot.practitioner.HSAId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.practitioner.HSAId.hSAIdExtension",
      "path" : "getavailabletimeslots.timeslot.practitioner.HSAId.hSAIdExtension",
      "short" : "hSAIdExtension",
      "definition" : "hSAIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.practitioner.firstName",
      "path" : "getavailabletimeslots.timeslot.practitioner.firstName",
      "short" : "firstName",
      "definition" : "firstName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.practitioner.lastName",
      "path" : "getavailabletimeslots.timeslot.practitioner.lastName",
      "short" : "lastName",
      "definition" : "lastName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.practitioner.title",
      "path" : "getavailabletimeslots.timeslot.practitioner.title",
      "short" : "title",
      "definition" : "title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource",
      "path" : "getavailabletimeslots.timeslot.resource",
      "short" : "resource",
      "definition" : "resource",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.typeOfResource",
      "path" : "getavailabletimeslots.timeslot.resource.typeOfResource",
      "short" : "typeOfResource",
      "definition" : "typeOfResource",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.typeOfResource.cvCode",
      "path" : "getavailabletimeslots.timeslot.resource.typeOfResource.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.typeOfResource.codeSystem",
      "path" : "getavailabletimeslots.timeslot.resource.typeOfResource.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.typeOfResource.codeSystemName",
      "path" : "getavailabletimeslots.timeslot.resource.typeOfResource.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.typeOfResource.codeSystemVersion",
      "path" : "getavailabletimeslots.timeslot.resource.typeOfResource.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.typeOfResource.displayName",
      "path" : "getavailabletimeslots.timeslot.resource.typeOfResource.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.typeOfResource.originalText",
      "path" : "getavailabletimeslots.timeslot.resource.typeOfResource.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.resourceAttribute",
      "path" : "getavailabletimeslots.timeslot.resource.resourceAttribute",
      "short" : "resourceAttribute",
      "definition" : "resourceAttribute",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.resourceAttribute.cvCode",
      "path" : "getavailabletimeslots.timeslot.resource.resourceAttribute.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.resourceAttribute.codeSystem",
      "path" : "getavailabletimeslots.timeslot.resource.resourceAttribute.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.resourceAttribute.codeSystemName",
      "path" : "getavailabletimeslots.timeslot.resource.resourceAttribute.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.resourceAttribute.codeSystemVersion",
      "path" : "getavailabletimeslots.timeslot.resource.resourceAttribute.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.resourceAttribute.displayName",
      "path" : "getavailabletimeslots.timeslot.resource.resourceAttribute.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.resourceAttribute.originalText",
      "path" : "getavailabletimeslots.timeslot.resource.resourceAttribute.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.description",
      "path" : "getavailabletimeslots.timeslot.resource.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.withinCareGuarantee",
      "path" : "getavailabletimeslots.timeslot.withinCareGuarantee",
      "short" : "withinCareGuarantee",
      "definition" : "withinCareGuarantee",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.alternativeLocation",
      "path" : "getavailabletimeslots.timeslot.alternativeLocation",
      "short" : "alternativeLocation",
      "definition" : "alternativeLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.resultCode",
      "path" : "getavailabletimeslots.resultCode",
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
      "id" : "getavailabletimeslots.resultText",
      "path" : "getavailabletimeslots.resultText",
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
