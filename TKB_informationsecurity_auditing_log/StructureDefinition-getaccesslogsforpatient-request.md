# GetAccessLogsForPatient — Request - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAccessLogsForPatient — Request**

## Logical Model: GetAccessLogsForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getaccesslogsforpatient-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAccessLogsForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetAccessLogsForPatient (urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-getaccesslogsforpatient-request.json)

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
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getaccesslogsforpatient-request",
  "version" : "2.0",
  "name" : "GetAccessLogsForPatientRequest",
  "title" : "GetAccessLogsForPatient — Request",
  "status" : "active",
  "date" : "2026-11-09T03:34:46+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetAccessLogsForPatient\n(urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/getaccesslogsforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getaccesslogsforpatient-request",
      "path" : "getaccesslogsforpatient-request",
      "short" : "GetAccessLogsForPatient — Request",
      "definition" : "Logisk modell för begäran i GetAccessLogsForPatient\n(urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getaccesslogsforpatient-request.patientId",
      "path" : "getaccesslogsforpatient-request.patientId",
      "short" : "patientId",
      "definition" : "Patientens personnummer, samordningsnummer, alternativt reservnummer som någon vårdgivare haft åtkomst till.",
      "comment" : "TKB-fält: `patientId` (`urn:riv:informationsecurity:auditing:log:2:IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getaccesslogsforpatient-request.fromDate",
      "path" : "getaccesslogsforpatient-request.fromDate",
      "short" : "fromDate",
      "definition" : "Obligatoriskt startdatum för att begränsa rapportuttaget.",
      "comment" : "TKB-fält: `fromDate` (`xs:DateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getaccesslogsforpatient-request.toDate",
      "path" : "getaccesslogsforpatient-request.toDate",
      "short" : "toDate",
      "definition" : "Obligatoriskt slutdatum för att begränsa rapportuttaget.",
      "comment" : "TKB-fält: `toDate` (`xs:DateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getaccesslogsforpatient-request.queuedReportId",
      "path" : "getaccesslogsforpatient-request.queuedReportId",
      "short" : "queuedReportId",
      "definition" : "Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts.",
      "comment" : "TKB-fält: `queuedReportId*` (`urn:riv:informationsecurity:auditing:log:2:Id`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
