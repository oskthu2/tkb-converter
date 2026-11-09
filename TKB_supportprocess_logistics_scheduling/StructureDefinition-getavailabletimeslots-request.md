# GetAvailableTimeslots — Request - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableTimeslots — Request**

## Logical Model: GetAvailableTimeslots — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabletimeslots-request | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetAvailableTimeslotsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetAvailableTimeslots (urn:riv:supportprocess:logistics:scheduling:GetAvailableTimeslotsResponder:2, GetAvailableTimeslotsType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-getavailabletimeslots-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailabletimeslots-request.csv), [Excel](StructureDefinition-getavailabletimeslots-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailabletimeslots-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabletimeslots-request",
  "version" : "2.0",
  "name" : "GetAvailableTimeslotsRequest",
  "title" : "GetAvailableTimeslots — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:52:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetAvailableTimeslots\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableTimeslotsResponder:2, GetAvailableTimeslotsType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabletimeslots-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailabletimeslots-request",
      "path" : "getavailabletimeslots-request",
      "short" : "GetAvailableTimeslots — Request",
      "definition" : "Logisk modell för begäran i GetAvailableTimeslots\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableTimeslotsResponder:2, GetAvailableTimeslotsType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getavailabletimeslots-request.actor",
      "path" : "getavailabletimeslots-request.actor",
      "short" : "ActorType",
      "definition" : "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga tider ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”).",
      "comment" : "TKB-fält: `actor` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.actor.actorId",
      "path" : "getavailabletimeslots-request.actor.actorId",
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
      "id" : "getavailabletimeslots-request.actor.actorType",
      "path" : "getavailabletimeslots-request.actor.actorType",
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
      "id" : "getavailabletimeslots-request.originalAppointmentId",
      "path" : "getavailabletimeslots-request.originalAppointmentId",
      "short" : "originalAppointmentId",
      "definition" : "originalAppointmentId",
      "comment" : "TKB-fält: `originalAppointmentId` (`uuidType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/uuidType"]
      }]
    },
    {
      "id" : "getavailabletimeslots-request.personId",
      "path" : "getavailabletimeslots-request.personId",
      "short" : "PersonIdType",
      "definition" : "Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras.",
      "comment" : "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.startDateInclusive",
      "path" : "getavailabletimeslots-request.startDateInclusive",
      "short" : "startDateInclusive",
      "definition" : "Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD.",
      "comment" : "TKB-fält: `startDateInclusive` (`DT (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/DT"]
      }]
    },
    {
      "id" : "getavailabletimeslots-request.endDateInclusive",
      "path" : "getavailabletimeslots-request.endDateInclusive",
      "short" : "endDateInclusive",
      "definition" : "Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD.",
      "comment" : "TKB-fält: `endDateInclusive` (`DT (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/DT"]
      }]
    },
    {
      "id" : "getavailabletimeslots-request.priority",
      "path" : "getavailabletimeslots-request.priority",
      "short" : "priority",
      "definition" : "Konsumentens prioritering av behovet för bokning/besök. Prioritet bestäms av ett steg som föregås av tidbokningen. Exempel på sådant försteg kan vara en tjänst som triagerar invånaren/patienten. Prioritet bör inte gå att väljas av invånaren själv.",
      "comment" : "TKB-fält: `priority` (`Integer`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.practitionerId",
      "path" : "getavailabletimeslots-request.practitionerId",
      "short" : "HSAIdType",
      "definition" : "HSA-id för HoS-personal.",
      "comment" : "TKB-fält: `practitionerId` (`HsaIdType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.timeTypeCode",
      "path" : "getavailabletimeslots-request.timeTypeCode",
      "short" : "timeTypeCode",
      "definition" : "Tidstyp att söka lediga datum för.\n\nEn konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop.",
      "comment" : "TKB-fält: `timeTypeCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.healthcareServiceCode",
      "path" : "getavailabletimeslots-request.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "Vårdtjänst att söka lediga datum för. En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. Kod för vårdtjänst ska uttryckas som en Snomed-CT kod (svensk utgåva).",
      "comment" : "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.careContactCode",
      "path" : "getavailabletimeslots-request.careContactCode",
      "short" : "careContactCode",
      "definition" : "Kontaktsätt att söka lediga datum för.",
      "comment" : "TKB-fält: `careContactCode` (`CVType`, kardinalitet 0..1).\n\nObs: modellen anger 0..* där TKB:n anger 0..1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/CVType"
      }]
    }]
  }
}

```
