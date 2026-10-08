# GetTimeTypes — Response - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTimeTypes — Response**

## Logical Model: GetTimeTypes — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gettimetypes | *Version*:2.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetTimeTypes |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetTimeTypes (urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-gettimetypes.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gettimetypes.csv), [Excel](StructureDefinition-gettimetypes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gettimetypes",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gettimetypes",
  "version" : "2.0",
  "name" : "GetTimeTypes",
  "title" : "GetTimeTypes — Response",
  "status" : "draft",
  "date" : "2026-10-08T18:56:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetTimeTypes\n(urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gettimetypes",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gettimetypes",
      "path" : "gettimetypes",
      "short" : "GetTimeTypes — Response",
      "definition" : "Logisk modell för svaret i GetTimeTypes\n(urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesResponseType)."
    },
    {
      "id" : "gettimetypes.timeType",
      "path" : "gettimetypes.timeType",
      "short" : "timeType",
      "definition" : "timeType",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes.timeType.timeTypeCode",
      "path" : "gettimetypes.timeType.timeTypeCode",
      "short" : "timeTypeCode",
      "definition" : "timeTypeCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.hidden",
      "path" : "gettimetypes.timeType.hidden",
      "short" : "hidden",
      "definition" : "hidden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gettimetypes.timeType.careContactCode",
      "path" : "gettimetypes.timeType.careContactCode",
      "short" : "careContactCode",
      "definition" : "careContactCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes.timeType.careContactCode.cvCode",
      "path" : "gettimetypes.timeType.careContactCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.careContactCode.codeSystem",
      "path" : "gettimetypes.timeType.careContactCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.careContactCode.codeSystemName",
      "path" : "gettimetypes.timeType.careContactCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.careContactCode.codeSystemVersion",
      "path" : "gettimetypes.timeType.careContactCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.careContactCode.displayName",
      "path" : "gettimetypes.timeType.careContactCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.careContactCode.originalText",
      "path" : "gettimetypes.timeType.careContactCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService",
      "path" : "gettimetypes.timeType.healthcareService",
      "short" : "healthcareService",
      "definition" : "healthcareService",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.healthcareServiceCode",
      "path" : "gettimetypes.timeType.healthcareService.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "healthcareServiceCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.snomedCtCode",
      "path" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.snomedCtCode",
      "short" : "snomedCtCode",
      "definition" : "snomedCtCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.codeSystem",
      "path" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "Tillåtna värden: 1.2.752.116.2.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.codeSystemName",
      "path" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.codeSystemVersion",
      "path" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.displayName",
      "path" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.originalText",
      "path" : "gettimetypes.timeType.healthcareService.healthcareServiceCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.information",
      "path" : "gettimetypes.timeType.healthcareService.information",
      "short" : "information",
      "definition" : "information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.information.header",
      "path" : "gettimetypes.timeType.healthcareService.information.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.information.description",
      "path" : "gettimetypes.timeType.healthcareService.information.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.information.link",
      "path" : "gettimetypes.timeType.healthcareService.information.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.conditionsToConfirm",
      "path" : "gettimetypes.timeType.healthcareService.conditionsToConfirm",
      "short" : "conditionsToConfirm",
      "definition" : "conditionsToConfirm",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.conditionsToConfirm.header",
      "path" : "gettimetypes.timeType.healthcareService.conditionsToConfirm.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.conditionsToConfirm.description",
      "path" : "gettimetypes.timeType.healthcareService.conditionsToConfirm.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareService.conditionsToConfirm.link",
      "path" : "gettimetypes.timeType.healthcareService.conditionsToConfirm.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "gettimetypes.timeType.healthcareTeam",
      "path" : "gettimetypes.timeType.healthcareTeam",
      "short" : "healthcareTeam",
      "definition" : "healthcareTeam",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gettimetypes.timeType.patientGroup",
      "path" : "gettimetypes.timeType.patientGroup",
      "short" : "patientGroup",
      "definition" : "patientGroup",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gettimetypes.timeType.cancelAppointmentAllowed",
      "path" : "gettimetypes.timeType.cancelAppointmentAllowed",
      "short" : "cancelAppointmentAllowed",
      "definition" : "cancelAppointmentAllowed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gettimetypes.timeType.updateAppointmentAllowed",
      "path" : "gettimetypes.timeType.updateAppointmentAllowed",
      "short" : "updateAppointmentAllowed",
      "definition" : "updateAppointmentAllowed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule",
      "path" : "gettimetypes.timeType.appointmentRule",
      "short" : "appointmentRule",
      "definition" : "appointmentRule",
      "min" : 0,
      "max" : "3",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.timeTypeRulesType",
      "path" : "gettimetypes.timeType.appointmentRule.timeTypeRulesType",
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
      "id" : "gettimetypes.timeType.appointmentRule.reasonTextRequired",
      "path" : "gettimetypes.timeType.appointmentRule.reasonTextRequired",
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
      "id" : "gettimetypes.timeType.appointmentRule.reasonCodeRequired",
      "path" : "gettimetypes.timeType.appointmentRule.reasonCodeRequired",
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
      "id" : "gettimetypes.timeType.appointmentRule.reasonCodes",
      "path" : "gettimetypes.timeType.appointmentRule.reasonCodes",
      "short" : "reasonCodes",
      "definition" : "reasonCodes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.reasonCodes.cvCode",
      "path" : "gettimetypes.timeType.appointmentRule.reasonCodes.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.reasonCodes.codeSystem",
      "path" : "gettimetypes.timeType.appointmentRule.reasonCodes.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.reasonCodes.codeSystemName",
      "path" : "gettimetypes.timeType.appointmentRule.reasonCodes.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.reasonCodes.codeSystemVersion",
      "path" : "gettimetypes.timeType.appointmentRule.reasonCodes.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.reasonCodes.displayName",
      "path" : "gettimetypes.timeType.appointmentRule.reasonCodes.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.reasonCodes.originalText",
      "path" : "gettimetypes.timeType.appointmentRule.reasonCodes.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.information",
      "path" : "gettimetypes.timeType.appointmentRule.information",
      "short" : "information",
      "definition" : "information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.information.header",
      "path" : "gettimetypes.timeType.appointmentRule.information.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.information.description",
      "path" : "gettimetypes.timeType.appointmentRule.information.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.information.link",
      "path" : "gettimetypes.timeType.appointmentRule.information.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.conditionToConfirm",
      "path" : "gettimetypes.timeType.appointmentRule.conditionToConfirm",
      "short" : "conditionToConfirm",
      "definition" : "conditionToConfirm",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.conditionToConfirm.header",
      "path" : "gettimetypes.timeType.appointmentRule.conditionToConfirm.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.conditionToConfirm.description",
      "path" : "gettimetypes.timeType.appointmentRule.conditionToConfirm.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes.timeType.appointmentRule.conditionToConfirm.link",
      "path" : "gettimetypes.timeType.appointmentRule.conditionToConfirm.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "gettimetypes.resultCode",
      "path" : "gettimetypes.resultCode",
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
      "id" : "gettimetypes.resultText",
      "path" : "gettimetypes.resultText",
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
