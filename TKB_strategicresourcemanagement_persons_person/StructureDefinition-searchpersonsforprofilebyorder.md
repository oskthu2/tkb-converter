# SearchPersonsForProfileByOrder — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchPersonsForProfileByOrder — Response**

## Logical Model: SearchPersonsForProfileByOrder — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorder | *Version*:5.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:SearchPersonsForProfileByOrder |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i SearchPersonsForProfileByOrder (urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderResponder:5, SearchPersonsForProfileByOrderResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-searchpersonsforprofilebyorder.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-searchpersonsforprofilebyorder.csv), [Excel](StructureDefinition-searchpersonsforprofilebyorder.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "searchpersonsforprofilebyorder",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorder",
  "version" : "5.1.0",
  "name" : "SearchPersonsForProfileByOrder",
  "title" : "SearchPersonsForProfileByOrder — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:23:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i SearchPersonsForProfileByOrder\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderResponder:5, SearchPersonsForProfileByOrderResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorder",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "searchpersonsforprofilebyorder",
      "path" : "searchpersonsforprofilebyorder",
      "short" : "SearchPersonsForProfileByOrder — Response",
      "definition" : "Logisk modell för svaret i SearchPersonsForProfileByOrder\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderResponder:5, SearchPersonsForProfileByOrderResponseType)."
    },
    {
      "id" : "searchpersonsforprofilebyorder.orderId",
      "path" : "searchpersonsforprofilebyorder.orderId",
      "short" : "orderId",
      "definition" : "orderId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
