# GetRheumatoidArthritisData — Request - clinicalprocess: healthcond: rheuma — Reumatismdata v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetRheumatoidArthritisData — Request**

## Logical Model: GetRheumatoidArthritisData — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-rheuma/StructureDefinition/getrheumatoidarthritisdata-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetRheumatoidArthritisDataRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetRheumatoidArthritisData (RIV-TA urn:riv:clinicalprocess:healthcond:rheuma:GetRheumatoidArthritisDataResponder:1, GetRheumatoidArthritisDataType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-rheuma|current/StructureDefinition/StructureDefinition-getrheumatoidarthritisdata-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getrheumatoidarthritisdata-request.csv), [Excel](StructureDefinition-getrheumatoidarthritisdata-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getrheumatoidarthritisdata-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-rheuma/StructureDefinition/getrheumatoidarthritisdata-request",
  "version" : "1.0",
  "name" : "GetRheumatoidArthritisDataRequest",
  "title" : "GetRheumatoidArthritisData — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:23:21+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetRheumatoidArthritisData\n(RIV-TA urn:riv:clinicalprocess:healthcond:rheuma:GetRheumatoidArthritisDataResponder:1, GetRheumatoidArthritisDataType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-rheuma/StructureDefinition/getrheumatoidarthritisdata-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getrheumatoidarthritisdata-request",
      "path" : "getrheumatoidarthritisdata-request",
      "short" : "GetRheumatoidArthritisData — Request",
      "definition" : "Logisk modell för begäran i GetRheumatoidArthritisData\n(RIV-TA urn:riv:clinicalprocess:healthcond:rheuma:GetRheumatoidArthritisDataResponder:1, GetRheumatoidArthritisDataType)."
    },
    {
      "id" : "getrheumatoidarthritisdata-request.careUnitHSAId",
      "path" : "getrheumatoidarthritisdata-request.careUnitHSAId",
      "short" : "careUnitHSAId",
      "definition" : "Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType.",
      "comment" : "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getrheumatoidarthritisdata-request.patientId",
      "path" : "getrheumatoidarthritisdata-request.patientId",
      "short" : "patientId",
      "definition" : "Id för patienten.",
      "comment" : "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType"
      }]
    },
    {
      "id" : "getrheumatoidarthritisdata-request.timePeriod",
      "path" : "getrheumatoidarthritisdata-request.timePeriod",
      "short" : "timePeriod",
      "definition" : "timePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-rheuma/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getrheumatoidarthritisdata-request.sourceSystemHSAId",
      "path" : "getrheumatoidarthritisdata-request.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "Begränsar sökningen till dokument som är skapade i angivet system.\n\nVärdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).\n\nDet innebär i praktiken att aggregerande tjänster inte används när detta fält anges.\n\nFältet är tvingande om careContactId angivits.",
      "comment" : "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getrheumatoidarthritisdata-request.careContactId",
      "path" : "getrheumatoidarthritisdata-request.careContactId",
      "short" : "careContactId",
      "definition" : "Begränsar sökningen till den vård- och omsorgskontakt där den vårdbegäran som låg till grund för laboratoriesvaret skapades.",
      "comment" : "TKB-fält: `careContactId` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
