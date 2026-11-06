# GetTimeTypes — Response - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTimeTypes — Response**

## Logical Model: GetTimeTypes — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gettimetypes | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetTimeTypes |
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
  "date" : "2026-11-06T21:54:21+00:00",
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
      "definition" : "Lista med tidstyper.",
      "comment" : "TKB-fält: `timeType` (`TimeTypeType`, kardinalitet 0..*).",
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
      "definition" : "Visar huruvida tidstypen är märkt som skyddad av verksamheten – hidden=TRUE.\n\nEn skyddad tidstyp ska inte vara valbar för invånare från en lista med tidstyper som vårdcentralen erbjuder, t ex vid ett nybokningsflöde. Skyddade tidstyper ska bara kunna bokas av invånare om verksamheten tilldelat tidstypen till invånaren, t ex genom en digital kallelse eller om invånare blivit triagerad i ett försteg och resultatet därifrån resulterat i tidstypen.\n\nOm attributet utelämnas ska tidstypen anses vara ”ej skyddad”.",
      "comment" : "TKB-fält: `timeType.hidden` (`boolean`, kardinalitet 0..1).",
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
      "definition" : "Anger vilken typ av vårdkontakt som bokningen avser. Se Kv kontakttyp för vidare information (https://inera.atlassian.net/wiki/download/attachments/2648506471/kv_kontakttyp.xlsx?api=v2).",
      "comment" : "TKB-fält: `timeType.careContactCode` (`CVType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
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
      "comment" : "TKB-fält: `../../codeSystem` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../codeSystemName` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../codeSystemVersion` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../displayName` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../originalText` (`string`, kardinalitet 0..1).",
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
      "definition" : "Anger vilken typ av vårdtjänst",
      "comment" : "TKB-fält: `timeType.healthcareService` (`boolean`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../code` (`SnomedCtType`, kardinalitet 1..1).\n\n**Modellanteckning:** healthcareServiceCode Heter code i schemat.",
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
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** snomedCtCode Heter code i schemat.",
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
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../information` (`InformationType`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../../header` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../description` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../link` (`anyURI`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../conditionsToConfirm` (`InformationType`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../../header` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../description` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../link` (`anyURI`, kardinalitet 0..1).",
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
      "definition" : "Anger huruvida patienten möter ett team av personal vid besöket. Om attributet utelämnas anses besöket ej vara av typen teambokning.",
      "comment" : "TKB-fält: `timeType.healthcareTeam` (`boolean`, kardinalitet 0..1).",
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
      "definition" : "Bokning av tid där flera personer/patienter i grupp möter vården för samma typ av vårdtjänst. Om attributet utelämnas anses besöket ej vara av typen gruppbokning.",
      "comment" : "TKB-fält: `timeType.patientGroup` (`boolean`, kardinalitet 0..1).",
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
      "definition" : "Anger huruvida invånaren tillåts att avboka bokningen via e-tjänst",
      "comment" : "TKB-fält: `timeType.cancelAppointmentAllowed` (`boolean`).",
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
      "definition" : "Anger huruvida invånaren tillåts att omboka bokningen via e-tjänst",
      "comment" : "TKB-fält: `timeType.updateAppointmentAllowed` (`boolean`).",
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
      "comment" : "TKB-fält: `../appointmentRule` (`TimeTypeRulesType`, kardinalitet 0..3).",
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
      "comment" : "TKB-fält: `../../type` (`ProcessEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** timeTypeRulesType Heter type i schemat.",
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
      "comment" : "TKB-fält: `../../reasonTextRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../reasonCodeRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../reasonCodes` (`CVType`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
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
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../information` (`InformationType`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../../header` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../description` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../link` (`anyURI`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../conditionToConfirm` (`InformationType`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../../header` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../description` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../link` (`anyURI`, kardinalitet 0..1).",
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
      "id" : "gettimetypes.resultText",
      "path" : "gettimetypes.resultText",
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
