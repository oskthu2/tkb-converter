# GetBookingDetails - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetBookingDetails**

## Logical Model: GetBookingDetails 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getbookingdetails | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetBookingDetails |
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
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
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
      "short" : "Information om den aktuella tiden (TimeslotType)",
      "definition" : "Information om den aktuella bokade/kallade tiden.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getbookingdetails-purpose-required",
        "severity" : "warning",
        "human" : "purpose ska anges om isInvitation är true (kallelse)",
        "expression" : "isInvitation = true implies purpose.exists()",
        "source" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getbookingdetails"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.startTimeInclusive",
      "path" : "getbookingdetails.timeslotDetail.startTimeInclusive",
      "short" : "Startdatum och klockslag (ÅÅÅÅMMDDttmmss)",
      "definition" : "Startdatum och klockslag. Kan saknas för öppen kallelse.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.endTimeExclusive",
      "path" : "getbookingdetails.timeslotDetail.endTimeExclusive",
      "short" : "Slutdatum och klockslag (ÅÅÅÅMMDDttmmss)",
      "definition" : "Slutdatum och klockslag. Kan saknas för öppen kallelse.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.healthcare-facility",
      "path" : "getbookingdetails.timeslotDetail.healthcare_facility",
      "short" : "HSA-id för mottagning/vårdenhet",
      "definition" : "HSA-id för mottagning/vårdenhet.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.performer",
      "path" : "getbookingdetails.timeslotDetail.performer",
      "short" : "HSA-id för Hos-person",
      "definition" : "HSA-id för Hos-person som besöket är bokat hos.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.bookingId",
      "path" : "getbookingdetails.timeslotDetail.bookingId",
      "short" : "Bokningsidentitet",
      "definition" : "Bokningsidentitet för det bokade besöket.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.subject-of-care",
      "path" : "getbookingdetails.timeslotDetail.subject_of_care",
      "short" : "Personnummer enl. yyyymmddxxxx",
      "definition" : "Personnummer för invånaren.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.purpose",
      "path" : "getbookingdetails.timeslotDetail.purpose",
      "short" : "Beskrivning av besöksorsak angiven av vårdenhet",
      "definition" : "Beskrivning av besöksorsak angiven av vårdenhet.\nVillkorlig: obligatorisk om isInvitation = true (kallelse).\nProducenten kan använda DocBook-format version 5.0.\nKardinalitet: Valfri (villkorlig).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.reason",
      "path" : "getbookingdetails.timeslotDetail.reason",
      "short" : "Kontaktorsak som invånare uppger",
      "definition" : "Kontaktorsak som invånare uppger vid bokning.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.resourceName",
      "path" : "getbookingdetails.timeslotDetail.resourceName",
      "short" : "Namn på resurs",
      "definition" : "Namn på resurs.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.healthcare-facility-name",
      "path" : "getbookingdetails.timeslotDetail.healthcare_facility_name",
      "short" : "Namn på bokad mottagning/vårdenhet",
      "definition" : "Namn på bokad mottagning/vårdenhet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.performerName",
      "path" : "getbookingdetails.timeslotDetail.performerName",
      "short" : "Namn på HoS-person",
      "definition" : "Namn på HoS-person som besöket är bokat hos.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.resourceID",
      "path" : "getbookingdetails.timeslotDetail.resourceID",
      "short" : "Identitet för resurs",
      "definition" : "Identitet för resurs.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.timeTypeName",
      "path" : "getbookingdetails.timeslotDetail.timeTypeName",
      "short" : "Tidstyp för det bokade besöket",
      "definition" : "Tidstyp för det bokade besöket.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.timeTypeID",
      "path" : "getbookingdetails.timeslotDetail.timeTypeID",
      "short" : "Identitet för tidstyp",
      "definition" : "Identitet för tidstyp.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.careTypeName",
      "path" : "getbookingdetails.timeslotDetail.careTypeName",
      "short" : "Klartext för vårdtyp",
      "definition" : "Klartext för vårdtyp.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.careTypeID",
      "path" : "getbookingdetails.timeslotDetail.careTypeID",
      "short" : "Identitet för vårdtyp",
      "definition" : "Identitet för vårdtyp.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.cancel-booking-allowed",
      "path" : "getbookingdetails.timeslotDetail.cancel_booking_allowed",
      "short" : "Om bokningen kan avbokas",
      "definition" : "Sätts av producenten. Anger om bokningen kan avbokas.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.rebooking-allowed",
      "path" : "getbookingdetails.timeslotDetail.rebooking_allowed",
      "short" : "Om bokningen kan ombokas",
      "definition" : "Sätts av producenten. Anger om bokningen kan ombokas.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.message-allowed",
      "path" : "getbookingdetails.timeslotDetail.message_allowed",
      "short" : "Om orsak kan skickas",
      "definition" : "Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getbookingdetails.timeslotDetail.isInvitation",
      "path" : "getbookingdetails.timeslotDetail.isInvitation",
      "short" : "Om bokningen är en kallelse",
      "definition" : "Sätts av producenten. Anger om bokningen skapats på vårdgivarens initiativ (kallelse).\nisInvitation = true innebär kallelse; false eller saknat innebär invånariniterad bokning.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
