# CreateBooking — Begäran - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateBooking — Begäran**

## Logical Model: CreateBooking — Begäran 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/createbooking | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:CreateBooking |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingType). Tolkförmedlingen registrerar en inringd beställning i Tolkportalen. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-personalresources-interpretation|current/StructureDefinition/StructureDefinition-createbooking.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createbooking.csv), [Excel](StructureDefinition-createbooking.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createbooking",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/createbooking",
  "version" : "1.0",
  "name" : "CreateBooking",
  "title" : "CreateBooking — Begäran",
  "status" : "draft",
  "date" : "2026-11-09T03:53:35+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingType). Tolkförmedlingen registrerar en inringd beställning i Tolkportalen.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/createbooking",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createbooking",
      "path" : "createbooking",
      "short" : "CreateBooking — Begäran",
      "definition" : "Logisk modell för begäran i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingType). Tolkförmedlingen registrerar en inringd beställning i Tolkportalen."
    },
    {
      "id" : "createbooking.BookingCreate",
      "path" : "createbooking.BookingCreate",
      "short" : "BookingCreate",
      "definition" : "Beställning som ska skapas.",
      "comment" : "TKB-fält: `BookingCreate` (`BookingCreate / (se 6.6.4)`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
