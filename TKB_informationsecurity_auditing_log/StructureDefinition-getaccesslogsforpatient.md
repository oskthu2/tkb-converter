# GetAccessLogsForPatient — Response - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAccessLogsForPatient — Response**

## Logical Model: GetAccessLogsForPatient — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getaccesslogsforpatient | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetAccessLogsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetAccessLogsForPatient (urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-getaccesslogsforpatient.json)

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
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getaccesslogsforpatient",
  "version" : "2.0",
  "name" : "GetAccessLogsForPatient",
  "title" : "GetAccessLogsForPatient — Response",
  "status" : "active",
  "date" : "2026-11-06T21:25:26+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetAccessLogsForPatient\n(urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getaccesslogsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getaccesslogsforpatient",
      "path" : "getaccesslogsforpatient",
      "short" : "GetAccessLogsForPatient — Response",
      "definition" : "Logisk modell för svaret i GetAccessLogsForPatient\n(urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientResponseType)."
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult",
      "path" : "getaccesslogsforpatient.accessLogsResult",
      "short" : "accessLogsResult",
      "definition" : "Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK.\n\nVid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande.",
      "comment" : "TKB-fält: `accessLogsResult` (`urn:riv:informationsecurity:auditing:log:2:AccessLogsResultType`, kardinalitet 1..1).\n\n**Modellanteckning:** Datatyp som returneras av tjänst. accessLogs ej satt vid eventuella fel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.reportResult",
      "path" : "getaccesslogsforpatient.accessLogsResult.reportResult",
      "short" : "reportResult",
      "definition" : "reportResult",
      "comment" : "TKB-fält: `../reportResult` (`ReportResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.reportResult.result",
      "path" : "getaccesslogsforpatient.accessLogsResult.reportResult.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "comment" : "TKB-fält: `../../result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.reportResult.result.resultCode",
      "path" : "getaccesslogsforpatient.accessLogsResult.reportResult.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "comment" : "TKB-fält: `../../../resultCode` (`ResultCodeType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/ValueSet/auditing-log-resultcode-vs"
      }
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.reportResult.result.resultText",
      "path" : "getaccesslogsforpatient.accessLogsResult.reportResult.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "comment" : "TKB-fält: `../../../resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.reportResult.startInterval",
      "path" : "getaccesslogsforpatient.accessLogsResult.reportResult.startInterval",
      "short" : "startInterval",
      "definition" : "startInterval",
      "comment" : "TKB-fält: `../../startInterval` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.reportResult.endInterval",
      "path" : "getaccesslogsforpatient.accessLogsResult.reportResult.endInterval",
      "short" : "endInterval",
      "definition" : "endInterval",
      "comment" : "TKB-fält: `../../endInterval` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.reportResult.queuedReportId",
      "path" : "getaccesslogsforpatient.accessLogsResult.reportResult.queuedReportId",
      "short" : "queuedReportId",
      "definition" : "queuedReportId",
      "comment" : "TKB-fält: `../../queuedReportId` (`Id`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.reportResult.queueTime",
      "path" : "getaccesslogsforpatient.accessLogsResult.reportResult.queueTime",
      "short" : "queueTime",
      "definition" : "queueTime",
      "comment" : "TKB-fält: `../../queueTime` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs",
      "short" : "accesssLogs",
      "definition" : "Datatyp som håller lista med Access loggar. Kan vara en tom lista.",
      "comment" : "TKB-fält: `../accesssLogs` (`AccessLogsType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog",
      "short" : "accessLog",
      "definition" : "Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt.",
      "comment" : "TKB-fält: `../../accessLog` (`AccessLogType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.careProviderId",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "comment" : "TKB-fält: `../../../careProviderId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.careProviderName",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.careProviderName",
      "short" : "careProviderName",
      "definition" : "careProviderName",
      "comment" : "TKB-fält: `../../../careProviderName` (`CareProviderName`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.careUnitId",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "comment" : "TKB-fält: `../../../careUnitId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.careUnitName",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.careUnitName",
      "short" : "careUnitName",
      "definition" : "careUnitName",
      "comment" : "TKB-fält: `../../../careUnitName` (`CareUnitName`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.accessDate",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.accessDate",
      "short" : "accessDate",
      "definition" : "accessDate",
      "comment" : "TKB-fält: `../../../accessDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.userId",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.userId",
      "short" : "userId",
      "definition" : "userId",
      "comment" : "TKB-fält: `../../../userId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.userName",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.userName",
      "short" : "userName",
      "definition" : "userName",
      "comment" : "TKB-fält: `../../../userName` (`UserName`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.userTitle",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.userTitle",
      "short" : "userTitle",
      "definition" : "userTitle",
      "comment" : "TKB-fält: `../../../userTitle` (`UserTitle`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.purpose",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.purpose",
      "short" : "purpose",
      "definition" : "purpose",
      "comment" : "TKB-fält: `../../../purpose` (`PurposeDescription`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.resourceType",
      "path" : "getaccesslogsforpatient.accessLogsResult.accesssLogs.accessLog.resourceType",
      "short" : "resourceType",
      "definition" : "resourceType",
      "comment" : "TKB-fält: `../../../resourceType` (`ResourceTypeValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
