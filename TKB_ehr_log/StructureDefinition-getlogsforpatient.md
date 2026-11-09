# GetLogsForPatient - ehr: log v1.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogsForPatient**

## Logical Model: GetLogsForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforpatient | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:GetLogsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetLogsForPatient (RIV-TA urn:riv:ehr:log:querying:GetLogsForPatientResponder:1). Representerar responsens informationsstruktur (log.querying:LogsResult). Returnerar loggposter för angiven vårdgivare och patient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getlogsforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogsforpatient.csv), [Excel](StructureDefinition-getlogsforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogsforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforpatient",
  "version" : "1.0",
  "name" : "GetLogsForPatient",
  "title" : "GetLogsForPatient",
  "status" : "active",
  "date" : "2026-11-09T03:29:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetLogsForPatient\n(RIV-TA urn:riv:ehr:log:querying:GetLogsForPatientResponder:1).\nRepresenterar responsens informationsstruktur (log.querying:LogsResult).\nReturnerar loggposter för angiven vårdgivare och patient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogsforpatient",
      "path" : "getlogsforpatient",
      "short" : "GetLogsForPatient",
      "definition" : "Logisk modell för tjänstekontraktet GetLogsForPatient\n(RIV-TA urn:riv:ehr:log:querying:GetLogsForPatientResponder:1).\nRepresenterar responsens informationsstruktur (log.querying:LogsResult).\nReturnerar loggposter för angiven vårdgivare och patient."
    },
    {
      "id" : "getlogsforpatient.LogsResultType",
      "path" : "getlogsforpatient.LogsResultType",
      "short" : "LogsResultType",
      "definition" : "LogsResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Result",
      "path" : "getlogsforpatient.LogsResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Result.ResultCode",
      "path" : "getlogsforpatient.LogsResultType.Result.ResultCode",
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
      "id" : "getlogsforpatient.LogsResultType.Result.ResultText",
      "path" : "getlogsforpatient.LogsResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Result.StartInterval",
      "path" : "getlogsforpatient.LogsResultType.Result.StartInterval",
      "short" : "StartInterval",
      "definition" : "StartInterval",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Result.EndInterval",
      "path" : "getlogsforpatient.LogsResultType.Result.EndInterval",
      "short" : "EndInterval",
      "definition" : "EndInterval",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Result.QueuedReportId",
      "path" : "getlogsforpatient.LogsResultType.Result.QueuedReportId",
      "short" : "QueuedReportId",
      "definition" : "QueuedReportId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Result.QueueTime",
      "path" : "getlogsforpatient.LogsResultType.Result.QueueTime",
      "short" : "QueueTime",
      "definition" : "QueueTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs",
      "path" : "getlogsforpatient.LogsResultType.Logs",
      "short" : "LogsType",
      "definition" : "Logs",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log",
      "short" : "LogType",
      "definition" : "Log",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.LogId",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.LogId",
      "short" : "LogId",
      "definition" : "LogId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.System",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.System",
      "short" : "SystemType",
      "definition" : "System",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.System.SystemId",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.System.SystemId",
      "short" : "SystemId",
      "definition" : "SystemId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.System.SystemName",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.System.SystemName",
      "short" : "SystemName",
      "definition" : "SystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Activity",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Activity",
      "short" : "ActivityType",
      "definition" : "Activity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Activity.ActivityType",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Activity.ActivityType",
      "short" : "ActivityType",
      "definition" : "ActivityType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Activity.ActivityLevel",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Activity.ActivityLevel",
      "short" : "ActivityLevel",
      "definition" : "ActivityLevel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Activity.ActivityArgs",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Activity.ActivityArgs",
      "short" : "ActivityArgs",
      "definition" : "ActivityArgs",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Activity.StartDate",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Activity.StartDate",
      "short" : "StartDate",
      "definition" : "StartDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Activity.Purpose",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Activity.Purpose",
      "short" : "Purpose",
      "definition" : "Purpose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User",
      "short" : "UserType",
      "definition" : "User",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.UserId",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.UserId",
      "short" : "UserId",
      "definition" : "UserId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.Name",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.Name",
      "short" : "Name",
      "definition" : "Name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.PersonId",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.PersonId",
      "short" : "PersonId",
      "definition" : "PersonId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.Assignment",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.Assignment",
      "short" : "Assignment",
      "definition" : "Assignment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.Title",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.Title",
      "short" : "Title",
      "definition" : "Title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareProvider",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareProvider",
      "short" : "CareProviderType",
      "definition" : "CareProvider",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareProvider.CareProviderId",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareProvider.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareProvider.CareProviderName",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareProvider.CareProviderName",
      "short" : "CareProviderName",
      "definition" : "CareProviderName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareUnit",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareUnit",
      "short" : "CareUnitType",
      "definition" : "CareUnit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareUnit.CareUnitId",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareUnit.CareUnitId",
      "short" : "CareUnitId",
      "definition" : "CareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareUnit.CareUnitName",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.User.CareUnit.CareUnitName",
      "short" : "CareUnitName",
      "definition" : "CareUnitName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources",
      "short" : "ResourcesType",
      "definition" : "Resources",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource",
      "short" : "ResourceType",
      "definition" : "Resource",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.ResourceType",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.ResourceType",
      "short" : "ResourceType",
      "definition" : "ResourceType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.Patient",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.Patient",
      "short" : "PatientType",
      "definition" : "Patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.Patient.PatientId",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.Patient.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.Patient.PatientName",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.Patient.PatientName",
      "short" : "PatientName",
      "definition" : "PatientName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareProvider",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareProvider",
      "short" : "CareProviderType",
      "definition" : "CareProvider",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareProvider.CareProviderId",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareProvider.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareProvider.CareProviderName",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareProvider.CareProviderName",
      "short" : "CareProviderName",
      "definition" : "CareProviderName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareUnit",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareUnit",
      "short" : "CareUnitType",
      "definition" : "CareUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareUnit.CareUnitId",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareUnit.CareUnitId",
      "short" : "CareUnitId",
      "definition" : "CareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareUnit.CareUnitName",
      "path" : "getlogsforpatient.LogsResultType.Logs.Log.Resources.Resource.CareUnit.CareUnitName",
      "short" : "CareUnitName",
      "definition" : "CareUnitName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
