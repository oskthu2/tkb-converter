# CancelExtendedConsent — Request - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelExtendedConsent — Request**

## Logical Model: CancelExtendedConsent — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/cancelextendedconsent-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:CancelExtendedConsentRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i CancelExtendedConsent (urn:riv:informationsecurity:authorization:consent:CancelExtendedConsentResponder:2, CancelExtendedConsentType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-cancelextendedconsent-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cancelextendedconsent-request.csv), [Excel](StructureDefinition-cancelextendedconsent-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cancelextendedconsent-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/cancelextendedconsent-request",
  "version" : "2.0",
  "name" : "CancelExtendedConsentRequest",
  "title" : "CancelExtendedConsent — Request",
  "status" : "active",
  "date" : "2026-11-09T03:35:51+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i CancelExtendedConsent\n(urn:riv:informationsecurity:authorization:consent:CancelExtendedConsentResponder:2, CancelExtendedConsentType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/cancelextendedconsent-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cancelextendedconsent-request",
      "path" : "cancelextendedconsent-request",
      "short" : "CancelExtendedConsent — Request",
      "definition" : "Logisk modell för begäran i CancelExtendedConsent\n(urn:riv:informationsecurity:authorization:consent:CancelExtendedConsentResponder:2, CancelExtendedConsentType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "cancelextendedconsent-request.assertionId",
      "path" : "cancelextendedconsent-request.assertionId",
      "short" : "assertionId",
      "definition" : "Identifierare för det intyg som skall avslutas.",
      "comment" : "TKB-fält: `assertionId` (`urn:riv:informationsecurity:authorization:consent:2:Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction",
      "path" : "cancelextendedconsent-request.cancellationAction",
      "short" : "ActionType",
      "definition" : "Identifierar de personer som begärt och registrerat avslutandet samt tidpunkter för dessa. En anledning till avslutande i fritext kan även ges.",
      "comment" : "TKB-fält: `cancellationAction` (`urn:riv:informationsecurity:authorization:consent:2:ActionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.requestDate",
      "path" : "cancelextendedconsent-request.cancellationAction.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "comment" : "TKB-fält: `../requestDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.requestedBy",
      "path" : "cancelextendedconsent-request.cancellationAction.requestedBy",
      "short" : "ActorType",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "comment" : "TKB-fält: `../requestedBy` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.requestedBy.employeeId",
      "path" : "cancelextendedconsent-request.cancellationAction.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.requestedBy.assignmentId",
      "path" : "cancelextendedconsent-request.cancellationAction.requestedBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "comment" : "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.requestedBy.assignmentName",
      "path" : "cancelextendedconsent-request.cancellationAction.requestedBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "comment" : "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.registrationDate",
      "path" : "cancelextendedconsent-request.cancellationAction.registrationDate",
      "short" : "registrationDate",
      "definition" : "registrationDate",
      "comment" : "TKB-fält: `../registrationDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.registeredBy",
      "path" : "cancelextendedconsent-request.cancellationAction.registeredBy",
      "short" : "ActorType",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "comment" : "TKB-fält: `../registeredBy` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.registeredBy.employeeId",
      "path" : "cancelextendedconsent-request.cancellationAction.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.registeredBy.assignmentId",
      "path" : "cancelextendedconsent-request.cancellationAction.registeredBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "comment" : "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.registeredBy.assignmentName",
      "path" : "cancelextendedconsent-request.cancellationAction.registeredBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "comment" : "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.reasonText",
      "path" : "cancelextendedconsent-request.cancellationAction.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "comment" : "TKB-fält: `../reasonText` (`ReasonText`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
