# CreateBooking — Svar - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateBooking — Svar**

## Logical Model: CreateBooking — Svar 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/createbooking-response | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:CreateBookingResponse |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-personalresources-interpretation|current/StructureDefinition/StructureDefinition-createbooking-response.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createbooking-response.csv), [Excel](StructureDefinition-createbooking-response.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createbooking-response",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/createbooking-response",
  "version" : "1.0.0",
  "name" : "CreateBookingResponse",
  "title" : "CreateBooking — Svar",
  "status" : "draft",
  "date" : "2026-09-26T19:47:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/createbooking-response",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createbooking-response",
      "path" : "createbooking-response",
      "short" : "CreateBooking — Svar",
      "definition" : "Logisk modell för svaret i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingResponseType)."
    },
    {
      "id" : "createbooking-response.referenceNumberMap",
      "path" : "createbooking-response.referenceNumberMap",
      "short" : "Referensnummermappning",
      "definition" : "Mappning mellan Tolkportalens beställningsnummer och tolkförmedlingens referensnummer (ReferenceNumberMapping).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createbooking-response.referenceNumberMap.bookingNumber",
      "path" : "createbooking-response.referenceNumberMap.bookingNumber",
      "short" : "Beställningsnummer",
      "definition" : "Tolkportalens beställningsnummer (≥ 0).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "createbooking-response.referenceNumberMap.referenceNumber",
      "path" : "createbooking-response.referenceNumberMap.referenceNumber",
      "short" : "Referensnummer",
      "definition" : "Tolkförmedlingens referensnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking-response.result",
      "path" : "createbooking-response.result",
      "short" : "Resultat",
      "definition" : "Information om anropets resultat (ResultType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/interpretation-result"
      }]
    }]
  }
}

```
