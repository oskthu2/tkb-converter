# GetSubjectOfCareSchedule - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetSubjectOfCareSchedule**

## Logical Model: GetSubjectOfCareSchedule 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getsubjectofcareschedule | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetSubjectOfCareSchedule |
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
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
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
      "short" : "Lista med användarens tider (TimeslotType)",
      "definition" : "Lista med invånarens bokade tider för angiven vårdenhet. Öppna kallelser ingår inte.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.startTimeInclusive",
      "path" : "getsubjectofcareschedule.timeslotDetail.startTimeInclusive",
      "short" : "Startdatum och klockslag (ÅÅÅÅMMDDttmmss)",
      "definition" : "Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.endTimeExclusive",
      "path" : "getsubjectofcareschedule.timeslotDetail.endTimeExclusive",
      "short" : "Slutdatum och klockslag (ÅÅÅÅMMDDttmmss)",
      "definition" : "Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.healthcare-facility",
      "path" : "getsubjectofcareschedule.timeslotDetail.healthcare_facility",
      "short" : "HSA-id för mottagning/vårdenhet",
      "definition" : "HSA-id för mottagning/vårdenhet.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.performer",
      "path" : "getsubjectofcareschedule.timeslotDetail.performer",
      "short" : "HSA-id för Hos-person",
      "definition" : "HSA-id för Hos-person som besöket är bokat hos.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.bookingId",
      "path" : "getsubjectofcareschedule.timeslotDetail.bookingId",
      "short" : "Bokningsidentitet",
      "definition" : "Bokningsidentitet för det bokade besöket.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.subject-of-care",
      "path" : "getsubjectofcareschedule.timeslotDetail.subject_of_care",
      "short" : "Personnummer enl. yyyymmddxxxx",
      "definition" : "Personnummer för invånaren.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.purpose",
      "path" : "getsubjectofcareschedule.timeslotDetail.purpose",
      "short" : "Beskrivning av besöksorsak angiven av vårdenhet",
      "definition" : "Beskrivning av besöksorsak angiven av vårdenhet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.reason",
      "path" : "getsubjectofcareschedule.timeslotDetail.reason",
      "short" : "Kontaktorsak som invånare uppger",
      "definition" : "Kontaktorsak som invånare uppger vid bokning.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.resourceName",
      "path" : "getsubjectofcareschedule.timeslotDetail.resourceName",
      "short" : "Namn på resurs",
      "definition" : "Namn på resurs.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.healthcare-facility-name",
      "path" : "getsubjectofcareschedule.timeslotDetail.healthcare_facility_name",
      "short" : "Namn på bokad mottagning/vårdenhet",
      "definition" : "Namn på bokad mottagning/vårdenhet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.performerName",
      "path" : "getsubjectofcareschedule.timeslotDetail.performerName",
      "short" : "Namn på HoS-person",
      "definition" : "Namn på HoS-person som besöket är bokat hos.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.resourceID",
      "path" : "getsubjectofcareschedule.timeslotDetail.resourceID",
      "short" : "Identitet för resurs",
      "definition" : "Identitet för resurs.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.timeTypeName",
      "path" : "getsubjectofcareschedule.timeslotDetail.timeTypeName",
      "short" : "Tidstyp",
      "definition" : "Tidstyp för det bokade besöket.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.timeTypeID",
      "path" : "getsubjectofcareschedule.timeslotDetail.timeTypeID",
      "short" : "Identitet för tidstyp",
      "definition" : "Identitet för tidstyp.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.careTypeName",
      "path" : "getsubjectofcareschedule.timeslotDetail.careTypeName",
      "short" : "Klartext för vårdtyp",
      "definition" : "Klartext för vårdtyp.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.careTypeID",
      "path" : "getsubjectofcareschedule.timeslotDetail.careTypeID",
      "short" : "Identitet för vårdtyp",
      "definition" : "Identitet för vårdtyp.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.cancel-booking-allowed",
      "path" : "getsubjectofcareschedule.timeslotDetail.cancel_booking_allowed",
      "short" : "Om bokningen kan avbokas",
      "definition" : "Sätts av producenten. Anger om bokningen kan avbokas.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.rebooking-allowed",
      "path" : "getsubjectofcareschedule.timeslotDetail.rebooking_allowed",
      "short" : "Om bokningen kan ombokas",
      "definition" : "Sätts av producenten. Anger om bokningen kan ombokas.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.message-allowed",
      "path" : "getsubjectofcareschedule.timeslotDetail.message_allowed",
      "short" : "Om orsak kan skickas",
      "definition" : "Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getsubjectofcareschedule.timeslotDetail.isInvitation",
      "path" : "getsubjectofcareschedule.timeslotDetail.isInvitation",
      "short" : "Om bokningen är en kallelse",
      "definition" : "Sätts av producenten. Anger om bokningen skapats på vårdgivarens initiativ.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
