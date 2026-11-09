# UpdateBooking — Begäran - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdateBooking — Begäran**

## Logical Model: UpdateBooking — Begäran 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/updatebooking | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:UpdateBooking |
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
  "version" : "1.0",
  "name" : "UpdateBooking",
  "title" : "UpdateBooking — Begäran",
  "status" : "draft",
  "date" : "2026-11-09T03:53:35+00:00",
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
      "id" : "updatebooking.BookingUpdate",
      "path" : "updatebooking.BookingUpdate",
      "short" : "BookingUpdate",
      "definition" : "Uppdatering av beställning.",
      "comment" : "TKB-fält: `BookingUpdate` (`BookingUpdate / (se 6.6.9)`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
