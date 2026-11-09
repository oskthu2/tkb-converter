# UpdateBooking - crm: scheduling v1.1.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdateBooking**

## Logical Model: UpdateBooking 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/updatebooking | *Version*:1.1 |
| Active as of 2026-11-09 | *Computable Name*:UpdateBooking |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet UpdateBooking (RIV-TA urn:riv:crm:scheduling:UpdateBooking:1). Representerar responsens informationsstruktur. Tjänst för att uppdatera en bokning med nytt datum och tid (ombokning). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-updatebooking.json)

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
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/updatebooking",
  "version" : "1.1",
  "name" : "UpdateBooking",
  "title" : "UpdateBooking",
  "status" : "active",
  "date" : "2026-11-09T03:26:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet UpdateBooking\n(RIV-TA urn:riv:crm:scheduling:UpdateBooking:1).\nRepresenterar responsens informationsstruktur.\nTjänst för att uppdatera en bokning med nytt datum och tid (ombokning).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/updatebooking",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updatebooking",
      "path" : "updatebooking",
      "short" : "UpdateBooking",
      "definition" : "Logisk modell för tjänstekontraktet UpdateBooking\n(RIV-TA urn:riv:crm:scheduling:UpdateBooking:1).\nRepresenterar responsens informationsstruktur.\nTjänst för att uppdatera en bokning med nytt datum och tid (ombokning)."
    },
    {
      "id" : "updatebooking.resultCode",
      "path" : "updatebooking.resultCode",
      "short" : "resultCode",
      "definition" : "Status för den gjorda avbokningen.",
      "comment" : "TKB-fält: `resultCode` (`ResultCodeEnum (string)`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/crm-scheduling/ValueSet/result-code-vs"
      }
    },
    {
      "id" : "updatebooking.resultText",
      "path" : "updatebooking.resultText",
      "short" : "resultText",
      "definition" : "Ev. meddelande kopplat till resultatkoden.",
      "comment" : "TKB-fält: `resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
