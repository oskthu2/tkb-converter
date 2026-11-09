# GetAvailableTimeslots — Response - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableTimeslots — Response**

## Logical Model: GetAvailableTimeslots — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabletimeslots | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetAvailableTimeslots |
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
  "date" : "2026-11-09T03:52:57+00:00",
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
      "short" : "TimeslotType",
      "definition" : "List med lediga tider",
      "comment" : "TKB-fält: `timeslot` (`TimeslotType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeslotId",
      "path" : "getavailabletimeslots.timeslot.timeslotId",
      "short" : "timeslotId",
      "definition" : "Unikt id för tidsluckan. Ska uttryckas som uuid (universally unique identifier).",
      "comment" : "TKB-fält: `timeslot.timeslotId` (`uuidType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/uuidType"]
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType",
      "path" : "getavailabletimeslots.timeslot.timeType",
      "short" : "TimeTypeType",
      "definition" : "Typ av tid som uttrycker var bokningen/besöket avser. Se datatypen TimeTypeType för vidare information.",
      "comment" : "TKB-fält: `timeslot.timeType` (`TimeTypeType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.code",
      "path" : "getavailabletimeslots.timeslot.timeType.code",
      "short" : "code",
      "definition" : "code",
      "comment" : "TKB-fält: `../../code` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../hidden` (`boolean`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../careContactCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService",
      "short" : "HealthcareServiceType",
      "definition" : "healthcareService",
      "comment" : "TKB-fält: `../../healthcareService` (`HealthcareServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.code",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.code",
      "short" : "SnomedCtType",
      "definition" : "code",
      "comment" : "TKB-fält: `../../../code` (`SnomedCtType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.information",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.information",
      "short" : "InformationType",
      "definition" : "information",
      "comment" : "TKB-fält: `../../../information` (`InformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.information.header",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.information.header",
      "short" : "header",
      "definition" : "header",
      "comment" : "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm",
      "short" : "InformationType",
      "definition" : "conditionsToConfirm",
      "comment" : "TKB-fält: `../../../conditionsToConfirm` (`InformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm.header",
      "path" : "getavailabletimeslots.timeslot.timeType.healthcareService.conditionsToConfirm.header",
      "short" : "header",
      "definition" : "header",
      "comment" : "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../healthcareTeam` (`boolean`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../patientGroup` (`boolean`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../cancelAppointmentAllowed` (`boolean`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../updateAppointmentAllowed` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule",
      "short" : "TimeTypeRulesType",
      "definition" : "appointmentRule",
      "comment" : "TKB-fält: `../../appointmentRule` (`TimeTypeRulesType`, kardinalitet 0..3).",
      "min" : 0,
      "max" : "3",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.type",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.type",
      "short" : "type",
      "definition" : "type Tillåtna värden: NYBOKNING, AVBOKNING, OMBOKNING.",
      "comment" : "TKB-fält: `../../../type` (`ProcessEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** type Tillåtna värden: NYBOKNING, AVBOKNING, OMBOKNING.",
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
      "definition" : "reasonTextRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported.",
      "comment" : "TKB-fält: `../../../reasonTextRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** reasonTextRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported.",
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
      "definition" : "reasonCodeRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported.",
      "comment" : "TKB-fält: `../../../reasonCodeRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** reasonCodeRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported.",
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
      "comment" : "TKB-fält: `../../../reasonCodes` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information",
      "short" : "InformationType",
      "definition" : "information",
      "comment" : "TKB-fält: `../../../information` (`InformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information.header",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.information.header",
      "short" : "header",
      "definition" : "header",
      "comment" : "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm",
      "short" : "InformationType",
      "definition" : "conditionToConfirm",
      "comment" : "TKB-fält: `../../../conditionToConfirm` (`InformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm.header",
      "path" : "getavailabletimeslots.timeslot.timeType.appointmentRule.conditionToConfirm.header",
      "short" : "header",
      "definition" : "header",
      "comment" : "TKB-fält: `../../../../header` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../../description` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../link` (`anyURI`, kardinalitet 0..1).",
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
      "definition" : "Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss.",
      "comment" : "TKB-fält: `timeslot.startTime` (`TS (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.endTime",
      "path" : "getavailabletimeslots.timeslot.endTime",
      "short" : "endTime",
      "definition" : "Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss.",
      "comment" : "TKB-fält: `timeslot.endTime` (`TS (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.timeLength",
      "path" : "getavailabletimeslots.timeslot.timeLength",
      "short" : "timeLength",
      "definition" : "Längd på besöket i minuter",
      "comment" : "TKB-fält: `timeslot.timeLength` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.healthcareFacilityHSAId",
      "path" : "getavailabletimeslots.timeslot.healthcareFacilityHSAId",
      "short" : "HSAIdType",
      "definition" : "HSAId för vårdenheten som bokningen gäller hos.",
      "comment" : "TKB-fält: `timeslot.healthcareFacilityHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.practitioner",
      "path" : "getavailabletimeslots.timeslot.practitioner",
      "short" : "PractitionerType",
      "definition" : "HoS-person som besöket är bokat hos. Se datatypen PractitionerType för vidare information.",
      "comment" : "TKB-fält: `timeslot.practitioner` (`PractitionerType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.practitioner.HSAId",
      "path" : "getavailabletimeslots.timeslot.practitioner.HSAId",
      "short" : "HSAIdType",
      "definition" : "HSAId",
      "comment" : "TKB-fält: `../../HSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.practitioner.firstName",
      "path" : "getavailabletimeslots.timeslot.practitioner.firstName",
      "short" : "firstName",
      "definition" : "firstName",
      "comment" : "TKB-fält: `../../firstName` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../lastName` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../title` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource",
      "path" : "getavailabletimeslots.timeslot.resource",
      "short" : "ResourceType",
      "definition" : "En resurs är något som kan tas i anspråk för eller krävs för genomförande av aktiviteter eller processer inom vård och omsorg och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter inom hälso- och sjukvård och pengar som betalas ut till brukaren inom socialtjänst.\n\nSe datatypen ResourceType för vidare information.",
      "comment" : "TKB-fält: `timeslot.resource` (`ResourceType`, kardinalitet 0..1).\n\nObs: modellen anger 0..* där TKB:n anger 0..1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.typeOfResource",
      "path" : "getavailabletimeslots.timeslot.resource.typeOfResource",
      "short" : "typeOfResource",
      "definition" : "typeOfResource",
      "comment" : "TKB-fält: `../../typeOfResource` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.resourceAttribute",
      "path" : "getavailabletimeslots.timeslot.resource.resourceAttribute",
      "short" : "resourceAttribute",
      "definition" : "resourceAttribute",
      "comment" : "TKB-fält: `../../resourceAttribute` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getavailabletimeslots.timeslot.resource.description",
      "path" : "getavailabletimeslots.timeslot.resource.description",
      "short" : "description",
      "definition" : "description",
      "comment" : "TKB-fält: `../../description` (`string`, kardinalitet 0..1).",
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
      "definition" : "Flagga som visar huruvida denna tidslucka ligger inom Vårdgarantin. Flaggan är intressant att förmedla i samband med exempelvis ett nybokningsflöde, då invånaren söker efter lediga tider. Flaggan relaterar således till den tidpunkt då invånaren begärde att söka efter lediga tider. Om attributet utesluts kan en konsument inte dra slutsatser huruvida den erbjudna lediga tiden ligger inom eller utom vårdgarantin.",
      "comment" : "TKB-fält: `timeslot.withinCareGuarantee` (`boolean`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../alternativeLocation` (`string`, kardinalitet 0..1).",
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
      "definition" : "Kan endast vara OK, INFO eller ERROR.",
      "comment" : "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED.",
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
      "definition" : "Kan utelämnas om resultCode = OK.\n\nProducent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR",
      "comment" : "TKB-fält: `resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
