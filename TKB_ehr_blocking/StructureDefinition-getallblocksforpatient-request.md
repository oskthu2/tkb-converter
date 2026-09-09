# GetAllBlocksForPatient — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllBlocksForPatient — Request**

## Logical Model: GetAllBlocksForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocksforpatient-request | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:GetAllBlocksForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetAllBlocksForPatient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-getallblocksforpatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getallblocksforpatient-request.csv), [Excel](StructureDefinition-getallblocksforpatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getallblocksforpatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocksforpatient-request",
  "version" : "3.2.2",
  "name" : "GetAllBlocksForPatientRequest",
  "title" : "GetAllBlocksForPatient — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetAllBlocksForPatient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocksforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getallblocksforpatient-request",
      "path" : "getallblocksforpatient-request",
      "short" : "GetAllBlocksForPatient — Request",
      "definition" : "Logisk modell för requestparametrar i GetAllBlocksForPatient."
    },
    {
      "id" : "getallblocksforpatient-request.patientId",
      "path" : "getallblocksforpatient-request.patientId",
      "short" : "Patientens personnummer eller samordningsnummer vars spärrar skall hämtas.",
      "definition" : "Patientens personnummer eller samordningsnummer vars spärrar skall hämtas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient-request.careProviderIds",
      "path" : "getallblocksforpatient-request.careProviderIds",
      "short" : "HSA-id på de vårdgivare vars spärrar skall hämtas. Om utelämnat hämtas alla.",
      "definition" : "HSA-id på de vårdgivare vars spärrar skall hämtas. Om utelämnat hämtas alla.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient-request.createdOnOrAfter",
      "path" : "getallblocksforpatient-request.createdOnOrAfter",
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
