# GetAccessLogsForPatient — Request - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAccessLogsForPatient — Request**

## Logical Model: GetAccessLogsForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getaccesslogsforpatient-request | *Version*:1.2.3 |
| Draft as of 2026-09-09 | *Computable Name*:GetAccessLogsForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetAccessLogsForPatient. Obs: queuedReportId ska INTE användas när aggregerande tjänst anropas. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getaccesslogsforpatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getaccesslogsforpatient-request.csv), [Excel](StructureDefinition-getaccesslogsforpatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getaccesslogsforpatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getaccesslogsforpatient-request",
  "version" : "1.2.3",
  "name" : "GetAccessLogsForPatientRequest",
  "title" : "GetAccessLogsForPatient — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:53:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetAccessLogsForPatient.\nObs: queuedReportId ska INTE användas när aggregerande tjänst anropas.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getaccesslogsforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getaccesslogsforpatient-request",
      "path" : "getaccesslogsforpatient-request",
      "short" : "GetAccessLogsForPatient — Request",
      "definition" : "Logisk modell för requestparametrar i GetAccessLogsForPatient.\nObs: queuedReportId ska INTE användas när aggregerande tjänst anropas."
    },
    {
      "id" : "getaccesslogsforpatient-request.patientId",
      "path" : "getaccesslogsforpatient-request.patientId",
      "short" : "Patientens personnummer, samordningsnummer eller reservnummer",
      "definition" : "Patientens personnummer, samordningsnummer eller reservnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getaccesslogsforpatient-request.fromDate",
      "path" : "getaccesslogsforpatient-request.fromDate",
      "short" : "Obligatoriskt startdatum för rapportuttaget",
      "definition" : "Obligatoriskt startdatum för rapportuttaget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getaccesslogsforpatient-request.toDate",
      "path" : "getaccesslogsforpatient-request.toDate",
      "short" : "Obligatoriskt slutdatum för rapportuttaget",
      "definition" : "Obligatoriskt slutdatum för rapportuttaget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getaccesslogsforpatient-request.queuedReportId",
      "path" : "getaccesslogsforpatient-request.queuedReportId",
      "short" : "Id på en pågående rapport (UUID) — ej vid aggregerande anrop",
      "definition" : "Id på en pågående rapport (UUID) — ej vid aggregerande anrop",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
