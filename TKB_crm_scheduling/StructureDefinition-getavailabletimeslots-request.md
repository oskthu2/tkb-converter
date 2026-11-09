# GetAvailableTimeslots — Request - crm: scheduling v1.1.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableTimeslots — Request**

## Logical Model: GetAvailableTimeslots — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getavailabletimeslots-request | *Version*:1.1 |
| Active as of 2026-11-09 | *Computable Name*:GetAvailableTimeslotsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetAvailableTimeslots. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getavailabletimeslots-request.json)

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
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getavailabletimeslots-request",
  "version" : "1.1",
  "name" : "GetAvailableTimeslotsRequest",
  "title" : "GetAvailableTimeslots — Request",
  "status" : "active",
  "date" : "2026-11-09T03:26:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetAvailableTimeslots.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getavailabletimeslots-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailabletimeslots-request",
      "path" : "getavailabletimeslots-request",
      "short" : "GetAvailableTimeslots — Request",
      "definition" : "Logisk modell för requestparametrar i GetAvailableTimeslots."
    },
    {
      "id" : "getavailabletimeslots-request.healthcare-facility",
      "path" : "getavailabletimeslots-request.healthcare_facility",
      "short" : "Hsa-ID för mottagning/vårdenhet",
      "definition" : "Hsa-ID för mottagning/vårdenhet.",
      "comment" : "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.bookingId",
      "path" : "getavailabletimeslots-request.bookingId",
      "short" : "Intern bokningsidentitet",
      "definition" : "Intern bokningsidentitet. Används för att indikera ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven bokning.",
      "comment" : "TKB-fält: `bookingId` (`BookingIdType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.startDateInclusive",
      "path" : "getavailabletimeslots-request.startDateInclusive",
      "short" : "Datum från och med (ÅÅÅÅMMDD)",
      "definition" : "Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD.",
      "comment" : "TKB-fält: `startDateInclusive` (`DT (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.endDateInclusive",
      "path" : "getavailabletimeslots-request.endDateInclusive",
      "short" : "Datum till och med (ÅÅÅÅMMDD)",
      "definition" : "Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD.",
      "comment" : "TKB-fält: `endDateInclusive` (`DT (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.performer",
      "path" : "getavailabletimeslots-request.performer",
      "short" : "HSA-id för HoS-personal",
      "definition" : "HSA-id för HoS-personal.",
      "comment" : "TKB-fält: `performer` (`HsaIdType (string)`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.timeTypeName",
      "path" : "getavailabletimeslots-request.timeTypeName",
      "short" : "Namn på tidstyp",
      "definition" : "Namn på tidstyp.",
      "comment" : "TKB-fält: `timeTypeName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.timeTypeID",
      "path" : "getavailabletimeslots-request.timeTypeID",
      "short" : "Identifierare för tidstyp",
      "definition" : "Identifierare för tidstyp.",
      "comment" : "TKB-fält: `timeTypeID` (`TimeTypeIDType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.careTypeName",
      "path" : "getavailabletimeslots-request.careTypeName",
      "short" : "Namn på vårdtyp",
      "definition" : "Namn på vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes.",
      "comment" : "TKB-fält: `careTypeName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.careTypeID",
      "path" : "getavailabletimeslots-request.careTypeID",
      "short" : "Identifierare för vårdtyp",
      "definition" : "Identifierare för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes.",
      "comment" : "TKB-fält: `careTypeID` (`CareTypeIDType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabletimeslots-request.subject-of-care",
      "path" : "getavailabletimeslots-request.subject_of_care",
      "short" : "Personnummer enl. yyyymmddxxxx",
      "definition" : "Personnummer enl. yyyymmddxxxx.",
      "comment" : "TKB-fält: `subject_of_care` (`SubjectOfCareIdType (string)`, kardinalitet 1..1).\n\n**Modellanteckning:** Personnummer för invånaren.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
