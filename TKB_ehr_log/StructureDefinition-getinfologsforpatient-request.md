# GetInfoLogsForPatient — Request - ehr: log v1.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetInfoLogsForPatient — Request**

## Logical Model: GetInfoLogsForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforpatient-request | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:GetInfoLogsForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetInfoLogsForPatient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getinfologsforpatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getinfologsforpatient-request.csv), [Excel](StructureDefinition-getinfologsforpatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getinfologsforpatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforpatient-request",
  "version" : "1.0",
  "name" : "GetInfoLogsForPatientRequest",
  "title" : "GetInfoLogsForPatient — Request",
  "status" : "active",
  "date" : "2026-11-06T21:16:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetInfoLogsForPatient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getinfologsforpatient-request",
      "path" : "getinfologsforpatient-request",
      "short" : "GetInfoLogsForPatient — Request",
      "definition" : "Logisk modell för requestparametrar i GetInfoLogsForPatient."
    },
    {
      "id" : "getinfologsforpatient-request.careProviderId",
      "path" : "getinfologsforpatient-request.careProviderId",
      "short" : "Vårdgivare som är informationsägare (HSA-id)",
      "definition" : "Vårdgivare som är informationsägare av loggpost.",
      "comment" : "TKB-fält: `careProviderId` (`log:HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getinfologsforpatient-request.patientId",
      "path" : "getinfologsforpatient-request.patientId",
      "short" : "Patientens personnummer, samordningsnummer eller reservnummer",
      "definition" : "Patientens personnummer, samordningsnummer, alternativt reservnummer som annan vårdgivare än informationsägaren haft åtkomst till.",
      "comment" : "TKB-fält: `patientId` (`log:PersonId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getinfologsforpatient-request.fromDate",
      "path" : "getinfologsforpatient-request.fromDate",
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
      "id" : "getinfologsforpatient-request.toDate",
      "path" : "getinfologsforpatient-request.toDate",
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
      "id" : "getinfologsforpatient-request.queuedReportId",
      "path" : "getinfologsforpatient-request.queuedReportId",
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
