# MakeBooking - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MakeBooking**

## Logical Model: MakeBooking 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/makebooking | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:MakeBooking |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet MakeBooking (RIV-TA urn:riv:crm:scheduling:MakeBooking:1). Representerar responsens informationsstruktur. Tjänst för nybokning vid en vårdenhet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-makebooking.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-makebooking.csv), [Excel](StructureDefinition-makebooking.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "makebooking",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/makebooking",
  "version" : "1.1",
  "name" : "MakeBooking",
  "title" : "MakeBooking",
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet MakeBooking\n(RIV-TA urn:riv:crm:scheduling:MakeBooking:1).\nRepresenterar responsens informationsstruktur.\nTjänst för nybokning vid en vårdenhet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/makebooking",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "makebooking",
      "path" : "makebooking",
      "short" : "MakeBooking",
      "definition" : "Logisk modell för tjänstekontraktet MakeBooking\n(RIV-TA urn:riv:crm:scheduling:MakeBooking:1).\nRepresenterar responsens informationsstruktur.\nTjänst för nybokning vid en vårdenhet."
    },
    {
      "id" : "makebooking.bookingId",
      "path" : "makebooking.bookingId",
      "short" : "Id för skapad bokning",
      "definition" : "Id för skapad bokning. Ska anges vid genomförd bokning (resultCode OK eller INFO), annars inte (ERROR).\nKardinalitet: Valfri (villkorlig).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makebooking.resultCode",
      "path" : "makebooking.resultCode",
      "short" : "Status för den gjorda bokningen",
      "definition" : "ResultCodeEnum: Status för den gjorda bokningen.\nMöjliga värden: OK, INFO, ERROR.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makebooking.resultText",
      "path" : "makebooking.resultText",
      "short" : "Ev. meddelande kopplat till resultatkoden",
      "definition" : "Fritext meddelande kopplat till resultatkoden.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
