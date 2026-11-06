# GetLogs — Response - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogs — Response**

## Logical Model: GetLogs — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogs | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetLogs |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetLogs (urn:riv:informationsecurity:auditing:log:GetLogsResponder:2, GetLogsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-getlogs.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogs.csv), [Excel](StructureDefinition-getlogs.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogs",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogs",
  "version" : "2.0",
  "name" : "GetLogs",
  "title" : "GetLogs — Response",
  "status" : "active",
  "date" : "2026-11-06T21:25:26+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetLogs\n(urn:riv:informationsecurity:auditing:log:GetLogsResponder:2, GetLogsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getlogs",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogs",
      "path" : "getlogs",
      "short" : "GetLogs — Response",
      "definition" : "Logisk modell för svaret i GetLogs\n(urn:riv:informationsecurity:auditing:log:GetLogsResponder:2, GetLogsResponseType)."
    },
    {
      "id" : "getlogs.logsResult",
      "path" : "getlogs.logsResult",
      "short" : "logsResult",
      "definition" : "Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK.\n\nVid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande.",
      "comment" : "TKB-fält: `logsResult` (`urn:riv:informationsecurity:auditing:log:2:LogsResultType`, kardinalitet 1..1).\n\n**Modellanteckning:** Datatyp som returneras av tjänst. logs är ej satt vid eventuella fel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.reportResult",
      "path" : "getlogs.logsResult.reportResult",
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
      "id" : "getlogs.logsResult.reportResult.result",
      "path" : "getlogs.logsResult.reportResult.result",
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
      "id" : "getlogs.logsResult.reportResult.result.resultCode",
      "path" : "getlogs.logsResult.reportResult.result.resultCode",
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
      "id" : "getlogs.logsResult.reportResult.result.resultText",
      "path" : "getlogs.logsResult.reportResult.result.resultText",
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
      "id" : "getlogs.logsResult.reportResult.startInterval",
      "path" : "getlogs.logsResult.reportResult.startInterval",
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
      "id" : "getlogs.logsResult.reportResult.endInterval",
      "path" : "getlogs.logsResult.reportResult.endInterval",
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
      "id" : "getlogs.logsResult.reportResult.queuedReportId",
      "path" : "getlogs.logsResult.reportResult.queuedReportId",
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
      "id" : "getlogs.logsResult.reportResult.queueTime",
      "path" : "getlogs.logsResult.reportResult.queueTime",
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
      "id" : "getlogs.logsResult.logs",
      "path" : "getlogs.logsResult.logs",
      "short" : "logs",
      "definition" : "Datatyp som håller lista med loggposter. Kan vara en tom lista",
      "comment" : "TKB-fält: `../logs` (`LogsType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log",
      "path" : "getlogs.logsResult.logs.log",
      "short" : "log",
      "definition" : "Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost.",
      "comment" : "TKB-fält: `../../log` (`LogType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.logId",
      "path" : "getlogs.logsResult.logs.log.logId",
      "short" : "logId",
      "definition" : "logId",
      "comment" : "TKB-fält: `../../../logId` (`Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.system",
      "path" : "getlogs.logsResult.logs.log.system",
      "short" : "system",
      "definition" : "Datatyp som representerar ett system i loggposten. Det system som skapar loggposten.",
      "comment" : "TKB-fält: `../../../system` (`SystemType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.system.systemId",
      "path" : "getlogs.logsResult.logs.log.system.systemId",
      "short" : "systemId",
      "definition" : "systemId",
      "comment" : "TKB-fält: `../../../../systemId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.system.systemName",
      "path" : "getlogs.logsResult.logs.log.system.systemName",
      "short" : "systemName",
      "definition" : "systemName",
      "comment" : "TKB-fält: `../../../../systemName` (`SystemName`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.activity",
      "path" : "getlogs.logsResult.logs.log.activity",
      "short" : "activity",
      "definition" : "Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten.",
      "comment" : "TKB-fält: `../../../activity` (`ActivityType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.activity.activityType",
      "path" : "getlogs.logsResult.logs.log.activity.activityType",
      "short" : "activityType",
      "definition" : "activityType",
      "comment" : "TKB-fält: `../../../../activityType` (`ActivityTypeValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.activity.activityLevel",
      "path" : "getlogs.logsResult.logs.log.activity.activityLevel",
      "short" : "activityLevel",
      "definition" : "activityLevel",
      "comment" : "TKB-fält: `../../../../activityLevel` (`ActivityLevel`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.activity.activityArgs",
      "path" : "getlogs.logsResult.logs.log.activity.activityArgs",
      "short" : "activityArgs",
      "definition" : "activityArgs",
      "comment" : "TKB-fält: `../../../../activityArgs` (`ActivityArgs`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.activity.startDate",
      "path" : "getlogs.logsResult.logs.log.activity.startDate",
      "short" : "startDate",
      "definition" : "startDate",
      "comment" : "TKB-fält: `../../../../startDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.activity.purpose",
      "path" : "getlogs.logsResult.logs.log.activity.purpose",
      "short" : "purpose",
      "definition" : "purpose",
      "comment" : "TKB-fält: `../../../../purpose` (`PurposeDescription`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user",
      "path" : "getlogs.logsResult.logs.log.user",
      "short" : "user",
      "definition" : "Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost.",
      "comment" : "TKB-fält: `../../../user` (`UserType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.userId",
      "path" : "getlogs.logsResult.logs.log.user.userId",
      "short" : "userId",
      "definition" : "userId",
      "comment" : "TKB-fält: `../../../../userId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.userName",
      "path" : "getlogs.logsResult.logs.log.user.userName",
      "short" : "userName",
      "definition" : "userName Heter name i schemat.",
      "comment" : "TKB-fält: `../../../../name` (`UserName`, kardinalitet 0..1).\n\n**Modellanteckning:** userName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.personId",
      "path" : "getlogs.logsResult.logs.log.user.personId",
      "short" : "personId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../../personId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.personId.root",
      "path" : "getlogs.logsResult.logs.log.user.personId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.personId.iiExtension",
      "path" : "getlogs.logsResult.logs.log.user.personId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.assignment",
      "path" : "getlogs.logsResult.logs.log.user.assignment",
      "short" : "assignment",
      "definition" : "assignment",
      "comment" : "TKB-fält: `../../../../assignment` (`Assignment`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.title",
      "path" : "getlogs.logsResult.logs.log.user.title",
      "short" : "title",
      "definition" : "title",
      "comment" : "TKB-fält: `../../../../title` (`UserTitle`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.careProvider",
      "path" : "getlogs.logsResult.logs.log.user.careProvider",
      "short" : "careProvider",
      "definition" : "Datatyp som representerar en vårdgivare.",
      "comment" : "TKB-fält: `../../../../careProvider` (`CareProviderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.careProvider.careProviderId",
      "path" : "getlogs.logsResult.logs.log.user.careProvider.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "comment" : "TKB-fält: `../../../../../careProviderId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.careProvider.careProviderName",
      "path" : "getlogs.logsResult.logs.log.user.careProvider.careProviderName",
      "short" : "careProviderName",
      "definition" : "careProviderName",
      "comment" : "TKB-fält: `../../../../../careProviderName` (`CareProviderName`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.careUnit",
      "path" : "getlogs.logsResult.logs.log.user.careUnit",
      "short" : "careUnit",
      "definition" : "Datatyp som representerar en vårdenhet.",
      "comment" : "TKB-fält: `../../../../careUnit` (`CareUnitType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.careUnit.careUnitId",
      "path" : "getlogs.logsResult.logs.log.user.careUnit.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "comment" : "TKB-fält: `../../../../../careUnitId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.user.careUnit.careUnitName",
      "path" : "getlogs.logsResult.logs.log.user.careUnit.careUnitName",
      "short" : "careUnitName",
      "definition" : "careUnitName",
      "comment" : "TKB-fält: `../../../../../careUnitName` (`CareUnitName`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources",
      "path" : "getlogs.logsResult.logs.log.resources",
      "short" : "resources",
      "definition" : "Information om aktuella resurser. En loggpost kan hålla en eller flera resurser.",
      "comment" : "TKB-fält: `../../../resources` (`ResourcesType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource",
      "path" : "getlogs.logsResult.logs.log.resources.resource",
      "short" : "resource",
      "definition" : "Datatyp som representerar en resurs i loggposten.",
      "comment" : "TKB-fält: `../../../../resource` (`ResourceType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.resourceType",
      "path" : "getlogs.logsResult.logs.log.resources.resource.resourceType",
      "short" : "resourceType",
      "definition" : "resourceType",
      "comment" : "TKB-fält: `../../../../../resourceType` (`ResourceTypeValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.patient",
      "path" : "getlogs.logsResult.logs.log.resources.resource.patient",
      "short" : "patient",
      "definition" : "Datatyp som representerar en patient i en resurs.",
      "comment" : "TKB-fält: `../../../../../patient` (`PatientType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.patient.patientId",
      "path" : "getlogs.logsResult.logs.log.resources.resource.patient.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../../../../patientId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.patient.patientId.root",
      "path" : "getlogs.logsResult.logs.log.resources.resource.patient.patientId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.patient.patientId.iiExtension",
      "path" : "getlogs.logsResult.logs.log.resources.resource.patient.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.patient.patientName",
      "path" : "getlogs.logsResult.logs.log.resources.resource.patient.patientName",
      "short" : "patientName",
      "definition" : "patientName",
      "comment" : "TKB-fält: `../../../../../../patientName` (`PatientName`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.careProvider",
      "path" : "getlogs.logsResult.logs.log.resources.resource.careProvider",
      "short" : "careProvider",
      "definition" : "Datatyp som representerar en vårdgivare.",
      "comment" : "TKB-fält: `../../../../../careProvider` (`CareProviderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.careProvider.careProviderId",
      "path" : "getlogs.logsResult.logs.log.resources.resource.careProvider.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "comment" : "TKB-fält: `../../../../../../careProviderId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.careProvider.careProviderName",
      "path" : "getlogs.logsResult.logs.log.resources.resource.careProvider.careProviderName",
      "short" : "careProviderName",
      "definition" : "careProviderName",
      "comment" : "TKB-fält: `../../../../../../careProviderName` (`CareProviderName`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.careUnit",
      "path" : "getlogs.logsResult.logs.log.resources.resource.careUnit",
      "short" : "careUnit",
      "definition" : "Datatyp som representerar en vårdenhet.",
      "comment" : "TKB-fält: `../../../../../careUnit` (`CareUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.careUnit.careUnitId",
      "path" : "getlogs.logsResult.logs.log.resources.resource.careUnit.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "comment" : "TKB-fält: `../../../../../../careUnitId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogs.logsResult.logs.log.resources.resource.careUnit.careUnitName",
      "path" : "getlogs.logsResult.logs.log.resources.resource.careUnit.careUnitName",
      "short" : "careUnitName",
      "definition" : "careUnitName",
      "comment" : "TKB-fält: `../../../../../../careUnitName` (`CareUnitName`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
