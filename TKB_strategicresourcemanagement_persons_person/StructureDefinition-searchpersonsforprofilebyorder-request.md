# SearchPersonsForProfileByOrder — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchPersonsForProfileByOrder — Request**

## Logical Model: SearchPersonsForProfileByOrder — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorder-request | *Version*:5.0 |
| Active as of 2026-11-09 | *Computable Name*:SearchPersonsForProfileByOrderRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SearchPersonsForProfileByOrder (urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderResponder:5, SearchPersonsForProfileByOrderType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-searchpersonsforprofilebyorder-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-searchpersonsforprofilebyorder-request.csv), [Excel](StructureDefinition-searchpersonsforprofilebyorder-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "searchpersonsforprofilebyorder-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorder-request",
  "version" : "5.0",
  "name" : "SearchPersonsForProfileByOrderRequest",
  "title" : "SearchPersonsForProfileByOrder — Request",
  "status" : "active",
  "date" : "2026-11-09T03:51:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SearchPersonsForProfileByOrder\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderResponder:5, SearchPersonsForProfileByOrderType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorder-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "searchpersonsforprofilebyorder-request",
      "path" : "searchpersonsforprofilebyorder-request",
      "short" : "SearchPersonsForProfileByOrder — Request",
      "definition" : "Logisk modell för begäran i SearchPersonsForProfileByOrder\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderResponder:5, SearchPersonsForProfileByOrderType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "searchpersonsforprofilebyorder-request.query",
      "path" : "searchpersonsforprofilebyorder-request.query",
      "short" : "query",
      "definition" : "Fråga för persondata angivet med syntax enligt element queryLanguage (se Tillämpningsanvisning frågespråk [R7])",
      "comment" : "TKB-fält: `query` (`xs:String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofilebyorder-request.queryLanguage",
      "path" : "searchpersonsforprofilebyorder-request.queryLanguage",
      "short" : "queryLanguage",
      "definition" : "Anger syntax för element query",
      "comment" : "TKB-fält: `queryLanguage` (`xs:String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofilebyorder-request.profile",
      "path" : "searchpersonsforprofilebyorder-request.profile",
      "short" : "profile",
      "definition" : "Profil för returnerat data (se kap 8).",
      "comment" : "TKB-fält: `profile` (`urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType`, kardinalitet 1..1).\n\n**Modellanteckning:** profile Tillåtna värden: P1, P2, P3, P4, P5, P6, P7, P8, P9, P10.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-lookupprofile-vs"
      }
    }]
  }
}

```
