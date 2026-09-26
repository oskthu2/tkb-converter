# GetRheumatoidArthritisData — Request - clinicalprocess: healthcond: rheuma — Reumatismdata v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetRheumatoidArthritisData — Request**

## Logical Model: GetRheumatoidArthritisData — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-rheuma/StructureDefinition/getrheumatoidarthritisdata-request | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:GetRheumatoidArthritisDataRequest |
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
  "version" : "1.0.0",
  "name" : "GetRheumatoidArthritisDataRequest",
  "title" : "GetRheumatoidArthritisData — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:19:32+00:00",
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
      "short" : "PDL-enhet",
      "definition" : "Filtrering på PDL-enhet, motsvarar healthcareProfessionalCareUnitHSAId i svaret.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getrheumatoidarthritisdata-request.patientId",
      "path" : "getrheumatoidarthritisdata-request.patientId",
      "short" : "Patient-id",
      "definition" : "Patientens identifierare. value = id (12 tecken utan avskiljare); system = OID för typ av identifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer) eller lokalt reservnummer, t.ex. SLL 1.2.752.97.3.1.3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getrheumatoidarthritisdata-request.timePeriod",
      "path" : "getrheumatoidarthritisdata-request.timePeriod",
      "short" : "Tidsintervall",
      "definition" : "Endast svar där authorTime eller signatureTime ligger helt eller delvis inom intervallet returneras. start och end anges båda (ÅÅÅÅMMDD). TKB-tabellen kallar fältet datePeriod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getrheumatoidarthritisdata-request.sourceSystemHSAId",
      "path" : "getrheumatoidarthritisdata-request.sourceSystemHSAId",
      "short" : "Källsystem",
      "definition" : "Begränsar sökningen till dokument skapade i angivet system. Måste överensstämma med logicalAddress i anropets tekniska kuvertering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getrheumatoidarthritisdata-request.careContactId",
      "path" : "getrheumatoidarthritisdata-request.careContactId",
      "short" : "Vård- och omsorgskontakt",
      "definition" : "Begränsar sökningen till angivna vård- och omsorgskontakter.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
