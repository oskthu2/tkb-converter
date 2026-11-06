# CancelAppointment — Request - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelAppointment — Request**

## Logical Model: CancelAppointment — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/cancelappointment-request | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:CancelAppointmentRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i CancelAppointment (urn:riv:supportprocess:logistics:scheduling:CancelAppointmentResponder:2, CancelAppointmentType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-cancelappointment-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cancelappointment-request.csv), [Excel](StructureDefinition-cancelappointment-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cancelappointment-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/cancelappointment-request",
  "version" : "2.0",
  "name" : "CancelAppointmentRequest",
  "title" : "CancelAppointment — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:54:21+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i CancelAppointment\n(urn:riv:supportprocess:logistics:scheduling:CancelAppointmentResponder:2, CancelAppointmentType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/cancelappointment-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cancelappointment-request",
      "path" : "cancelappointment-request",
      "short" : "CancelAppointment — Request",
      "definition" : "Logisk modell för begäran i CancelAppointment\n(urn:riv:supportprocess:logistics:scheduling:CancelAppointmentResponder:2, CancelAppointmentType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "cancelappointment-request.logicalAddress",
      "path" : "cancelappointment-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Verksamhetens HSAID på enhetsnivå",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.actor",
      "path" : "cancelappointment-request.actor",
      "short" : "actor",
      "definition" : "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras.",
      "comment" : "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorId",
      "path" : "cancelappointment-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "comment" : "TKB-fält: `../actorId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorId.root",
      "path" : "cancelappointment-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorId.iiExtension",
      "path" : "cancelappointment-request.actor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorType",
      "path" : "cancelappointment-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType",
      "comment" : "TKB-fält: `../actorType` (`SnomedCtType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorType.snomedCtCode",
      "path" : "cancelappointment-request.actor.actorType.snomedCtCode",
      "short" : "snomedCtCode",
      "definition" : "snomedCtCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** snomedCtCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorType.codeSystem",
      "path" : "cancelappointment-request.actor.actorType.codeSystem",
      "short" : "codeSystem",
      "definition" : "Tillåtna värden: 1.2.752.116.2.1.1.",
      "comment" : "TKB-fält: `../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorType.codeSystemName",
      "path" : "cancelappointment-request.actor.actorType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorType.codeSystemVersion",
      "path" : "cancelappointment-request.actor.actorType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorType.displayName",
      "path" : "cancelappointment-request.actor.actorType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorType.originalText",
      "path" : "cancelappointment-request.actor.actorType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.appointmentId",
      "path" : "cancelappointment-request.appointmentId",
      "short" : "appointmentId",
      "definition" : "Unikt id för bokningen. Ska uttryckas som ett uuid (universally unique identifier).",
      "comment" : "TKB-fält: `appointmentId` (`uuidType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.personId",
      "path" : "cancelappointment-request.personId",
      "short" : "personId",
      "definition" : "Patientens personnummer, för den patient som tidbokningen gäller.",
      "comment" : "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelappointment-request.personId.root",
      "path" : "cancelappointment-request.personId.root",
      "short" : "root",
      "definition" : "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3.",
      "comment" : "TKB-fält: `../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.personId.personIdExtension",
      "path" : "cancelappointment-request.personId.personIdExtension",
      "short" : "personIdExtension",
      "definition" : "personIdExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../extension` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** personIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.reasonText",
      "path" : "cancelappointment-request.reasonText",
      "short" : "reasonText",
      "definition" : "Patientens anledning till avbokningen, uttryckt som fritext",
      "comment" : "TKB-fält: `reasonText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.reasonCode",
      "path" : "cancelappointment-request.reasonCode",
      "short" : "reasonCode",
      "definition" : "Patientens anledning till avbokningen, uttryckt som anledningskod. Möjliga val som ges till patienten bestäms av tidbokningssystemet. Tidbokningssystemet ges möjlighet att erbjuda lista med möjliga val per tidstyp. Tidbokningssystemet bestämmer själv koder och kodsystem att använda",
      "comment" : "TKB-fält: `reasonCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelappointment-request.reasonCode.cvCode",
      "path" : "cancelappointment-request.reasonCode.cvCode",
      "short" : "cvCode",
      "definition" : "Kod för anledningen till avbokningen",
      "comment" : "TKB-fält: `reasonCode.code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.reasonCode.codeSystem",
      "path" : "cancelappointment-request.reasonCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "Definierar vilket kodsystem som fältet code tillhör.",
      "comment" : "TKB-fält: `reasonCode.codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.reasonCode.codeSystemName",
      "path" : "cancelappointment-request.reasonCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.reasonCode.codeSystemVersion",
      "path" : "cancelappointment-request.reasonCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.reasonCode.displayName",
      "path" : "cancelappointment-request.reasonCode.displayName",
      "short" : "displayName",
      "definition" : "Den text som beskriver koden och ska visas till invånaren",
      "comment" : "TKB-fält: `reasonCode.displayName` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelappointment-request.reasonCode.originalText",
      "path" : "cancelappointment-request.reasonCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
