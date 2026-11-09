# GetAvailableDates — Response - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableDates — Response**

## Logical Model: GetAvailableDates — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabledates | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetAvailableDates |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetAvailableDates (urn:riv:supportprocess:logistics:scheduling:GetAvailableDatesResponder:2, GetAvailableDatesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-getavailabledates.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailabledates.csv), [Excel](StructureDefinition-getavailabledates.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailabledates",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabledates",
  "version" : "2.0",
  "name" : "GetAvailableDates",
  "title" : "GetAvailableDates — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:52:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetAvailableDates\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableDatesResponder:2, GetAvailableDatesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabledates",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailabledates",
      "path" : "getavailabledates",
      "short" : "GetAvailableDates — Response",
      "definition" : "Logisk modell för svaret i GetAvailableDates\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableDatesResponder:2, GetAvailableDatesResponseType)."
    },
    {
      "id" : "getavailabledates.availableDate",
      "path" : "getavailabledates.availableDate",
      "short" : "AvailableDateType",
      "definition" : "Lista med datum där det finns lediga tider",
      "comment" : "TKB-fält: `availableDate` (`AvailableDateType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.date",
      "path" : "getavailabledates.availableDate.date",
      "short" : "date",
      "definition" : "Ledigt datum.",
      "comment" : "TKB-fält: `availableDate .date` (`DT`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/DT"]
      }]
    },
    {
      "id" : "getavailabledates.availableDate.noOfTimeslots",
      "path" : "getavailabledates.availableDate.noOfTimeslots",
      "short" : "noOfTimeslots",
      "definition" : "Antal lediga tider som finns på datumet",
      "comment" : "TKB-fält: `availableDate.noOfTimeslots` (`integer`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType",
      "path" : "getavailabledates.availableDate.timeType",
      "short" : "TimeTypeType",
      "definition" : "Tidstyp som de lediga tiderna gäller",
      "comment" : "TKB-fält: `availableDate.timeType` (`TimeTypeType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.code",
      "path" : "getavailabledates.availableDate.timeType.code",
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
      "id" : "getavailabledates.availableDate.timeType.hidden",
      "path" : "getavailabledates.availableDate.timeType.hidden",
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
      "id" : "getavailabledates.availableDate.timeType.careContactCode",
      "path" : "getavailabledates.availableDate.timeType.careContactCode",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareService",
      "path" : "getavailabledates.availableDate.timeType.healthcareService",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareService.code",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.code",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareService.information",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.information",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareService.information.header",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.information.header",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareService.information.description",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.information.description",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareService.information.link",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.information.link",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareService.conditionsToConfirm",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.conditionsToConfirm",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareService.conditionsToConfirm.header",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.conditionsToConfirm.header",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareService.conditionsToConfirm.description",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.conditionsToConfirm.description",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareService.conditionsToConfirm.link",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.conditionsToConfirm.link",
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
      "id" : "getavailabledates.availableDate.timeType.healthcareTeam",
      "path" : "getavailabledates.availableDate.timeType.healthcareTeam",
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
      "id" : "getavailabledates.availableDate.timeType.patientGroup",
      "path" : "getavailabledates.availableDate.timeType.patientGroup",
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
      "id" : "getavailabledates.availableDate.timeType.cancelAppointmentAllowed",
      "path" : "getavailabledates.availableDate.timeType.cancelAppointmentAllowed",
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
      "id" : "getavailabledates.availableDate.timeType.updateAppointmentAllowed",
      "path" : "getavailabledates.availableDate.timeType.updateAppointmentAllowed",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.type",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.type",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.reasonTextRequired",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.reasonTextRequired",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodeRequired",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodeRequired",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.information",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.information",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.information.header",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.information.header",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.information.description",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.information.description",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.information.link",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.information.link",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.conditionToConfirm",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.conditionToConfirm",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.conditionToConfirm.header",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.conditionToConfirm.header",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.conditionToConfirm.description",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.conditionToConfirm.description",
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
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.conditionToConfirm.link",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.conditionToConfirm.link",
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
      "id" : "getavailabledates.availableDate.practitioner",
      "path" : "getavailabledates.availableDate.practitioner",
      "short" : "PractitionerType",
      "definition" : "Personal som är relaterad till de lediga tiderna",
      "comment" : "TKB-fält: `availableDate.practitioner` (`PractionerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.practitioner.HSAId",
      "path" : "getavailabledates.availableDate.practitioner.HSAId",
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
      "id" : "getavailabledates.availableDate.practitioner.firstName",
      "path" : "getavailabledates.availableDate.practitioner.firstName",
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
      "id" : "getavailabledates.availableDate.practitioner.lastName",
      "path" : "getavailabledates.availableDate.practitioner.lastName",
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
      "id" : "getavailabledates.availableDate.practitioner.title",
      "path" : "getavailabledates.availableDate.practitioner.title",
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
      "id" : "getavailabledates.availableDate.resource",
      "path" : "getavailabledates.availableDate.resource",
      "short" : "ResourceType",
      "definition" : "Resurs som är relaterad till de lediga tiderna",
      "comment" : "TKB-fält: `availableDate.resource` (`ResourceType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.typeOfResource",
      "path" : "getavailabledates.availableDate.resource.typeOfResource",
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
      "id" : "getavailabledates.availableDate.resource.resourceAttribute",
      "path" : "getavailabledates.availableDate.resource.resourceAttribute",
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
      "id" : "getavailabledates.availableDate.resource.description",
      "path" : "getavailabledates.availableDate.resource.description",
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
      "id" : "getavailabledates.resultCode",
      "path" : "getavailabledates.resultCode",
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
      "id" : "getavailabledates.resultText",
      "path" : "getavailabledates.resultText",
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
