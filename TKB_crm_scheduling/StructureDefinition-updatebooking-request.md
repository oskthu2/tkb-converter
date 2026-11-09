# UpdateBooking — Request - crm: scheduling v1.1.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdateBooking — Request**

## Logical Model: UpdateBooking — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/updatebooking-request | *Version*:1.1 |
| Active as of 2026-11-09 | *Computable Name*:UpdateBookingRequest |
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
  "date" : "2026-11-09T03:26:43+00:00",
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
      "short" : "TimeslotType",
      "definition" : "requestedTimeslot",
      "comment" : "TKB-fält: `requestedTimeslot` (`TimeslotType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.startTimeInclusive",
      "path" : "updatebooking-request.requestedTimeslot.startTimeInclusive",
      "short" : "startTimeInclusive",
      "definition" : "Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss.",
      "comment" : "TKB-fält: `startTimeInclusive` (`TS (string)`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.endTimeExclusive",
      "path" : "updatebooking-request.requestedTimeslot.endTimeExclusive",
      "short" : "endTimeExclusive",
      "definition" : "Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss.",
      "comment" : "TKB-fält: `endTimeExclusive` (`TS (string)`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.healthcare-facility",
      "path" : "updatebooking-request.requestedTimeslot.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "HSA-id för mottagning/vårdenhet.",
      "comment" : "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.performer",
      "path" : "updatebooking-request.requestedTimeslot.performer",
      "short" : "performer",
      "definition" : "HSA-id för Hos-person som besöket är bokat hos.",
      "comment" : "TKB-fält: `performer` (`HsaIdType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.bookingId",
      "path" : "updatebooking-request.requestedTimeslot.bookingId",
      "short" : "bookingId",
      "definition" : "Bokningsidentitet för det bokade besöket.",
      "comment" : "TKB-fält: `bookingId` (`BookingIdType (string)`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.subject-of-care",
      "path" : "updatebooking-request.requestedTimeslot.subject_of_care",
      "short" : "subject_of_care",
      "definition" : "Personnummer enl. yyyymmddxxxx.",
      "comment" : "TKB-fält: `subject_of_care` (`SubjectOfCareIdType (string)`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/SubjectOfCareIdType"]
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.purpose",
      "path" : "updatebooking-request.requestedTimeslot.purpose",
      "short" : "purpose",
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
      "short" : "reason",
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
      "short" : "resourceName",
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
      "short" : "healthcare_facility_name",
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
      "short" : "performerName",
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
      "short" : "resourceID",
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
      "short" : "timeTypeName",
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
      "short" : "timeTypeID",
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
      "short" : "careTypeName",
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
      "short" : "careTypeID",
      "definition" : "Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes.",
      "comment" : "TKB-fält: `careTypeID` (`CareTypeIDType (string)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.cancel-booking-allowed",
      "path" : "updatebooking-request.requestedTimeslot.cancel_booking_allowed",
      "short" : "cancel_booking_allowed",
      "definition" : "cancel_booking_allowed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.rebooking-allowed",
      "path" : "updatebooking-request.requestedTimeslot.rebooking_allowed",
      "short" : "rebooking_allowed",
      "definition" : "rebooking_allowed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.message-allowed",
      "path" : "updatebooking-request.requestedTimeslot.message_allowed",
      "short" : "message_allowed",
      "definition" : "message_allowed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatebooking-request.requestedTimeslot.isInvitation",
      "path" : "updatebooking-request.requestedTimeslot.isInvitation",
      "short" : "isInvitation",
      "definition" : "isInvitation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatebooking-request.subject-of-care-info",
      "path" : "updatebooking-request.subject_of_care_info",
      "short" : "SubjectOfCareType",
      "definition" : "subject_of_care_info",
      "comment" : "TKB-fält: `subject_of_care_info` (`SubjectOfCareType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatebooking-request.subject-of-care-info.phone",
      "path" : "updatebooking-request.subject_of_care_info.phone",
      "short" : "phone",
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
      "short" : "email",
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
      "short" : "address",
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
      "short" : "coaddress",
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
      "short" : "firstName",
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
      "short" : "middleName",
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
      "short" : "lastName",
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
      "short" : "notification",
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
