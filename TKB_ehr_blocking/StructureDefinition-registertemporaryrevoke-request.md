# RegisterTemporaryRevoke — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterTemporaryRevoke — Request**

## Logical Model: RegisterTemporaryRevoke — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryrevoke-request | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterTemporaryRevokeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i RegisterTemporaryRevoke. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-registertemporaryrevoke-request.json)

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
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryrevoke-request",
  "version" : "3.2.2",
  "name" : "RegisterTemporaryRevokeRequest",
  "title" : "RegisterTemporaryRevoke — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i RegisterTemporaryRevoke.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryrevoke-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registertemporaryrevoke-request",
      "path" : "registertemporaryrevoke-request",
      "short" : "RegisterTemporaryRevoke — Request",
      "definition" : "Logisk modell för requestparametrar i RegisterTemporaryRevoke."
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevoke",
      "path" : "registertemporaryrevoke-request.temporaryRevoke",
      "short" : "Den tillfälliga hävningen som skall registreras",
      "definition" : "Den tillfälliga hävningen som skall registreras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevoke.temporaryRevokeId",
      "path" : "registertemporaryrevoke-request.temporaryRevoke.temporaryRevokeId",
      "short" : "Unik identifierare (UUID) för tillfällig hävning",
      "definition" : "Unik identifierare (UUID) för tillfällig hävning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevoke.blockId",
      "path" : "registertemporaryrevoke-request.temporaryRevoke.blockId",
      "short" : "UUID för den spärr som hävs tillfälligt",
      "definition" : "UUID för den spärr som hävs tillfälligt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevoke.endDate",
      "path" : "registertemporaryrevoke-request.temporaryRevoke.endDate",
      "short" : "Datum när den tillfälliga hävningen upphör",
      "definition" : "Datum när den tillfälliga hävningen upphör",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevoke.revokedForCareUnitId",
      "path" : "registertemporaryrevoke-request.temporaryRevoke.revokedForCareUnitId",
      "short" : "HSA-id för vårdenhet som ges tillfällig åtkomst",
      "definition" : "HSA-id för vårdenhet som ges tillfällig åtkomst",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevoke.revokedForEmployeeId",
      "path" : "registertemporaryrevoke-request.temporaryRevoke.revokedForEmployeeId",
      "short" : "HSA-id för enskild medarbetare (valfritt)",
      "definition" : "HSA-id för enskild medarbetare (valfritt)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryrevoke-request.temporaryRevoke.ownerId",
      "path" : "registertemporaryrevoke-request.temporaryRevoke.ownerId",
      "short" : "System som registrerar hävningen",
      "definition" : "System som registrerar hävningen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
