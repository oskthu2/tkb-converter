# SearchPersonsForProfileByOrderUnrestricted — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchPersonsForProfileByOrderUnrestricted — Response**

## Logical Model: SearchPersonsForProfileByOrderUnrestricted — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorderunrestricted | *Version*:5.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:SearchPersonsForProfileByOrderUnrestricted |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i SearchPersonsForProfileByOrderUnrestricted (urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestrictedResponder:5, SearchPersonsForProfileByOrderUnrestrictedResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-searchpersonsforprofilebyorderunrestricted.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-searchpersonsforprofilebyorderunrestricted.csv), [Excel](StructureDefinition-searchpersonsforprofilebyorderunrestricted.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "searchpersonsforprofilebyorderunrestricted",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorderunrestricted",
  "version" : "5.1.0",
  "name" : "SearchPersonsForProfileByOrderUnrestricted",
  "title" : "SearchPersonsForProfileByOrderUnrestricted — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:23:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i SearchPersonsForProfileByOrderUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestrictedResponder:5, SearchPersonsForProfileByOrderUnrestrictedResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorderunrestricted",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "searchpersonsforprofilebyorderunrestricted",
      "path" : "searchpersonsforprofilebyorderunrestricted",
      "short" : "SearchPersonsForProfileByOrderUnrestricted — Response",
      "definition" : "Logisk modell för svaret i SearchPersonsForProfileByOrderUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestrictedResponder:5, SearchPersonsForProfileByOrderUnrestrictedResponseType)."
    },
    {
      "id" : "searchpersonsforprofilebyorderunrestricted.orderId",
      "path" : "searchpersonsforprofilebyorderunrestricted.orderId",
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
