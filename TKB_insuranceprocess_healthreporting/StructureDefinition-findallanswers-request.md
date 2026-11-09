# FindAllAnswers — Request - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindAllAnswers — Request**

## Logical Model: FindAllAnswers — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers-request | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:FindAllAnswersRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet FindAllAnswers (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1). Returnerar svar från FK på tidigare skickade frågor från vården. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-findallanswers-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-findallanswers-request.csv), [Excel](StructureDefinition-findallanswers-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "findallanswers-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers-request",
  "version" : "1.0",
  "name" : "FindAllAnswersRequest",
  "title" : "FindAllAnswers — Request",
  "status" : "active",
  "date" : "2026-11-09T03:41:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet FindAllAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).\nReturnerar svar från FK på tidigare skickade frågor från vården.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "findallanswers-request",
      "path" : "findallanswers-request",
      "short" : "FindAllAnswers — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet FindAllAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).\nReturnerar svar från FK på tidigare skickade frågor från vården."
    },
    {
      "id" : "findallanswers-request.careUnitId",
      "path" : "findallanswers-request.careUnitId",
      "short" : "II",
      "definition" : "Vårdenhetens hsa-id",
      "comment" : "TKB-fält: `careUnitId` (`hsaid`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers-request.careUnitId.root",
      "path" : "findallanswers-request.careUnitId.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers-request.careUnitId.extension",
      "path" : "findallanswers-request.careUnitId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers-request.careUnitId.identifierName",
      "path" : "findallanswers-request.careUnitId.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers-request.careGiverId",
      "path" : "findallanswers-request.careGiverId",
      "short" : "II",
      "definition" : "Vårdgivarens hsa-id",
      "comment" : "TKB-fält: `careGiverId` (`hsaid`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers-request.careGiverId.root",
      "path" : "findallanswers-request.careGiverId.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers-request.careGiverId.extension",
      "path" : "findallanswers-request.careGiverId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers-request.careGiverId.identifierName",
      "path" : "findallanswers-request.careGiverId.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
