# UpdateBooking — Begäran - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdateBooking — Begäran**

## Logical Model: UpdateBooking — Begäran 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/updatebooking | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:UpdateBooking |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i UpdateBooking (urn:riv:supportprocess:personalresources:interpretation:UpdateBookingResponder:1, UpdateBookingType). Tolkförmedlingen uppdaterar beställningsinformation i Tolkportalen. Svaret beskrivs av InterpretationResult. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-personalresources-interpretation|current/StructureDefinition/StructureDefinition-updatebooking.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updatebooking.csv), [Excel](StructureDefinition-updatebooking.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updatebooking",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/updatebooking",
  "version" : "1.0.0",
  "name" : "UpdateBooking",
  "title" : "UpdateBooking — Begäran",
  "status" : "draft",
  "date" : "2026-09-26T19:47:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i UpdateBooking (urn:riv:supportprocess:personalresources:interpretation:UpdateBookingResponder:1, UpdateBookingType). Tolkförmedlingen uppdaterar beställningsinformation i Tolkportalen. Svaret beskrivs av InterpretationResult.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/updatebooking",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updatebooking",
      "path" : "updatebooking",
      "short" : "UpdateBooking — Begäran",
      "definition" : "Logisk modell för begäran i UpdateBooking (urn:riv:supportprocess:personalresources:interpretation:UpdateBookingResponder:1, UpdateBookingType). Tolkförmedlingen uppdaterar beställningsinformation i Tolkportalen. Svaret beskrivs av InterpretationResult."
    },
    {
      "id" : "updatebooking.bookingUpdate",
      "path" : "updatebooking.bookingUpdate",
      "short" : "Uppdatering av beställning",
      "definition" : "Uppdatering av beställning (BookingUpdate).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatebooking.bookingUpdate.bookingNumber",
      "path" : "updatebooking.bookingUpdate.bookingNumber",
      "short" : "Beställningsnummer",
      "definition" : "Tolkportalens beställningsnummer (≥ 0).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatebooking.bookingUpdate.referenceNumber",
      "path" : "updatebooking.bookingUpdate.referenceNumber",
      "short" : "Referensnummer",
      "definition" : "Tolkförmedlingens referensnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking.bookingUpdate.bookingInformationFromAssociation",
      "path" : "updatebooking.bookingUpdate.bookingInformationFromAssociation",
      "short" : "Information från tolkförmedlingen",
      "definition" : "Information från tolkförmedlingen om tolkningen (BookingInformationFromAssociation).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatebooking.bookingUpdate.bookingInformationFromAssociation.authorizationLevel",
      "path" : "updatebooking.bookingUpdate.bookingInformationFromAssociation.authorizationLevel",
      "short" : "Kompetensnivå",
      "definition" : "Tolkens kompetensnivå enligt KV Kompetensnivå tolk [R4], codeSystem eec2f9b0-03d5-450d-9797-ac0c74f6cfac.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "updatebooking.bookingUpdate.bookingInformationFromAssociation.requestTravelTimeCost",
      "path" : "updatebooking.bookingUpdate.bookingInformationFromAssociation.requestTravelTimeCost",
      "short" : "Begär restidsersättning",
      "definition" : "Anger om tolkförmedlingen efterfrågar restidsersättning för uppdraget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatebooking.bookingUpdate.bookingInformationFromAssociation.interpreterName",
      "path" : "updatebooking.bookingUpdate.bookingInformationFromAssociation.interpreterName",
      "short" : "Tolkens namn",
      "definition" : "Tolkens namn (minst ett tecken).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatebooking.bookingUpdate.bookingInformationFromAssociation.phoneNumberForInterpretation",
      "path" : "updatebooking.bookingUpdate.bookingInformationFromAssociation.phoneNumberForInterpretation",
      "short" : "Telefonnummer för distanstolkning",
      "definition" : "Telefonnummer som distanstolkning ska utföras på.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
