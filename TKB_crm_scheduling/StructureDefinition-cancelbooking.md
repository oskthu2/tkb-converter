# CancelBooking - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelBooking**

## Logical Model: CancelBooking 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/cancelbooking | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:CancelBooking |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CancelBooking (RIV-TA urn:riv:crm:scheduling:CancelBooking:1). Representerar responsens informationsstruktur. Tjänst för att avboka en bokning vid en vårdenhet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-cancelbooking.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cancelbooking.csv), [Excel](StructureDefinition-cancelbooking.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cancelbooking",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/cancelbooking",
  "version" : "1.1",
  "name" : "CancelBooking",
  "title" : "CancelBooking",
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CancelBooking\n(RIV-TA urn:riv:crm:scheduling:CancelBooking:1).\nRepresenterar responsens informationsstruktur.\nTjänst för att avboka en bokning vid en vårdenhet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/cancelbooking",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cancelbooking",
      "path" : "cancelbooking",
      "short" : "CancelBooking",
      "definition" : "Logisk modell för tjänstekontraktet CancelBooking\n(RIV-TA urn:riv:crm:scheduling:CancelBooking:1).\nRepresenterar responsens informationsstruktur.\nTjänst för att avboka en bokning vid en vårdenhet."
    },
    {
      "id" : "cancelbooking.resultCode",
      "path" : "cancelbooking.resultCode",
      "short" : "Status för den gjorda avbokningen",
      "definition" : "ResultCodeEnum: Status för den gjorda avbokningen.\nMöjliga värden: OK, INFO, ERROR.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelbooking.resultText",
      "path" : "cancelbooking.resultText",
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
