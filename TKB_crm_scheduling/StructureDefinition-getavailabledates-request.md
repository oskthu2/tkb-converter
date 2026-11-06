# GetAvailableDates — Request - crm: scheduling v1.1.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableDates — Request**

## Logical Model: GetAvailableDates — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getavailabledates-request | *Version*:1.1 |
| Active as of 2026-11-06 | *Computable Name*:GetAvailableDatesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetAvailableDates. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getavailabledates-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailabledates-request.csv), [Excel](StructureDefinition-getavailabledates-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailabledates-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getavailabledates-request",
  "version" : "1.1",
  "name" : "GetAvailableDatesRequest",
  "title" : "GetAvailableDates — Request",
  "status" : "active",
  "date" : "2026-11-06T21:12:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetAvailableDates.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getavailabledates-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailabledates-request",
      "path" : "getavailabledates-request",
      "short" : "GetAvailableDates — Request",
      "definition" : "Logisk modell för requestparametrar i GetAvailableDates."
    },
    {
      "id" : "getavailabledates-request.healthcare-facility",
      "path" : "getavailabledates-request.healthcare_facility",
      "short" : "Hsa-Id för mottagning/vårdenhet",
      "definition" : "Hsa-Id för mottagning/vårdenhet.",
      "comment" : "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getavailabledates-request.bookingId",
      "path" : "getavailabledates-request.bookingId",
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
      "id" : "getavailabledates-request.startDateInclusive",
      "path" : "getavailabledates-request.startDateInclusive",
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
      "id" : "getavailabledates-request.endDateInclusive",
      "path" : "getavailabledates-request.endDateInclusive",
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
      "id" : "getavailabledates-request.performer",
      "path" : "getavailabledates-request.performer",
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
      "id" : "getavailabledates-request.timeTypeName",
      "path" : "getavailabledates-request.timeTypeName",
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
      "id" : "getavailabledates-request.timeTypeID",
      "path" : "getavailabledates-request.timeTypeID",
      "short" : "Identifierare för tidstyp",
      "definition" : "Identifierare för tidstyp",
      "comment" : "TKB-fält: `timeTypeID` (`TimeTypeIDType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.careTypeName",
      "path" : "getavailabledates-request.careTypeName",
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
      "id" : "getavailabledates-request.careTypeID",
      "path" : "getavailabledates-request.careTypeID",
      "short" : "Identitet för vårdtyp",
      "definition" : "Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes.",
      "comment" : "TKB-fält: `careTypeID` (`CareTypeIDType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.subject-of-care",
      "path" : "getavailabledates-request.subject_of_care",
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
