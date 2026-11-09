# ListBookings — Svar - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListBookings — Svar**

## Logical Model: ListBookings — Svar 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listbookings | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:ListBookings |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i ListBookings (urn:riv:supportprocess:personalresources:interpretation:ListBookingsResponder:1, ListBookingsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-personalresources-interpretation|current/StructureDefinition/StructureDefinition-listbookings.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listbookings.csv), [Excel](StructureDefinition-listbookings.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listbookings",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listbookings",
  "version" : "1.0",
  "name" : "ListBookings",
  "title" : "ListBookings — Svar",
  "status" : "draft",
  "date" : "2026-11-09T03:53:35+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i ListBookings (urn:riv:supportprocess:personalresources:interpretation:ListBookingsResponder:1, ListBookingsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listbookings",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listbookings",
      "path" : "listbookings",
      "short" : "ListBookings — Svar",
      "definition" : "Logisk modell för svaret i ListBookings (urn:riv:supportprocess:personalresources:interpretation:ListBookingsResponder:1, ListBookingsResponseType)."
    },
    {
      "id" : "listbookings.Bookings",
      "path" : "listbookings.Bookings",
      "short" : "Bookings",
      "definition" : "Beställningar.",
      "comment" : "TKB-fält: `Bookings` (`Booking / (se 6.6.2)`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.LastSequenceNumber",
      "path" : "listbookings.LastSequenceNumber",
      "short" : "LastSequenceNumber",
      "definition" : "Nummer på meddelandet.",
      "comment" : "TKB-fält: `LastSequenceNumber` (`MessageSequenceNumber / (se 6.6.13)`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.HasMoreEntries",
      "path" : "listbookings.HasMoreEntries",
      "short" : "HasMoreEntries",
      "definition" : "HasMoreEntries",
      "comment" : "TKB-fält: `HasMoreEntries` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
