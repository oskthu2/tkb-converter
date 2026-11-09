# CheckMedicationListVersion - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckMedicationListVersion**

## Logical Model: CheckMedicationListVersion 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/checkmedicationlistversion | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:CheckMedicationListVersion |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CheckMedicationListVersion (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:CheckMedicationListVersion:1). Representerar responsens informationsstruktur. Används för att kontrollera om en given läkemedelslisteversion är aktuell. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-checkmedicationlistversion.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-checkmedicationlistversion.csv), [Excel](StructureDefinition-checkmedicationlistversion.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "checkmedicationlistversion",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/checkmedicationlistversion",
  "version" : "1.0",
  "name" : "CheckMedicationListVersion",
  "title" : "CheckMedicationListVersion",
  "status" : "draft",
  "date" : "2026-11-09T03:17:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CheckMedicationListVersion\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:CheckMedicationListVersion:1).\nRepresenterar responsens informationsstruktur.\nAnvänds för att kontrollera om en given läkemedelslisteversion är aktuell.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/checkmedicationlistversion",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkmedicationlistversion",
      "path" : "checkmedicationlistversion",
      "short" : "CheckMedicationListVersion",
      "definition" : "Logisk modell för tjänstekontraktet CheckMedicationListVersion\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:CheckMedicationListVersion:1).\nRepresenterar responsens informationsstruktur.\nAnvänds för att kontrollera om en given läkemedelslisteversion är aktuell."
    },
    {
      "id" : "checkmedicationlistversion.isCurrentVersion",
      "path" : "checkmedicationlistversion.isCurrentVersion",
      "short" : "isCurrentVersion",
      "definition" : "Sann om versionen som skickades in i begäran är den senaste versionen som finns registrerad i NOD. Annars falskt.",
      "comment" : "TKB-fält: `isCurrentVersion` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "checkmedicationlistversion.result",
      "path" : "checkmedicationlistversion.result",
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
      "id" : "checkmedicationlistversion.result.resultCode",
      "path" : "checkmedicationlistversion.result.resultCode",
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
      "id" : "checkmedicationlistversion.result.errorCode",
      "path" : "checkmedicationlistversion.result.errorCode",
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
      "id" : "checkmedicationlistversion.result.subcode",
      "path" : "checkmedicationlistversion.result.subcode",
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
      "id" : "checkmedicationlistversion.result.logId",
      "path" : "checkmedicationlistversion.result.logId",
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
      "id" : "checkmedicationlistversion.result.message",
      "path" : "checkmedicationlistversion.result.message",
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
