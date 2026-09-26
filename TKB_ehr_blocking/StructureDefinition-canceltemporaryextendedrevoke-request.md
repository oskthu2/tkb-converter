# CancelTemporaryExtendedRevoke — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelTemporaryExtendedRevoke — Request**

## Logical Model: CancelTemporaryExtendedRevoke — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/canceltemporaryextendedrevoke-request | *Version*:3.2.2 |
| Draft as of 2026-09-26 | *Computable Name*:CancelTemporaryExtendedRevokeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CancelTemporaryExtendedRevoke. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-canceltemporaryextendedrevoke-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-canceltemporaryextendedrevoke-request.csv), [Excel](StructureDefinition-canceltemporaryextendedrevoke-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "canceltemporaryextendedrevoke-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/canceltemporaryextendedrevoke-request",
  "version" : "3.2.2",
  "name" : "CancelTemporaryExtendedRevokeRequest",
  "title" : "CancelTemporaryExtendedRevoke — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:23:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CancelTemporaryExtendedRevoke.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/canceltemporaryextendedrevoke-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "canceltemporaryextendedrevoke-request",
      "path" : "canceltemporaryextendedrevoke-request",
      "short" : "CancelTemporaryExtendedRevoke — Request",
      "definition" : "Logisk modell för requestparametrar i CancelTemporaryExtendedRevoke."
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.temporaryRevokeId",
      "path" : "canceltemporaryextendedrevoke-request.temporaryRevokeId",
      "short" : "Identifierare för den tillfälliga hävning som skall återkallas.",
      "definition" : "Identifierare för den tillfälliga hävning som skall återkallas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo",
      "short" : "Aktörsinfo för begäran och registrering av återkallningen",
      "definition" : "Aktörsinfo för begäran och registrering av återkallningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.requestDate",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.requestDate",
      "short" : "Datum när återkallningen begärdes",
      "definition" : "Datum när återkallningen begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.requestedBy",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.requestedBy",
      "short" : "Aktören som begärde återkallningen",
      "definition" : "Aktören som begärde återkallningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.requestedBy.employeeId",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.requestedBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.requestedBy.assignmentId",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.requestedBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.requestedBy.assignmentName",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.requestedBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.registrationDate",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.registrationDate",
      "short" : "Datum när återkallningen registrerades",
      "definition" : "Datum när återkallningen registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.registeredBy",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.registeredBy",
      "short" : "Aktören som registrerade återkallningen",
      "definition" : "Aktören som registrerade återkallningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.registeredBy.employeeId",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.registeredBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.registeredBy.assignmentId",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.registeredBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.registeredBy.assignmentName",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.registeredBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancellationInfo.reasonText",
      "path" : "canceltemporaryextendedrevoke-request.cancellationInfo.reasonText",
      "short" : "Orsak till återkallningen (fritext)",
      "definition" : "Orsak till återkallningen (fritext)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.cancelReasonText",
      "path" : "canceltemporaryextendedrevoke-request.cancelReasonText",
      "short" : "Kompletterande text för orsak till makuleringen",
      "definition" : "Kompletterande text för orsak till makuleringen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke-request.replicationTimeout",
      "path" : "canceltemporaryextendedrevoke-request.replicationTimeout",
      "short" : "Anger hur replikering till nationell spärrtjänst ska ske (millisekunder). -1 = anropet väntar på replikering (misslyckas vid timeout). 0 = anropet avslutas direkt, replikering sker asynkront. >0 = anropet väntar angiven tid innan det avslutas; ej klar replikering fortsätter asynkront.",
      "definition" : "Anger hur replikering till nationell spärrtjänst ska ske (millisekunder). -1 = anropet väntar på replikering (misslyckas vid timeout). 0 = anropet avslutas direkt, replikering sker asynkront. >0 = anropet väntar angiven tid innan det avslutas; ej klar replikering fortsätter asynkront.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
