# GetAppointments — Request - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAppointments — Request**

## Logical Model: GetAppointments — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getappointments-request | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetAppointmentsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetAppointments (urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-getappointments-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getappointments-request.csv), [Excel](StructureDefinition-getappointments-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getappointments-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getappointments-request",
  "version" : "2.0",
  "name" : "GetAppointmentsRequest",
  "title" : "GetAppointments — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:52:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetAppointments\n(urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getappointments-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getappointments-request",
      "path" : "getappointments-request",
      "short" : "GetAppointments — Request",
      "definition" : "Logisk modell för begäran i GetAppointments\n(urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getappointments-request.actor",
      "path" : "getappointments-request.actor",
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
      "id" : "getappointments-request.actor.actorId",
      "path" : "getappointments-request.actor.actorId",
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
      "id" : "getappointments-request.actor.actorType",
      "path" : "getappointments-request.actor.actorType",
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
      "id" : "getappointments-request.personId",
      "path" : "getappointments-request.personId",
      "short" : "PersonIdType",
      "definition" : "Patientens personnummer, för den patient som tidbokningen gäller. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras.",
      "comment" : "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getappointments-request.fromDate",
      "path" : "getappointments-request.fromDate",
      "short" : "fromDate",
      "definition" : "Filtrering på tidbokningar som ska äga rum fr o m datum.",
      "comment" : "TKB-fält: `fromDate` (`DT`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/DT"]
      }]
    },
    {
      "id" : "getappointments-request.toDate",
      "path" : "getappointments-request.toDate",
      "short" : "toDate",
      "definition" : "Filtrering på tidbokningar som ska äga rum t o m datum.",
      "comment" : "TKB-fält: `toDate` (`DT`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/DT"]
      }]
    },
    {
      "id" : "getappointments-request.timeTypeCode",
      "path" : "getappointments-request.timeTypeCode",
      "short" : "timeTypeCode",
      "definition" : "Filtrering på tidbokningar som gäller en specifik tidstyps-kod.",
      "comment" : "TKB-fält: `timetypeCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.healthcareServiceCode",
      "path" : "getappointments-request.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "Filtrering på tidbokningar som gäller en specifik vårdtjänst. Koden förväntas vara hämtad från svenska utgåvan av Snomed-CT (OID: 1.2.752.116.2.1.1)",
      "comment" : "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
