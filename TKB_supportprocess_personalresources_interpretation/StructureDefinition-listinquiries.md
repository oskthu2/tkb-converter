# ListInquiries — Svar - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListInquiries — Svar**

## Logical Model: ListInquiries — Svar 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listinquiries | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:ListInquiries |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-personalresources-interpretation|current/StructureDefinition/StructureDefinition-listinquiries.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listinquiries.csv), [Excel](StructureDefinition-listinquiries.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listinquiries",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listinquiries",
  "version" : "1.0",
  "name" : "ListInquiries",
  "title" : "ListInquiries — Svar",
  "status" : "draft",
  "date" : "2026-11-09T03:53:35+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listinquiries",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listinquiries",
      "path" : "listinquiries",
      "short" : "ListInquiries — Svar",
      "definition" : "Logisk modell för svaret i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesResponseType)."
    },
    {
      "id" : "listinquiries.Inquiries",
      "path" : "listinquiries.Inquiries",
      "short" : "Inquiries",
      "definition" : "Förfrågningar.",
      "comment" : "TKB-fält: `Inquiries` (`Inquiry / (se 6.6.11)`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listinquiries.LastSequenceNumber",
      "path" : "listinquiries.LastSequenceNumber",
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
      "id" : "listinquiries.HasMoreEntries",
      "path" : "listinquiries.HasMoreEntries",
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
