# DeleteExtendedConsent — Request - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteExtendedConsent — Request**

## Logical Model: DeleteExtendedConsent — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/deleteextendedconsent-request | *Version*:2.0 |
| Active as of 2026-10-08 | *Computable Name*:DeleteExtendedConsentRequest |
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
  "date" : "2026-10-08T18:29:57+00:00",
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
      "id" : "deleteextendedconsent-request.logicalAddress",
      "path" : "deleteextendedconsent-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för vårdgivaren som samtycket gäller för.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedconsent-request.assertionId",
      "path" : "deleteextendedconsent-request.assertionId",
      "short" : "assertionId",
      "definition" : "assertionId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedconsent-request.deletionAction",
      "path" : "deleteextendedconsent-request.deletionAction",
      "short" : "deletionAction",
      "definition" : "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteextendedconsent-request.deletionAction.requestDate",
      "path" : "deleteextendedconsent-request.deletionAction.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "deleteextendedconsent-request.deletionAction.requestedBy",
      "path" : "deleteextendedconsent-request.deletionAction.requestedBy",
      "short" : "requestedBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteextendedconsent-request.deletionAction.requestedBy.employeeId",
      "path" : "deleteextendedconsent-request.deletionAction.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "deleteextendedconsent-request.deletionAction.registeredBy",
      "path" : "deleteextendedconsent-request.deletionAction.registeredBy",
      "short" : "registeredBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteextendedconsent-request.deletionAction.registeredBy.employeeId",
      "path" : "deleteextendedconsent-request.deletionAction.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
