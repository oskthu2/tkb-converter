# CancelBooking — Request - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelBooking — Request**

## Logical Model: CancelBooking — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/cancelbooking-request | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:CancelBookingRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CancelBooking. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-cancelbooking-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cancelbooking-request.csv), [Excel](StructureDefinition-cancelbooking-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cancelbooking-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/cancelbooking-request",
  "version" : "1.1",
  "name" : "CancelBookingRequest",
  "title" : "CancelBooking — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CancelBooking.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/cancelbooking-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cancelbooking-request",
      "path" : "cancelbooking-request",
      "short" : "CancelBooking — Request",
      "definition" : "Logisk modell för requestparametrar i CancelBooking."
    },
    {
      "id" : "cancelbooking-request.healthcare-facility",
      "path" : "cancelbooking-request.healthcare_facility",
      "short" : "HSA-id för mottagning/vårdenhet",
      "definition" : "HSA-id för mottagning/vårdenhet.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "cancelbooking-request.bookingId",
      "path" : "cancelbooking-request.bookingId",
      "short" : "Intern bokningsidentitet",
      "definition" : "Intern bokningsidentitet för bokningen som ska avbokas.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelbooking-request.message",
      "path" : "cancelbooking-request.message",
      "short" : "Invånarens beskrivning av orsak för avbokning",
      "definition" : "Invånarens beskrivning av orsak för avbokning.\nFältet kan bara skickas om värdet på message_allowed är 'true' i svaret från GetBookingDetails.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
