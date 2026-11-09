# GetInfoLogsForPatient - ehr: log v1.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetInfoLogsForPatient**

## Logical Model: GetInfoLogsForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforpatient | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:GetInfoLogsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetInfoLogsForPatient (RIV-TA urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1). Representerar responsens informationsstruktur (log.querying:InfoLogsResult). Returnerar lista för angiven informationsägande vårdgivare och patient med vilka externa vårdgivare som haft åtkomst till information. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getinfologsforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getinfologsforpatient.csv), [Excel](StructureDefinition-getinfologsforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getinfologsforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforpatient",
  "version" : "1.0",
  "name" : "GetInfoLogsForPatient",
  "title" : "GetInfoLogsForPatient",
  "status" : "active",
  "date" : "2026-11-09T03:29:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetInfoLogsForPatient\n(RIV-TA urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1).\nRepresenterar responsens informationsstruktur (log.querying:InfoLogsResult).\nReturnerar lista för angiven informationsägande vårdgivare och patient med\nvilka externa vårdgivare som haft åtkomst till information.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getinfologsforpatient",
      "path" : "getinfologsforpatient",
      "short" : "GetInfoLogsForPatient",
      "definition" : "Logisk modell för tjänstekontraktet GetInfoLogsForPatient\n(RIV-TA urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1).\nRepresenterar responsens informationsstruktur (log.querying:InfoLogsResult).\nReturnerar lista för angiven informationsägande vårdgivare och patient med\nvilka externa vårdgivare som haft åtkomst till information."
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType",
      "path" : "getinfologsforpatient.InfoLogsResultType",
      "short" : "InfoLogsResultType",
      "definition" : "InfoLogsResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.Result",
      "path" : "getinfologsforpatient.InfoLogsResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.Result.ResultCode",
      "path" : "getinfologsforpatient.InfoLogsResultType.Result.ResultCode",
      "short" : "ResultCode",
      "definition" : "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-log/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.Result.ResultText",
      "path" : "getinfologsforpatient.InfoLogsResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.Result.StartInterval",
      "path" : "getinfologsforpatient.InfoLogsResultType.Result.StartInterval",
      "short" : "StartInterval",
      "definition" : "StartInterval",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.Result.EndInterval",
      "path" : "getinfologsforpatient.InfoLogsResultType.Result.EndInterval",
      "short" : "EndInterval",
      "definition" : "EndInterval",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.Result.QueuedReportId",
      "path" : "getinfologsforpatient.InfoLogsResultType.Result.QueuedReportId",
      "short" : "QueuedReportId",
      "definition" : "QueuedReportId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.Result.QueueTime",
      "path" : "getinfologsforpatient.InfoLogsResultType.Result.QueueTime",
      "short" : "QueueTime",
      "definition" : "QueueTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.CareProviders",
      "path" : "getinfologsforpatient.InfoLogsResultType.CareProviders",
      "short" : "CareProvidersType",
      "definition" : "CareProviders",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.CareProviders.CareProvider",
      "path" : "getinfologsforpatient.InfoLogsResultType.CareProviders.CareProvider",
      "short" : "CareProviderType",
      "definition" : "CareProvider",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.CareProviders.CareProvider.CareProviderId",
      "path" : "getinfologsforpatient.InfoLogsResultType.CareProviders.CareProvider.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologsforpatient.InfoLogsResultType.CareProviders.CareProvider.CareProviderName",
      "path" : "getinfologsforpatient.InfoLogsResultType.CareProviders.CareProvider.CareProviderName",
      "short" : "CareProviderName",
      "definition" : "CareProviderName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
