# UpdateBooking — Request - crm: scheduling v1.1.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdateBooking — Request**

## Logical Model: UpdateBooking — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/updatebooking-request | *Version*:1.1 |
| Active as of 2026-11-06 | *Computable Name*:UpdateBookingRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i UpdateBooking. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-updatebooking-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updatebooking-request.csv), [Excel](StructureDefinition-updatebooking-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updatebooking-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/updatebooking-request",
  "version" : "1.1",
  "name" : "UpdateBookingRequest",
  "title" : "UpdateBooking — Request",
  "status" : "active",
  "date" : "2026-11-06T21:12:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i UpdateBooking.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/updatebooking-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updatebooking-request",
      "path" : "updatebooking-request",
      "short" : "UpdateBooking — Request",
      "definition" : "Logisk modell för requestparametrar i UpdateBooking."
    },
    {
      "id" : "updatebooking-request.requestedTimeslot",
      "path" : "updatebooking-request.requestedTimeslot",
      "short" : "Ny tidsinformation (TimeslotType)",
      "definition" : "Ny tidsinformation för ombokningen.\nKardinalitet: Obligatorisk.",
      "comment" : "TKB-fält: `requestedTimeslot` (`TimeslotType`, kardinalitet 1..1).\n\n**Modellanteckning:** Ny tidsinformation för ombokningen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.startTimeInclusive",
      "path" : "updatebooking-request.requestedTimeslot.startTimeInclusive",
      "short" : "Startdatum och klockslag (ÅÅÅÅMMDDttmmss)",
      "definition" : "Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss.",
      "comment" : "TKB-fält: `startTimeInclusive` (`TS (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.endTimeExclusive",
      "path" : "updatebooking-request.requestedTimeslot.endTimeExclusive",
      "short" : "Slutdatum och klockslag (ÅÅÅÅMMDDttmmss)",
      "definition" : "Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss.",
      "comment" : "TKB-fält: `endTimeExclusive` (`TS (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.healthcare-facility",
      "path" : "updatebooking-request.requestedTimeslot.healthcare_facility",
      "short" : "HSA-id för mottagning/vårdenhet",
      "definition" : "HSA-id för mottagning/vårdenhet.",
      "comment" : "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.performer",
      "path" : "updatebooking-request.requestedTimeslot.performer",
      "short" : "HSA-id för HoS-person",
      "definition" : "HSA-id för Hos-person som besöket är bokat hos.",
      "comment" : "TKB-fält: `performer` (`HsaIdType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.bookingId",
      "path" : "updatebooking-request.requestedTimeslot.bookingId",
      "short" : "Bokningsidentitet för bokning att omboka",
      "definition" : "Bokningsidentitet för det bokade besöket.",
      "comment" : "TKB-fält: `bookingId` (`BookingIdType (string)`, kardinalitet 1..1).\n\n**Modellanteckning:** Bokningsidentitet för bokningen som ska ombokas. Måste avse en tidssatt bokning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.subject-of-care",
      "path" : "updatebooking-request.requestedTimeslot.subject_of_care",
      "short" : "Personnummer enl. yyyymmddxxxx",
      "definition" : "Personnummer enl. yyyymmddxxxx.",
      "comment" : "TKB-fält: `subject_of_care` (`SubjectOfCareIdType (string)`, kardinalitet 1..1).\n\n**Modellanteckning:** Personnummer för invånaren.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.purpose",
      "path" : "updatebooking-request.requestedTimeslot.purpose",
      "short" : "Besöksorsak",
      "definition" : "Beskrivning av besöksorsak angiven av vårdenhet.",
      "comment" : "TKB-fält: `purpose` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.reason",
      "path" : "updatebooking-request.requestedTimeslot.reason",
      "short" : "Kontaktorsak",
      "definition" : "Kontaktorsak som invånare uppger vid bokning.",
      "comment" : "TKB-fält: `reason` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.resourceName",
      "path" : "updatebooking-request.requestedTimeslot.resourceName",
      "short" : "Namn på resurs",
      "definition" : "Namn på resurs.",
      "comment" : "TKB-fält: `resourceName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.healthcare-facility-name",
      "path" : "updatebooking-request.requestedTimeslot.healthcare_facility_name",
      "short" : "Namn på mottagning",
      "definition" : "Namn på bokad mottagning/vårdenhet.",
      "comment" : "TKB-fält: `healthcare_facility_name` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.performerName",
      "path" : "updatebooking-request.requestedTimeslot.performerName",
      "short" : "Namn på HoS-person",
      "definition" : "Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn.",
      "comment" : "TKB-fält: `performerName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.resourceID",
      "path" : "updatebooking-request.requestedTimeslot.resourceID",
      "short" : "Identitet för resurs",
      "definition" : "Identitet för resurs.",
      "comment" : "TKB-fält: `resourceID` (`ResourceIDType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.timeTypeName",
      "path" : "updatebooking-request.requestedTimeslot.timeTypeName",
      "short" : "Tidstyp",
      "definition" : "Tidstyp för det bokade besöket.",
      "comment" : "TKB-fält: `timeTypeName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.timeTypeID",
      "path" : "updatebooking-request.requestedTimeslot.timeTypeID",
      "short" : "Identitet för tidstyp",
      "definition" : "Identitet för tidstyp.",
      "comment" : "TKB-fält: `timeTypeID` (`TimeTypeIDType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.careTypeName",
      "path" : "updatebooking-request.requestedTimeslot.careTypeName",
      "short" : "Klartext för vårdtyp",
      "definition" : "Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes.",
      "comment" : "TKB-fält: `careTypeName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.careTypeID",
      "path" : "updatebooking-request.requestedTimeslot.careTypeID",
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
      "id" : "updatebooking-request.subject-of-care-info",
      "path" : "updatebooking-request.subject_of_care_info",
      "short" : "Invånarinformation (SubjectOfCareType)",
      "definition" : "Invånarens kontaktinformation. Valfri vid ombokning.\nKardinalitet: Valfri.",
      "comment" : "TKB-fält: `subject_of_care_info` (`SubjectOfCareType`, kardinalitet 0..1).\n\n**Modellanteckning:** Invånarens kontaktinformation. Valfri vid ombokning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatebooking-request.subject-of-care-info.phone",
      "path" : "updatebooking-request.subject_of_care_info.phone",
      "short" : "Telefonnummer",
      "definition" : "Telefonnummer.",
      "comment" : "TKB-fält: `phone` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.subject-of-care-info.email",
      "path" : "updatebooking-request.subject_of_care_info.email",
      "short" : "Email-adress",
      "definition" : "Email-adress.",
      "comment" : "TKB-fält: `email` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.subject-of-care-info.address",
      "path" : "updatebooking-request.subject_of_care_info.address",
      "short" : "Adress",
      "definition" : "Adress.",
      "comment" : "TKB-fält: `address` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.subject-of-care-info.coaddress",
      "path" : "updatebooking-request.subject_of_care_info.coaddress",
      "short" : "Co-adress",
      "definition" : "Co-adress.",
      "comment" : "TKB-fält: `coaddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.subject-of-care-info.firstName",
      "path" : "updatebooking-request.subject_of_care_info.firstName",
      "short" : "Invånarens förnamn",
      "definition" : "Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket).",
      "comment" : "TKB-fält: `firstName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.subject-of-care-info.middleName",
      "path" : "updatebooking-request.subject_of_care_info.middleName",
      "short" : "Invånarens mellannamn",
      "definition" : "Invånarens mellannamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket).",
      "comment" : "TKB-fält: `middleName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.subject-of-care-info.lastName",
      "path" : "updatebooking-request.subject_of_care_info.lastName",
      "short" : "Invånarens efternamn",
      "definition" : "Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket).",
      "comment" : "TKB-fält: `lastName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.notification",
      "path" : "updatebooking-request.notification",
      "short" : "Avisering",
      "definition" : "Avisering",
      "comment" : "TKB-fält: `notification` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
