# GetLogsForPatient — Request - ehr: log v1.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogsForPatient — Request**

## Logical Model: GetLogsForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforpatient-request | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:GetLogsForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetLogsForPatient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getlogsforpatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogsforpatient-request.csv), [Excel](StructureDefinition-getlogsforpatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogsforpatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforpatient-request",
  "version" : "1.0",
  "name" : "GetLogsForPatientRequest",
  "title" : "GetLogsForPatient — Request",
  "status" : "active",
  "date" : "2026-11-09T03:29:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetLogsForPatient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogsforpatient-request",
      "path" : "getlogsforpatient-request",
      "short" : "GetLogsForPatient — Request",
      "definition" : "Logisk modell för requestparametrar i GetLogsForPatient."
    },
    {
      "id" : "getlogsforpatient-request.careProviderId",
      "path" : "getlogsforpatient-request.careProviderId",
      "short" : "Vårdgivare som är ägare till loggposter",
      "definition" : "Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på.",
      "comment" : "TKB-fält: `careProviderId` (`log:HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlogsforpatient-request.patientId",
      "path" : "getlogsforpatient-request.patientId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer, samordningsnummer, alternativt reservnummer som vårdgivare haft åtkomst till.",
      "comment" : "TKB-fält: `patientId` (`log:PersonId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlogsforpatient-request.careUnitId",
      "path" : "getlogsforpatient-request.careUnitId",
      "short" : "HSA-id för specifik vårdenhet (valfritt filter)",
      "definition" : "Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet.",
      "comment" : "TKB-fält: `careUnitId` (`log:HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlogsforpatient-request.fromDate",
      "path" : "getlogsforpatient-request.fromDate",
      "short" : "Obligatoriskt startdatum för rapportuttaget",
      "definition" : "Obligatoriskt startdatum för att begränsa rapportuttaget.",
      "comment" : "TKB-fält: `fromDate` (`xs:dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforpatient-request.toDate",
      "path" : "getlogsforpatient-request.toDate",
      "short" : "Obligatoriskt slutdatum för rapportuttaget",
      "definition" : "Obligatoriskt slutdatum för att begränsa rapportuttaget.",
      "comment" : "TKB-fält: `toDate` (`xs:dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforpatient-request.queuedReportId",
      "path" : "getlogsforpatient-request.queuedReportId",
      "short" : "Id på en pågående rapport (UUID, 36 tecken)",
      "definition" : "Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts.",
      "comment" : "TKB-fält: `queuedReportId` (`log:Id`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
