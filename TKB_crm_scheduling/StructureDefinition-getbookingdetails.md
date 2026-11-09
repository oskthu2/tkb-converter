# GetBookingDetails - crm: scheduling v1.1.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetBookingDetails**

## Logical Model: GetBookingDetails 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getbookingdetails | *Version*:1.1 |
| Active as of 2026-11-09 | *Computable Name*:GetBookingDetails |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetBookingDetails (RIV-TA urn:riv:crm:scheduling:GetBookingDetails:1). Representerar responsens informationsstruktur. Tjänsten hämtar detaljinformation för en befintlig bokning vid en vårdenhet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getbookingdetails.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getbookingdetails.csv), [Excel](StructureDefinition-getbookingdetails.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getbookingdetails",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getbookingdetails",
  "version" : "1.1",
  "name" : "GetBookingDetails",
  "title" : "GetBookingDetails",
  "status" : "active",
  "date" : "2026-11-09T03:26:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetBookingDetails\n(RIV-TA urn:riv:crm:scheduling:GetBookingDetails:1).\nRepresenterar responsens informationsstruktur.\nTjänsten hämtar detaljinformation för en befintlig bokning vid en vårdenhet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getbookingdetails",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getbookingdetails",
      "path" : "getbookingdetails",
      "short" : "GetBookingDetails",
      "definition" : "Logisk modell för tjänstekontraktet GetBookingDetails\n(RIV-TA urn:riv:crm:scheduling:GetBookingDetails:1).\nRepresenterar responsens informationsstruktur.\nTjänsten hämtar detaljinformation för en befintlig bokning vid en vårdenhet."
    },
    {
      "id" : "getbookingdetails.timeslotDetail",
      "path" : "getbookingdetails.timeslotDetail",
      "short" : "TimeslotType",
      "definition" : "timeslotDetail",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getbookingdetails-purpose-required",
        "severity" : "error",
        "human" : "purpose ska anges om isInvitation är true (kallelse)",
        "expression" : "isInvitation = true implies purpose.exists()",
        "source" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getbookingdetails"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.startTimeInclusive",
      "path" : "getbookingdetails.timeslotDetail.startTimeInclusive",
      "short" : "startTimeInclusive",
      "definition" : "startTimeInclusive",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.endTimeExclusive",
      "path" : "getbookingdetails.timeslotDetail.endTimeExclusive",
      "short" : "endTimeExclusive",
      "definition" : "endTimeExclusive",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.healthcare-facility",
      "path" : "getbookingdetails.timeslotDetail.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.performer",
      "path" : "getbookingdetails.timeslotDetail.performer",
      "short" : "performer",
      "definition" : "performer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.bookingId",
      "path" : "getbookingdetails.timeslotDetail.bookingId",
      "short" : "bookingId",
      "definition" : "bookingId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.subject-of-care",
      "path" : "getbookingdetails.timeslotDetail.subject_of_care",
      "short" : "subject_of_care",
      "definition" : "subject_of_care",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/SubjectOfCareIdType"]
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.purpose",
      "path" : "getbookingdetails.timeslotDetail.purpose",
      "short" : "purpose",
      "definition" : "purpose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.reason",
      "path" : "getbookingdetails.timeslotDetail.reason",
      "short" : "reason",
      "definition" : "reason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.resourceName",
      "path" : "getbookingdetails.timeslotDetail.resourceName",
      "short" : "resourceName",
      "definition" : "resourceName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.healthcare-facility-name",
      "path" : "getbookingdetails.timeslotDetail.healthcare_facility_name",
      "short" : "healthcare_facility_name",
      "definition" : "healthcare_facility_name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.performerName",
      "path" : "getbookingdetails.timeslotDetail.performerName",
      "short" : "performerName",
      "definition" : "performerName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.resourceID",
      "path" : "getbookingdetails.timeslotDetail.resourceID",
      "short" : "resourceID",
      "definition" : "resourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.timeTypeName",
      "path" : "getbookingdetails.timeslotDetail.timeTypeName",
      "short" : "timeTypeName",
      "definition" : "timeTypeName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.timeTypeID",
      "path" : "getbookingdetails.timeslotDetail.timeTypeID",
      "short" : "timeTypeID",
      "definition" : "timeTypeID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.careTypeName",
      "path" : "getbookingdetails.timeslotDetail.careTypeName",
      "short" : "careTypeName",
      "definition" : "careTypeName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.careTypeID",
      "path" : "getbookingdetails.timeslotDetail.careTypeID",
      "short" : "careTypeID",
      "definition" : "careTypeID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.cancel-booking-allowed",
      "path" : "getbookingdetails.timeslotDetail.cancel_booking_allowed",
      "short" : "cancel_booking_allowed",
      "definition" : "cancel_booking_allowed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.rebooking-allowed",
      "path" : "getbookingdetails.timeslotDetail.rebooking_allowed",
      "short" : "rebooking_allowed",
      "definition" : "rebooking_allowed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.message-allowed",
      "path" : "getbookingdetails.timeslotDetail.message_allowed",
      "short" : "message_allowed",
      "definition" : "message_allowed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.isInvitation",
      "path" : "getbookingdetails.timeslotDetail.isInvitation",
      "short" : "isInvitation",
      "definition" : "isInvitation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
