# GetBlocksForPatient — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetBlocksForPatient — Request**

## Logical Model: GetBlocksForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getblocksforpatient-request | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:GetBlocksForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetBlocksForPatient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-getblocksforpatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getblocksforpatient-request.csv), [Excel](StructureDefinition-getblocksforpatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getblocksforpatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getblocksforpatient-request",
  "version" : "3.2.2",
  "name" : "GetBlocksForPatientRequest",
  "title" : "GetBlocksForPatient — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetBlocksForPatient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getblocksforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getblocksforpatient-request",
      "path" : "getblocksforpatient-request",
      "short" : "GetBlocksForPatient — Request",
      "definition" : "Logisk modell för requestparametrar i GetBlocksForPatient."
    },
    {
      "id" : "getblocksforpatient-request.patientId",
      "path" : "getblocksforpatient-request.patientId",
      "short" : "Patientens personnummer eller samordningsnummer vars spärrar skall hämtas.",
      "definition" : "Patientens personnummer eller samordningsnummer vars spärrar skall hämtas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocksforpatient-request.careProviderId",
      "path" : "getblocksforpatient-request.careProviderId",
      "short" : "HSA-id på den vårdgivare vars spärrar skall hämtas.",
      "definition" : "HSA-id på den vårdgivare vars spärrar skall hämtas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocksforpatient-request.createdOnOrAfter",
      "path" : "getblocksforpatient-request.createdOnOrAfter",
      "short" : "Startdatum för inkrementell hämtning.",
      "definition" : "Startdatum för inkrementell hämtning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
