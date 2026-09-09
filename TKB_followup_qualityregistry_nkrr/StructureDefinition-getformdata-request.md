# GetFormData — Request - followup: qualityregistry: nkrr v1.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormData — Request**

## Logical Model: GetFormData — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-qualityregistry-nkrr/StructureDefinition/getformdata-request | *Version*:1.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormDataRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetFormData (RIV-TA urn:riv:followup:qualityregistry:nkrr:GetFormData:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-qualityregistry-nkrr|current/StructureDefinition/StructureDefinition-getformdata-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getformdata-request.csv), [Excel](StructureDefinition-getformdata-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getformdata-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-qualityregistry-nkrr/StructureDefinition/getformdata-request",
  "version" : "1.2.2",
  "name" : "GetFormDataRequest",
  "title" : "GetFormData — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:57:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetFormData\n(RIV-TA urn:riv:followup:qualityregistry:nkrr:GetFormData:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-qualityregistry-nkrr/StructureDefinition/getformdata-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformdata-request",
      "path" : "getformdata-request",
      "short" : "GetFormData — Request",
      "definition" : "Logisk modell för requestparametrar i GetFormData\n(RIV-TA urn:riv:followup:qualityregistry:nkrr:GetFormData:1)."
    },
    {
      "id" : "getformdata-request.formId",
      "path" : "getformdata-request.formId",
      "short" : "Identifierare av mallen",
      "definition" : "Identifierare av mallen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformdata-request.subjectOfCareId",
      "path" : "getformdata-request.subjectOfCareId",
      "short" : "Identifierare av patienten",
      "definition" : "Identifierare av patienten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getformdata-request.careEncounterStartDate",
      "path" : "getformdata-request.careEncounterStartDate",
      "short" : "Datum för start av vårdhändelse",
      "definition" : "Datum för start av vårdhändelse (format: YYYYMMDD).\nTjänsteproducenter kan välja att komplettera denna beskrivning om användning av attributet\ni en informationsspecifikation eller annan tillämpad specifikation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformdata-request.careEncounterEndDate",
      "path" : "getformdata-request.careEncounterEndDate",
      "short" : "Datum för slut av vårdhändelse",
      "definition" : "Datum för slut av vårdhändelse (format: YYYYMMDD).\nTjänsteproducenter kan välja att komplettera denna beskrivning om användning av attributet\ni en informationsspecifikation eller annan tillämpad specifikation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformdata-request.careUnitHSAId",
      "path" : "getformdata-request.careUnitHSAId",
      "short" : "Vårdenheter inom vilka underlag ska hämtas",
      "definition" : "Vårdenheter inom vilka underlag ska hämtas (HSA-ID).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getformdata-request.employeeId",
      "path" : "getformdata-request.employeeId",
      "short" : "Identifierare av medarbetare (HSA-ID)",
      "definition" : "Identifierare av medarbetare (HSA-ID).\nVid interaktivt förlopp (registrator loggar in) måste antingen employeeId eller\nemployeePersonId anges (R3 – Registrator måste anges).\nI ett helautomatiserat förlopp efter en notifiering ska fälten inte anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getformdata-request.employeePersonId",
      "path" : "getformdata-request.employeePersonId",
      "short" : "Medarbetares personnummer",
      "definition" : "Medarbetares personnummer. Anges med 12 tecken utan avskiljare.\nVid interaktivt förlopp (registrator loggar in) måste antingen employeeId eller\nemployeePersonId anges (R3 – Registrator måste anges).\nI ett helautomatiserat förlopp efter en notifiering ska fälten inte anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
