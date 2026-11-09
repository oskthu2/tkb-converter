# RegisterDispensedDrugsConsent - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterDispensedDrugsConsent**

## Logical Model: RegisterDispensedDrugsConsent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registerdispenseddrugsConsent | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:RegisterDispensedDrugsConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterDispensedDrugsConsent (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterDispensedDrugsConsent:2). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-registerdispenseddrugsConsent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registerdispenseddrugsConsent.csv), [Excel](StructureDefinition-registerdispenseddrugsConsent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registerdispenseddrugsConsent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registerdispenseddrugsConsent",
  "version" : "2.0",
  "name" : "RegisterDispensedDrugsConsent",
  "title" : "RegisterDispensedDrugsConsent",
  "status" : "draft",
  "date" : "2026-11-09T03:17:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterDispensedDrugsConsent\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterDispensedDrugsConsent:2).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registerdispenseddrugsConsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registerdispenseddrugsConsent",
      "path" : "registerdispenseddrugsConsent",
      "short" : "RegisterDispensedDrugsConsent",
      "definition" : "Logisk modell för tjänstekontraktet RegisterDispensedDrugsConsent\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterDispensedDrugsConsent:2).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "registerdispenseddrugsConsent.result",
      "path" : "registerdispenseddrugsConsent.result",
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
      "id" : "registerdispenseddrugsConsent.result.resultCode",
      "path" : "registerdispenseddrugsConsent.result.resultCode",
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
      "id" : "registerdispenseddrugsConsent.result.errorCode",
      "path" : "registerdispenseddrugsConsent.result.errorCode",
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
      "id" : "registerdispenseddrugsConsent.result.subcode",
      "path" : "registerdispenseddrugsConsent.result.subcode",
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
      "id" : "registerdispenseddrugsConsent.result.logId",
      "path" : "registerdispenseddrugsConsent.result.logId",
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
      "id" : "registerdispenseddrugsConsent.result.message",
      "path" : "registerdispenseddrugsConsent.result.message",
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
