# GetDispensedDrugsConsent - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDispensedDrugsConsent**

## Logical Model: GetDispensedDrugsConsent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getdispenseddrugsConsent | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetDispensedDrugsConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetDispensedDrugsConsent (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugsConsent:2). Representerar responsens informationsstruktur — hämtar samtycke för åtkomst till uthämtade läkemedel. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-getdispenseddrugsConsent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getdispenseddrugsConsent.csv), [Excel](StructureDefinition-getdispenseddrugsConsent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getdispenseddrugsConsent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getdispenseddrugsConsent",
  "version" : "2.0",
  "name" : "GetDispensedDrugsConsent",
  "title" : "GetDispensedDrugsConsent",
  "status" : "draft",
  "date" : "2026-11-09T03:17:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetDispensedDrugsConsent\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugsConsent:2).\nRepresenterar responsens informationsstruktur — hämtar samtycke för åtkomst till uthämtade läkemedel.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getdispenseddrugsConsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getdispenseddrugsConsent",
      "path" : "getdispenseddrugsConsent",
      "short" : "GetDispensedDrugsConsent",
      "definition" : "Logisk modell för tjänstekontraktet GetDispensedDrugsConsent\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugsConsent:2).\nRepresenterar responsens informationsstruktur — hämtar samtycke för åtkomst till uthämtade läkemedel."
    },
    {
      "id" : "getdispenseddrugsConsent.hasConsent",
      "path" : "getdispenseddrugsConsent.hasConsent",
      "short" : "hasConsent",
      "definition" : "Indikerar om samtycke finns eller ej.",
      "comment" : "TKB-fält: `hasConsent` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getdispenseddrugsConsent.result",
      "path" : "getdispenseddrugsConsent.result",
      "short" : "ResultType",
      "definition" : "Innehåller information om begäran gick bra eller ej.",
      "comment" : "TKB-fält: `Result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getdispenseddrugsConsent.result.resultCode",
      "path" : "getdispenseddrugsConsent.result.resultCode",
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
      "id" : "getdispenseddrugsConsent.result.errorCode",
      "path" : "getdispenseddrugsConsent.result.errorCode",
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
      "id" : "getdispenseddrugsConsent.result.subcode",
      "path" : "getdispenseddrugsConsent.result.subcode",
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
      "id" : "getdispenseddrugsConsent.result.logId",
      "path" : "getdispenseddrugsConsent.result.logId",
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
      "id" : "getdispenseddrugsConsent.result.message",
      "path" : "getdispenseddrugsConsent.result.message",
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
