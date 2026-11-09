# GetHealthcareFacilities — Response - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthcareFacilities — Response**

## Logical Model: GetHealthcareFacilities — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacilities | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetHealthcareFacilities |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetHealthcareFacilities (urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-gethealthcarefacilities.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcarefacilities.csv), [Excel](StructureDefinition-gethealthcarefacilities.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcarefacilities",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacilities",
  "version" : "2.0",
  "name" : "GetHealthcareFacilities",
  "title" : "GetHealthcareFacilities — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:52:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetHealthcareFacilities\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacilities",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcarefacilities",
      "path" : "gethealthcarefacilities",
      "short" : "GetHealthcareFacilities — Response",
      "definition" : "Logisk modell för svaret i GetHealthcareFacilities\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesResponseType)."
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility",
      "path" : "gethealthcarefacilities.healthcareFacility",
      "short" : "OrgUnitType",
      "definition" : "Lista med tillgängliga vårdcentraler/vårdenheter.",
      "comment" : "TKB-fält: `healthcareFacility` (`OrgUnitType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.HSAId",
      "path" : "gethealthcarefacilities.healthcareFacility.HSAId",
      "short" : "HSAIdType",
      "definition" : "HSAId",
      "comment" : "TKB-fält: `../HSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.name",
      "path" : "gethealthcarefacilities.healthcareFacility.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../name` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.alternativeLocation",
      "path" : "gethealthcarefacilities.healthcareFacility.alternativeLocation",
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
      "id" : "gethealthcarefacilities.healthcareFacility.information",
      "path" : "gethealthcarefacilities.healthcareFacility.information",
      "short" : "InformationType",
      "definition" : "information",
      "comment" : "TKB-fält: `../information` (`InformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.information.header",
      "path" : "gethealthcarefacilities.healthcareFacility.information.header",
      "short" : "header",
      "definition" : "header",
      "comment" : "TKB-fält: `../../header` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.information.description",
      "path" : "gethealthcarefacilities.healthcareFacility.information.description",
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
      "id" : "gethealthcarefacilities.healthcareFacility.information.link",
      "path" : "gethealthcarefacilities.healthcareFacility.information.link",
      "short" : "link",
      "definition" : "link",
      "comment" : "TKB-fält: `../../link` (`anyURI`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm",
      "path" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm",
      "short" : "InformationType",
      "definition" : "conditionToConfirm",
      "comment" : "TKB-fält: `../conditionToConfirm` (`InformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.header",
      "path" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.header",
      "short" : "header",
      "definition" : "header",
      "comment" : "TKB-fält: `../../header` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.description",
      "path" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.description",
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
      "id" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.link",
      "path" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.link",
      "short" : "link",
      "definition" : "link",
      "comment" : "TKB-fält: `../../link` (`anyURI`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "gethealthcarefacilities.resultCode",
      "path" : "gethealthcarefacilities.resultCode",
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
      "id" : "gethealthcarefacilities.resultText",
      "path" : "gethealthcarefacilities.resultText",
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
