# CancelExtendedConsent — Request - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelExtendedConsent — Request**

## Logical Model: CancelExtendedConsent — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/cancelextendedconsent-request | *Version*:2.0 |
| Active as of 2026-10-08 | *Computable Name*:CancelExtendedConsentRequest |
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
  "date" : "2026-10-08T18:29:57+00:00",
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
      "id" : "cancelextendedconsent-request.logicalAddress",
      "path" : "cancelextendedconsent-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för vårdgivaren som samtycket gäller för.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.assertionId",
      "path" : "cancelextendedconsent-request.assertionId",
      "short" : "assertionId",
      "definition" : "assertionId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction",
      "path" : "cancelextendedconsent-request.cancellationAction",
      "short" : "cancellationAction",
      "definition" : "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.requestDate",
      "path" : "cancelextendedconsent-request.cancellationAction.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.requestedBy",
      "path" : "cancelextendedconsent-request.cancellationAction.requestedBy",
      "short" : "requestedBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.requestedBy.employeeId",
      "path" : "cancelextendedconsent-request.cancellationAction.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.registeredBy",
      "path" : "cancelextendedconsent-request.cancellationAction.registeredBy",
      "short" : "registeredBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelextendedconsent-request.cancellationAction.registeredBy.employeeId",
      "path" : "cancelextendedconsent-request.cancellationAction.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
