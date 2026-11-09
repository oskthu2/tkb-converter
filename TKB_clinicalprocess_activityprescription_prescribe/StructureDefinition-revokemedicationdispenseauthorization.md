# RevokeMedicationDispenseAuthorization - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeMedicationDispenseAuthorization**

## Logical Model: RevokeMedicationDispenseAuthorization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/revokemedicationdispenseauthorization | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:RevokeMedicationDispenseAuthorization |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RevokeMedicationDispenseAuthorization (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeMedicationDispenseAuthorization:2). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-revokemedicationdispenseauthorization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-revokemedicationdispenseauthorization.csv), [Excel](StructureDefinition-revokemedicationdispenseauthorization.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "revokemedicationdispenseauthorization",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/revokemedicationdispenseauthorization",
  "version" : "2.0",
  "name" : "RevokeMedicationDispenseAuthorization",
  "title" : "RevokeMedicationDispenseAuthorization",
  "status" : "draft",
  "date" : "2026-11-09T03:17:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RevokeMedicationDispenseAuthorization\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeMedicationDispenseAuthorization:2).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/revokemedicationdispenseauthorization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokemedicationdispenseauthorization",
      "path" : "revokemedicationdispenseauthorization",
      "short" : "RevokeMedicationDispenseAuthorization",
      "definition" : "Logisk modell för tjänstekontraktet RevokeMedicationDispenseAuthorization\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeMedicationDispenseAuthorization:2).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "revokemedicationdispenseauthorization.medicationListVersion",
      "path" : "revokemedicationdispenseauthorization.medicationListVersion",
      "short" : "medicationListVersion",
      "definition" : "Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. Krävs i de fall där det expedieringsunderlag som ska makuleras är kopplat till en behandling.",
      "comment" : "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "revokemedicationdispenseauthorization.result",
      "path" : "revokemedicationdispenseauthorization.result",
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
      "id" : "revokemedicationdispenseauthorization.result.resultCode",
      "path" : "revokemedicationdispenseauthorization.result.resultCode",
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
      "id" : "revokemedicationdispenseauthorization.result.errorCode",
      "path" : "revokemedicationdispenseauthorization.result.errorCode",
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
      "id" : "revokemedicationdispenseauthorization.result.subcode",
      "path" : "revokemedicationdispenseauthorization.result.subcode",
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
      "id" : "revokemedicationdispenseauthorization.result.logId",
      "path" : "revokemedicationdispenseauthorization.result.logId",
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
      "id" : "revokemedicationdispenseauthorization.result.message",
      "path" : "revokemedicationdispenseauthorization.result.message",
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
