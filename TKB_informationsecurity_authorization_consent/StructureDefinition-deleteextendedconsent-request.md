# DeleteExtendedConsent — Request - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteExtendedConsent — Request**

## Logical Model: DeleteExtendedConsent — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/deleteextendedconsent-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:DeleteExtendedConsentRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i DeleteExtendedConsent (urn:riv:informationsecurity:authorization:consent:DeleteExtendedConsentResponder:2, DeleteExtendedConsentType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-deleteextendedconsent-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteextendedconsent-request.csv), [Excel](StructureDefinition-deleteextendedconsent-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteextendedconsent-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/deleteextendedconsent-request",
  "version" : "2.0",
  "name" : "DeleteExtendedConsentRequest",
  "title" : "DeleteExtendedConsent — Request",
  "status" : "active",
  "date" : "2026-11-09T03:35:51+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i DeleteExtendedConsent\n(urn:riv:informationsecurity:authorization:consent:DeleteExtendedConsentResponder:2, DeleteExtendedConsentType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/deleteextendedconsent-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteextendedconsent-request",
      "path" : "deleteextendedconsent-request",
      "short" : "DeleteExtendedConsent — Request",
      "definition" : "Logisk modell för begäran i DeleteExtendedConsent\n(urn:riv:informationsecurity:authorization:consent:DeleteExtendedConsentResponder:2, DeleteExtendedConsentType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "deleteextendedconsent-request.assertionId",
      "path" : "deleteextendedconsent-request.assertionId",
      "short" : "assertionId",
      "definition" : "Identifierar det intyg som skall makuleras.",
      "comment" : "TKB-fält: `assertionId` (`urn:riv:informationsecurity:authorization:consent:2:Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedconsent-request.deletionAction",
      "path" : "deleteextendedconsent-request.deletionAction",
      "short" : "ActionType",
      "definition" : "Identifierar de personer som begärt och utfört makulering samt tidpunkter för dessa. En anledning till makuleringen i fritext kan även ges.",
      "comment" : "TKB-fält: `deletionAction` (`urn:riv:informationsecurity:authorization:consent:2:ActionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "deleteextendedconsent-request.deletionAction.requestDate",
      "path" : "deleteextendedconsent-request.deletionAction.requestDate",
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
      "id" : "deleteextendedconsent-request.deletionAction.requestedBy",
      "path" : "deleteextendedconsent-request.deletionAction.requestedBy",
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
      "id" : "deleteextendedconsent-request.deletionAction.requestedBy.employeeId",
      "path" : "deleteextendedconsent-request.deletionAction.requestedBy.employeeId",
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
      "id" : "deleteextendedconsent-request.deletionAction.requestedBy.assignmentId",
      "path" : "deleteextendedconsent-request.deletionAction.requestedBy.assignmentId",
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
      "id" : "deleteextendedconsent-request.deletionAction.requestedBy.assignmentName",
      "path" : "deleteextendedconsent-request.deletionAction.requestedBy.assignmentName",
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
      "id" : "deleteextendedconsent-request.deletionAction.registrationDate",
      "path" : "deleteextendedconsent-request.deletionAction.registrationDate",
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
      "id" : "deleteextendedconsent-request.deletionAction.registeredBy",
      "path" : "deleteextendedconsent-request.deletionAction.registeredBy",
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
      "id" : "deleteextendedconsent-request.deletionAction.registeredBy.employeeId",
      "path" : "deleteextendedconsent-request.deletionAction.registeredBy.employeeId",
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
      "id" : "deleteextendedconsent-request.deletionAction.registeredBy.assignmentId",
      "path" : "deleteextendedconsent-request.deletionAction.registeredBy.assignmentId",
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
      "id" : "deleteextendedconsent-request.deletionAction.registeredBy.assignmentName",
      "path" : "deleteextendedconsent-request.deletionAction.registeredBy.assignmentName",
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
      "id" : "deleteextendedconsent-request.deletionAction.reasonText",
      "path" : "deleteextendedconsent-request.deletionAction.reasonText",
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
