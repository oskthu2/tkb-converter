# GetSubjectOfCareSchedule - crm: scheduling v1.1.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetSubjectOfCareSchedule**

## Logical Model: GetSubjectOfCareSchedule 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getsubjectofcareschedule | *Version*:1.1 |
| Active as of 2026-11-09 | *Computable Name*:GetSubjectOfCareSchedule |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetSubjectOfCareSchedule (RIV-TA urn:riv:crm:scheduling:GetSubjectOfCareSchedule:1). Representerar responsens informationsstruktur. Tjänsten hämtar alla bokade tider för en invånare. Öppna kallelser ingår inte i svaret. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getsubjectofcareschedule.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getsubjectofcareschedule.csv), [Excel](StructureDefinition-getsubjectofcareschedule.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getsubjectofcareschedule",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getsubjectofcareschedule",
  "version" : "1.1",
  "name" : "GetSubjectOfCareSchedule",
  "title" : "GetSubjectOfCareSchedule",
  "status" : "active",
  "date" : "2026-11-09T03:26:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetSubjectOfCareSchedule\n(RIV-TA urn:riv:crm:scheduling:GetSubjectOfCareSchedule:1).\nRepresenterar responsens informationsstruktur.\nTjänsten hämtar alla bokade tider för en invånare.\nÖppna kallelser ingår inte i svaret.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getsubjectofcareschedule",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getsubjectofcareschedule",
      "path" : "getsubjectofcareschedule",
      "short" : "GetSubjectOfCareSchedule",
      "definition" : "Logisk modell för tjänstekontraktet GetSubjectOfCareSchedule\n(RIV-TA urn:riv:crm:scheduling:GetSubjectOfCareSchedule:1).\nRepresenterar responsens informationsstruktur.\nTjänsten hämtar alla bokade tider för en invånare.\nÖppna kallelser ingår inte i svaret."
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail",
      "path" : "getsubjectofcareschedule.timeslotDetail",
      "short" : "TimeslotType",
      "definition" : "timeslotDetail",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.startTimeInclusive",
      "path" : "getsubjectofcareschedule.timeslotDetail.startTimeInclusive",
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
      "id" : "getsubjectofcareschedule.timeslotDetail.endTimeExclusive",
      "path" : "getsubjectofcareschedule.timeslotDetail.endTimeExclusive",
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
      "id" : "getsubjectofcareschedule.timeslotDetail.healthcare-facility",
      "path" : "getsubjectofcareschedule.timeslotDetail.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.performer",
      "path" : "getsubjectofcareschedule.timeslotDetail.performer",
      "short" : "performer",
      "definition" : "performer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.bookingId",
      "path" : "getsubjectofcareschedule.timeslotDetail.bookingId",
      "short" : "bookingId",
      "definition" : "bookingId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.subject-of-care",
      "path" : "getsubjectofcareschedule.timeslotDetail.subject_of_care",
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
      "id" : "getsubjectofcareschedule.timeslotDetail.purpose",
      "path" : "getsubjectofcareschedule.timeslotDetail.purpose",
      "short" : "purpose",
      "definition" : "purpose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.reason",
      "path" : "getsubjectofcareschedule.timeslotDetail.reason",
      "short" : "reason",
      "definition" : "reason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.resourceName",
      "path" : "getsubjectofcareschedule.timeslotDetail.resourceName",
      "short" : "resourceName",
      "definition" : "resourceName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.healthcare-facility-name",
      "path" : "getsubjectofcareschedule.timeslotDetail.healthcare_facility_name",
      "short" : "healthcare_facility_name",
      "definition" : "healthcare_facility_name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.performerName",
      "path" : "getsubjectofcareschedule.timeslotDetail.performerName",
      "short" : "performerName",
      "definition" : "performerName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.resourceID",
      "path" : "getsubjectofcareschedule.timeslotDetail.resourceID",
      "short" : "resourceID",
      "definition" : "resourceID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.timeTypeName",
      "path" : "getsubjectofcareschedule.timeslotDetail.timeTypeName",
      "short" : "timeTypeName",
      "definition" : "timeTypeName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.timeTypeID",
      "path" : "getsubjectofcareschedule.timeslotDetail.timeTypeID",
      "short" : "timeTypeID",
      "definition" : "timeTypeID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.careTypeName",
      "path" : "getsubjectofcareschedule.timeslotDetail.careTypeName",
      "short" : "careTypeName",
      "definition" : "careTypeName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.careTypeID",
      "path" : "getsubjectofcareschedule.timeslotDetail.careTypeID",
      "short" : "careTypeID",
      "definition" : "careTypeID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.cancel-booking-allowed",
      "path" : "getsubjectofcareschedule.timeslotDetail.cancel_booking_allowed",
      "short" : "cancel_booking_allowed",
      "definition" : "cancel_booking_allowed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.rebooking-allowed",
      "path" : "getsubjectofcareschedule.timeslotDetail.rebooking_allowed",
      "short" : "rebooking_allowed",
      "definition" : "rebooking_allowed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.message-allowed",
      "path" : "getsubjectofcareschedule.timeslotDetail.message_allowed",
      "short" : "message_allowed",
      "definition" : "message_allowed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.isInvitation",
      "path" : "getsubjectofcareschedule.timeslotDetail.isInvitation",
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
