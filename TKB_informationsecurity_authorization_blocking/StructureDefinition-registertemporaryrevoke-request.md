# RegisterTemporaryRevoke — Request - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterTemporaryRevoke — Request**

## Logical Model: RegisterTemporaryRevoke — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registertemporaryrevoke-request | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:RegisterTemporaryRevokeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i RegisterTemporaryRevoke (urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryRevokeResponder:4, RegisterTemporaryRevokeType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-registertemporaryrevoke-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registertemporaryrevoke-request.csv), [Excel](StructureDefinition-registertemporaryrevoke-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registertemporaryrevoke-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registertemporaryrevoke-request",
  "version" : "4.0",
  "name" : "RegisterTemporaryRevokeRequest",
  "title" : "RegisterTemporaryRevoke — Request",
  "status" : "active",
  "date" : "2026-11-09T03:35:16+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i RegisterTemporaryRevoke\n(urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryRevokeResponder:4, RegisterTemporaryRevokeType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registertemporaryrevoke-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registertemporaryrevoke-request",
      "path" : "registertemporaryrevoke-request",
      "short" : "RegisterTemporaryRevoke — Request",
      "definition" : "Logisk modell för begäran i RegisterTemporaryRevoke\n(urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryRevokeResponder:4, RegisterTemporaryRevokeType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevokeRegistration",
      "path" : "registertemporaryrevoke-request.temporaryRevokeRegistration",
      "short" : "TemporaryRevokeRegistrationType",
      "definition" : "Registreringsuppgifter för tillfällig hävning.",
      "comment" : "TKB-fält: `temporaryRevokeRegistration` (`urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevokeRegistration.temporaryRevokeId",
      "path" : "registertemporaryrevoke-request.temporaryRevokeRegistration.temporaryRevokeId",
      "short" : "temporaryRevokeId",
      "definition" : "temporaryRevokeId",
      "comment" : "TKB-fält: `../temporaryRevokeId` (`Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevokeRegistration.blockId",
      "path" : "registertemporaryrevoke-request.temporaryRevokeRegistration.blockId",
      "short" : "blockId",
      "definition" : "blockId",
      "comment" : "TKB-fält: `../blockId` (`Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevokeRegistration.endDate",
      "path" : "registertemporaryrevoke-request.temporaryRevokeRegistration.endDate",
      "short" : "endDate",
      "definition" : "endDate",
      "comment" : "TKB-fält: `../endDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevokeRegistration.revokedForCareUnitId",
      "path" : "registertemporaryrevoke-request.temporaryRevokeRegistration.revokedForCareUnitId",
      "short" : "revokedForCareUnitId",
      "definition" : "revokedForCareUnitId",
      "comment" : "TKB-fält: `../revokedForCareUnitId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevokeRegistration.revokedForEmployeeId",
      "path" : "registertemporaryrevoke-request.temporaryRevokeRegistration.revokedForEmployeeId",
      "short" : "revokedForEmployeeId",
      "definition" : "revokedForEmployeeId",
      "comment" : "TKB-fält: `../revokedForEmployeeId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
