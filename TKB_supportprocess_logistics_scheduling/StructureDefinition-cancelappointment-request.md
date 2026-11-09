# CancelAppointment — Request - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelAppointment — Request**

## Logical Model: CancelAppointment — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/cancelappointment-request | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:CancelAppointmentRequest |
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
  "date" : "2026-11-09T03:52:57+00:00",
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
      "id" : "cancelappointment-request.actor",
      "path" : "cancelappointment-request.actor",
      "short" : "ActorType",
      "definition" : "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras.",
      "comment" : "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
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
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "cancelappointment-request.actor.actorType",
      "path" : "cancelappointment-request.actor.actorType",
      "short" : "SnomedCtType",
      "definition" : "actorType",
      "comment" : "TKB-fält: `../actorType` (`SnomedCtType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
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
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/uuidType"]
      }]
    },
    {
      "id" : "cancelappointment-request.personId",
      "path" : "cancelappointment-request.personId",
      "short" : "PersonIdType",
      "definition" : "Patientens personnummer, för den patient som tidbokningen gäller.",
      "comment" : "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
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
        "code" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/CVType"
      }]
    }]
  }
}

```
