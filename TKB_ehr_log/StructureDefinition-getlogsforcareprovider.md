# GetLogsForCareProvider - ehr: log v1.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogsForCareProvider**

## Logical Model: GetLogsForCareProvider 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforcareprovider | *Version*:1.1 |
| Active as of 2026-11-09 | *Computable Name*:GetLogsForCareProvider |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetLogsForCareProvider (RIV-TA urn:riv:ehr:log:querying:GetLogsForCareProviderResponder:1). Representerar responsens informationsstruktur (log.querying:LogsResult). Returnerar loggposter för angiven vårdgivare. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getlogsforcareprovider.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogsforcareprovider.csv), [Excel](StructureDefinition-getlogsforcareprovider.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogsforcareprovider",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforcareprovider",
  "version" : "1.1",
  "name" : "GetLogsForCareProvider",
  "title" : "GetLogsForCareProvider",
  "status" : "active",
  "date" : "2026-11-09T03:29:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetLogsForCareProvider\n(RIV-TA urn:riv:ehr:log:querying:GetLogsForCareProviderResponder:1).\nRepresenterar responsens informationsstruktur (log.querying:LogsResult).\nReturnerar loggposter för angiven vårdgivare.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getlogsforcareprovider",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogsforcareprovider",
      "path" : "getlogsforcareprovider",
      "short" : "GetLogsForCareProvider",
      "definition" : "Logisk modell för tjänstekontraktet GetLogsForCareProvider\n(RIV-TA urn:riv:ehr:log:querying:GetLogsForCareProviderResponder:1).\nRepresenterar responsens informationsstruktur (log.querying:LogsResult).\nReturnerar loggposter för angiven vårdgivare."
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType",
      "path" : "getlogsforcareprovider.LogsResultType",
      "short" : "LogsResultType",
      "definition" : "LogsResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Result",
      "path" : "getlogsforcareprovider.LogsResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Result.ResultCode",
      "path" : "getlogsforcareprovider.LogsResultType.Result.ResultCode",
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
      "id" : "getlogsforcareprovider.LogsResultType.Result.ResultText",
      "path" : "getlogsforcareprovider.LogsResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Result.StartInterval",
      "path" : "getlogsforcareprovider.LogsResultType.Result.StartInterval",
      "short" : "StartInterval",
      "definition" : "StartInterval",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Result.EndInterval",
      "path" : "getlogsforcareprovider.LogsResultType.Result.EndInterval",
      "short" : "EndInterval",
      "definition" : "EndInterval",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Result.QueuedReportId",
      "path" : "getlogsforcareprovider.LogsResultType.Result.QueuedReportId",
      "short" : "QueuedReportId",
      "definition" : "QueuedReportId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Result.QueueTime",
      "path" : "getlogsforcareprovider.LogsResultType.Result.QueueTime",
      "short" : "QueueTime",
      "definition" : "QueueTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs",
      "path" : "getlogsforcareprovider.LogsResultType.Logs",
      "short" : "LogsType",
      "definition" : "Logs",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log",
      "short" : "LogType",
      "definition" : "Log",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.LogId",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.LogId",
      "short" : "LogId",
      "definition" : "LogId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.System",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.System",
      "short" : "SystemType",
      "definition" : "System",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.System.SystemId",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.System.SystemId",
      "short" : "SystemId",
      "definition" : "SystemId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.System.SystemName",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.System.SystemName",
      "short" : "SystemName",
      "definition" : "SystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity",
      "short" : "ActivityType",
      "definition" : "Activity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity.ActivityType",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity.ActivityType",
      "short" : "ActivityType",
      "definition" : "ActivityType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity.ActivityLevel",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity.ActivityLevel",
      "short" : "ActivityLevel",
      "definition" : "ActivityLevel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity.ActivityArgs",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity.ActivityArgs",
      "short" : "ActivityArgs",
      "definition" : "ActivityArgs",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity.StartDate",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity.StartDate",
      "short" : "StartDate",
      "definition" : "StartDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity.Purpose",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Activity.Purpose",
      "short" : "Purpose",
      "definition" : "Purpose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User",
      "short" : "UserType",
      "definition" : "User",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.UserId",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.UserId",
      "short" : "UserId",
      "definition" : "UserId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.Name",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.Name",
      "short" : "Name",
      "definition" : "Name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.PersonId",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.PersonId",
      "short" : "PersonId",
      "definition" : "PersonId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.Assignment",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.Assignment",
      "short" : "Assignment",
      "definition" : "Assignment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.Title",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.Title",
      "short" : "Title",
      "definition" : "Title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareProvider",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareProvider",
      "short" : "CareProviderType",
      "definition" : "CareProvider",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareProvider.CareProviderId",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareProvider.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareProvider.CareProviderName",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareProvider.CareProviderName",
      "short" : "CareProviderName",
      "definition" : "CareProviderName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareUnit",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareUnit",
      "short" : "CareUnitType",
      "definition" : "CareUnit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareUnit.CareUnitId",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareUnit.CareUnitId",
      "short" : "CareUnitId",
      "definition" : "CareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareUnit.CareUnitName",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.User.CareUnit.CareUnitName",
      "short" : "CareUnitName",
      "definition" : "CareUnitName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources",
      "short" : "ResourcesType",
      "definition" : "Resources",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource",
      "short" : "ResourceType",
      "definition" : "Resource",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.ResourceType",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.ResourceType",
      "short" : "ResourceType",
      "definition" : "ResourceType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.Patient",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.Patient",
      "short" : "PatientType",
      "definition" : "Patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.Patient.PatientId",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.Patient.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.Patient.PatientName",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.Patient.PatientName",
      "short" : "PatientName",
      "definition" : "PatientName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareProvider",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareProvider",
      "short" : "CareProviderType",
      "definition" : "CareProvider",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareProvider.CareProviderId",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareProvider.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareProvider.CareProviderName",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareProvider.CareProviderName",
      "short" : "CareProviderName",
      "definition" : "CareProviderName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareUnit",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareUnit",
      "short" : "CareUnitType",
      "definition" : "CareUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareUnit.CareUnitId",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareUnit.CareUnitId",
      "short" : "CareUnitId",
      "definition" : "CareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareUnit.CareUnitName",
      "path" : "getlogsforcareprovider.LogsResultType.Logs.Log.Resources.Resource.CareUnit.CareUnitName",
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
