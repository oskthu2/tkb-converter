# ListInquiries — Begäran - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListInquiries — Begäran**

## Logical Model: ListInquiries — Begäran 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listinquiries-request | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:ListInquiriesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-personalresources-interpretation|current/StructureDefinition/StructureDefinition-listinquiries-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listinquiries-request.csv), [Excel](StructureDefinition-listinquiries-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listinquiries-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listinquiries-request",
  "version" : "1.0.0",
  "name" : "ListInquiriesRequest",
  "title" : "ListInquiries — Begäran",
  "status" : "draft",
  "date" : "2026-09-26T19:47:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listinquiries-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listinquiries-request",
      "path" : "listinquiries-request",
      "short" : "ListInquiries — Begäran",
      "definition" : "Logisk modell för begäran i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesType)."
    },
    {
      "id" : "listinquiries-request.lastSequenceNumber",
      "path" : "listinquiries-request.lastSequenceNumber",
      "short" : "Senaste meddelandenummer",
      "definition" : "Referens till det senaste mottagna meddelandet, så att bara nya poster hämtas. XSD-typen är unsignedLong; FHIR saknar motsvarande typ.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "unsignedInt"
      }]
    }]
  }
}

```
