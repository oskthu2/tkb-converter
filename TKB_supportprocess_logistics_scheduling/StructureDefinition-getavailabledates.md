# GetAvailableDates — Response - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableDates — Response**

## Logical Model: GetAvailableDates — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabledates | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetAvailableDates |
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
  "date" : "2026-11-06T21:54:21+00:00",
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
      "short" : "availableDate",
      "definition" : "Lista med datum där det finns lediga tider",
      "comment" : "TKB-fält: `availableDate` (`AvailableDateType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
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
        "code" : "string"
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
      "short" : "timeType",
      "definition" : "Tidstyp som de lediga tiderna gäller",
      "comment" : "TKB-fält: `availableDate.timeType` (`TimeTypeType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.timeTypeCode",
      "path" : "getavailabledates.availableDate.timeType.timeTypeCode",
      "short" : "timeTypeCode",
      "definition" : "timeTypeCode Heter code i schemat.",
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
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.careContactCode.cvCode",
      "path" : "getavailabledates.availableDate.timeType.careContactCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.careContactCode.codeSystem",
      "path" : "getavailabledates.availableDate.timeType.careContactCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.careContactCode.codeSystemName",
      "path" : "getavailabledates.availableDate.timeType.careContactCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.careContactCode.codeSystemVersion",
      "path" : "getavailabledates.availableDate.timeType.careContactCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.careContactCode.displayName",
      "path" : "getavailabledates.availableDate.timeType.careContactCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.careContactCode.originalText",
      "path" : "getavailabledates.availableDate.timeType.careContactCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.healthcareService",
      "path" : "getavailabledates.availableDate.timeType.healthcareService",
      "short" : "healthcareService",
      "definition" : "healthcareService",
      "comment" : "TKB-fält: `../../healthcareService` (`HealthcareServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "healthcareServiceCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`SnomedCtType`, kardinalitet 1..1).\n\n**Modellanteckning:** healthcareServiceCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.snomedCtCode",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.snomedCtCode",
      "short" : "snomedCtCode",
      "definition" : "snomedCtCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** snomedCtCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.codeSystem",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "Tillåtna värden: 1.2.752.116.2.1.1.",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.codeSystemName",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.codeSystemVersion",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.displayName",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.originalText",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.healthcareServiceCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.healthcareService.information",
      "path" : "getavailabledates.availableDate.timeType.healthcareService.information",
      "short" : "information",
      "definition" : "information",
      "comment" : "TKB-fält: `../../../information` (`InformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
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
      "short" : "conditionsToConfirm",
      "definition" : "conditionsToConfirm",
      "comment" : "TKB-fält: `../../../conditionsToConfirm` (`InformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
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
      "short" : "appointmentRule",
      "definition" : "appointmentRule",
      "comment" : "TKB-fält: `../../appointmentRule` (`TimeTypeRulesType`, kardinalitet 0..3).",
      "min" : 0,
      "max" : "3",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.timeTypeRulesType",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.timeTypeRulesType",
      "short" : "timeTypeRulesType",
      "definition" : "timeTypeRulesType Heter type i schemat.",
      "comment" : "TKB-fält: `../../../type` (`ProcessEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** timeTypeRulesType Heter type i schemat.",
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
      "definition" : "reasonTextRequired",
      "comment" : "TKB-fält: `../../../reasonTextRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).",
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
      "definition" : "reasonCodeRequired",
      "comment" : "TKB-fält: `../../../reasonCodeRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).",
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
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.cvCode",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.codeSystem",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.codeSystemName",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.codeSystemVersion",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.displayName",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.originalText",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.reasonCodes.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.timeType.appointmentRule.information",
      "path" : "getavailabledates.availableDate.timeType.appointmentRule.information",
      "short" : "information",
      "definition" : "information",
      "comment" : "TKB-fält: `../../../information` (`InformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
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
      "short" : "conditionToConfirm",
      "definition" : "conditionToConfirm",
      "comment" : "TKB-fält: `../../../conditionToConfirm` (`InformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
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
      "short" : "practitioner",
      "definition" : "Personal som är relaterad till de lediga tiderna",
      "comment" : "TKB-fält: `availableDate.practitioner` (`PractionerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.practitioner.HSAId",
      "path" : "getavailabledates.availableDate.practitioner.HSAId",
      "short" : "HSAId",
      "definition" : "HSAId",
      "comment" : "TKB-fält: `../../HSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.practitioner.HSAId.root",
      "path" : "getavailabledates.availableDate.practitioner.HSAId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.practitioner.HSAId.hSAIdExtension",
      "path" : "getavailabledates.availableDate.practitioner.HSAId.hSAIdExtension",
      "short" : "hSAIdExtension",
      "definition" : "hSAIdExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../extension` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** hSAIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
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
      "short" : "resource",
      "definition" : "Resurs som är relaterad till de lediga tiderna",
      "comment" : "TKB-fält: `availableDate.resource` (`ResourceType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
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
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.typeOfResource.cvCode",
      "path" : "getavailabledates.availableDate.resource.typeOfResource.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.typeOfResource.codeSystem",
      "path" : "getavailabledates.availableDate.resource.typeOfResource.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.typeOfResource.codeSystemName",
      "path" : "getavailabledates.availableDate.resource.typeOfResource.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.typeOfResource.codeSystemVersion",
      "path" : "getavailabledates.availableDate.resource.typeOfResource.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.typeOfResource.displayName",
      "path" : "getavailabledates.availableDate.resource.typeOfResource.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.typeOfResource.originalText",
      "path" : "getavailabledates.availableDate.resource.typeOfResource.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
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
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.resourceAttribute.cvCode",
      "path" : "getavailabledates.availableDate.resource.resourceAttribute.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.resourceAttribute.codeSystem",
      "path" : "getavailabledates.availableDate.resource.resourceAttribute.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.resourceAttribute.codeSystemName",
      "path" : "getavailabledates.availableDate.resource.resourceAttribute.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.resourceAttribute.codeSystemVersion",
      "path" : "getavailabledates.availableDate.resource.resourceAttribute.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.resourceAttribute.displayName",
      "path" : "getavailabledates.availableDate.resource.resourceAttribute.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.availableDate.resource.resourceAttribute.originalText",
      "path" : "getavailabledates.availableDate.resource.resourceAttribute.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
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
      "comment" : "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
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
