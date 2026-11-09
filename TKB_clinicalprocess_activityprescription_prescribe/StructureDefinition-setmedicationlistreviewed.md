# SetMedicationListReviewed - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SetMedicationListReviewed**

## Logical Model: SetMedicationListReviewed 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/setmedicationlistreviewed | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:SetMedicationListReviewed |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet SetMedicationListReviewed (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewed:1). Representerar responsens informationsstruktur. Används för att markera att en läkemedelslista är genomgången (läkemedelsavstämning). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-setmedicationlistreviewed.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-setmedicationlistreviewed.csv), [Excel](StructureDefinition-setmedicationlistreviewed.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "setmedicationlistreviewed",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/setmedicationlistreviewed",
  "version" : "1.0",
  "name" : "SetMedicationListReviewed",
  "title" : "SetMedicationListReviewed",
  "status" : "draft",
  "date" : "2026-11-09T03:17:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet SetMedicationListReviewed\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewed:1).\nRepresenterar responsens informationsstruktur.\nAnvänds för att markera att en läkemedelslista är genomgången (läkemedelsavstämning).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/setmedicationlistreviewed",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "setmedicationlistreviewed",
      "path" : "setmedicationlistreviewed",
      "short" : "SetMedicationListReviewed",
      "definition" : "Logisk modell för tjänstekontraktet SetMedicationListReviewed\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewed:1).\nRepresenterar responsens informationsstruktur.\nAnvänds för att markera att en läkemedelslista är genomgången (läkemedelsavstämning)."
    },
    {
      "id" : "setmedicationlistreviewed.medicationListVersion",
      "path" : "setmedicationlistreviewed.medicationListVersion",
      "short" : "medicationListVersion",
      "definition" : "Version på patientens samlade läkemedelslista.\n\nSe kapitel 5.2 för exempel och regler kring format.",
      "comment" : "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "setmedicationlistreviewed.result",
      "path" : "setmedicationlistreviewed.result",
      "short" : "ResultType",
      "definition" : "Innehåller information om begäran gick bra eller ej.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "setmedicationlistreviewed.result.resultCode",
      "path" : "setmedicationlistreviewed.result.resultCode",
      "short" : "resultCode",
      "definition" : "Kan endast vara OK, INFO eller ERROR",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "setmedicationlistreviewed.result.errorCode",
      "path" : "setmedicationlistreviewed.result.errorCode",
      "short" : "errorCode",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).\n\n**Modellanteckning:** errorCode Tillåtna värden: VALIDATION_ERROR, ACCESS_DENIED, NOT_FOUND, ALREADY_EXISTS, INVALID_STATE, MAXIMUM_REQUEST_REACHED.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "setmedicationlistreviewed.result.subcode",
      "path" : "setmedicationlistreviewed.result.subcode",
      "short" : "subcode",
      "definition" : "Inga subkoder är specificerade.",
      "comment" : "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** subcode Tillåtna värden: SUB_RR_ERROR.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "setmedicationlistreviewed.result.logId",
      "path" : "setmedicationlistreviewed.result.logId",
      "short" : "logId",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "comment" : "TKB-fält: `../logId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "setmedicationlistreviewed.result.message",
      "path" : "setmedicationlistreviewed.result.message",
      "short" : "message",
      "definition" : "En beskrivande text som kan visas för användaren.",
      "comment" : "TKB-fält: `../message` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
