# MakeAppointment — Request - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MakeAppointment — Request**

## Logical Model: MakeAppointment — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/makeappointment-request | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:MakeAppointmentRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i MakeAppointment (urn:riv:supportprocess:logistics:scheduling:MakeAppointmentResponder:2, MakeAppointmentType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-makeappointment-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-makeappointment-request.csv), [Excel](StructureDefinition-makeappointment-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "makeappointment-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/makeappointment-request",
  "version" : "2.0",
  "name" : "MakeAppointmentRequest",
  "title" : "MakeAppointment — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:52:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i MakeAppointment\n(urn:riv:supportprocess:logistics:scheduling:MakeAppointmentResponder:2, MakeAppointmentType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/makeappointment-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "makeappointment-request",
      "path" : "makeappointment-request",
      "short" : "MakeAppointment — Request",
      "definition" : "Logisk modell för begäran i MakeAppointment\n(urn:riv:supportprocess:logistics:scheduling:MakeAppointmentResponder:2, MakeAppointmentType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "makeappointment-request.actor",
      "path" : "makeappointment-request.actor",
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
      "id" : "makeappointment-request.actor.actorId",
      "path" : "makeappointment-request.actor.actorId",
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
      "id" : "makeappointment-request.actor.actorType",
      "path" : "makeappointment-request.actor.actorType",
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
      "id" : "makeappointment-request.personId",
      "path" : "makeappointment-request.personId",
      "short" : "PersonIdType",
      "definition" : "Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras.",
      "comment" : "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "makeappointment-request.timeslotId",
      "path" : "makeappointment-request.timeslotId",
      "short" : "timeslotId",
      "definition" : "Unik identifierare för tidsluckan som ska bokas. Ska uttryckas som uuid (universally unique identifier).",
      "comment" : "TKB-fält: `timeslotId` (`uuidType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/uuidType"]
      }]
    },
    {
      "id" : "makeappointment-request.reasonText",
      "path" : "makeappointment-request.reasonText",
      "short" : "reasonText",
      "definition" : "Patientens anledning till bokningen, uttryckt som fritext",
      "comment" : "TKB-fält: `reasonText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.reasonCode",
      "path" : "makeappointment-request.reasonCode",
      "short" : "reasonCode",
      "definition" : "Patientens anledning till bokningen, uttryckt som anledningskod. Möjliga val som ges till patienten bestäms av tidbokningssystemet. Tidbokningssystemet ges möjlighet att erbjuda lista med möjliga val per tidstyp. Tidbokningssystemet bestämmer själva koder och kodsystem att använda",
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
