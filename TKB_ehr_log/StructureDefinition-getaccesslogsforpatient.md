# GetAccessLogsForPatient - ehr: log v1.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAccessLogsForPatient**

## Logical Model: GetAccessLogsForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getaccesslogsforpatient | *Version*:1.1 |
| Active as of 2026-11-09 | *Computable Name*:GetAccessLogsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAccessLogsForPatient (RIV-TA urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1). Representerar responsens informationsstruktur (log.querying:AccessLogsResult). Returnerar lista för angiven patient med vilka vårdaktörer som har haft åtkomst till information, inklusive tidpunkt, syfte och resurstyp. Stödjer aggregering — queuedReportId får inte användas vid aggregerande anrop. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getaccesslogsforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getaccesslogsforpatient.csv), [Excel](StructureDefinition-getaccesslogsforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getaccesslogsforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getaccesslogsforpatient",
  "version" : "1.1",
  "name" : "GetAccessLogsForPatient",
  "title" : "GetAccessLogsForPatient",
  "status" : "active",
  "date" : "2026-11-09T03:29:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAccessLogsForPatient\n(RIV-TA urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1).\nRepresenterar responsens informationsstruktur (log.querying:AccessLogsResult).\nReturnerar lista för angiven patient med vilka vårdaktörer som har haft åtkomst\ntill information, inklusive tidpunkt, syfte och resurstyp.\nStödjer aggregering — queuedReportId får inte användas vid aggregerande anrop.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getaccesslogsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getaccesslogsforpatient",
      "path" : "getaccesslogsforpatient",
      "short" : "GetAccessLogsForPatient",
      "definition" : "Logisk modell för tjänstekontraktet GetAccessLogsForPatient\n(RIV-TA urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1).\nRepresenterar responsens informationsstruktur (log.querying:AccessLogsResult).\nReturnerar lista för angiven patient med vilka vårdaktörer som har haft åtkomst\ntill information, inklusive tidpunkt, syfte och resurstyp.\nStödjer aggregering — queuedReportId får inte användas vid aggregerande anrop."
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType",
      "path" : "getaccesslogsforpatient.AccessLogsResultType",
      "short" : "AccessLogsResultType",
      "definition" : "Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK.\n\nVid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande.",
      "comment" : "TKB-fält: `AccessLogsResultType` (`logquerying:AccessLogsResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.Result",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.Result.ResultCode",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.Result.ResultCode",
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
      "id" : "getaccesslogsforpatient.AccessLogsResultType.Result.ResultText",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.Result.StartInterval",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.Result.StartInterval",
      "short" : "StartInterval",
      "definition" : "StartInterval",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.Result.EndInterval",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.Result.EndInterval",
      "short" : "EndInterval",
      "definition" : "EndInterval",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.Result.QueuedReportId",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.Result.QueuedReportId",
      "short" : "QueuedReportId",
      "definition" : "QueuedReportId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.Result.QueueTime",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.Result.QueueTime",
      "short" : "QueueTime",
      "definition" : "QueueTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs",
      "short" : "AccessLogsType",
      "definition" : "AccesssLogs",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog",
      "short" : "AccessLogType",
      "definition" : "AccessLog",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.CareProviderId",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.CareProviderName",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.CareProviderName",
      "short" : "CareProviderName",
      "definition" : "CareProviderName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.CareUnitId",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.CareUnitId",
      "short" : "CareUnitId",
      "definition" : "CareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.CareUnitName",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.CareUnitName",
      "short" : "CareUnitName",
      "definition" : "CareUnitName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.AccessDate",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.AccessDate",
      "short" : "AccessDate",
      "definition" : "AccessDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.UserId",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.UserId",
      "short" : "UserId",
      "definition" : "UserId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.UserName",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.UserName",
      "short" : "UserName",
      "definition" : "UserName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.UserTitle",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.UserTitle",
      "short" : "UserTitle",
      "definition" : "UserTitle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.Purpose",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.Purpose",
      "short" : "Purpose",
      "definition" : "Purpose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.ResourceType",
      "path" : "getaccesslogsforpatient.AccessLogsResultType.AccesssLogs.AccessLog.ResourceType",
      "short" : "ResourceType",
      "definition" : "ResourceType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
