# SearchPersonsForProfile — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchPersonsForProfile — Request**

## Logical Model: SearchPersonsForProfile — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofile-request | *Version*:5.0 |
| Active as of 2026-11-09 | *Computable Name*:SearchPersonsForProfileRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SearchPersonsForProfile (urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileResponder:5, SearchPersonsForProfileType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-searchpersonsforprofile-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-searchpersonsforprofile-request.csv), [Excel](StructureDefinition-searchpersonsforprofile-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "searchpersonsforprofile-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofile-request",
  "version" : "5.0",
  "name" : "SearchPersonsForProfileRequest",
  "title" : "SearchPersonsForProfile — Request",
  "status" : "active",
  "date" : "2026-11-09T03:51:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SearchPersonsForProfile\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileResponder:5, SearchPersonsForProfileType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofile-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "searchpersonsforprofile-request",
      "path" : "searchpersonsforprofile-request",
      "short" : "SearchPersonsForProfile — Request",
      "definition" : "Logisk modell för begäran i SearchPersonsForProfile\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileResponder:5, SearchPersonsForProfileType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "searchpersonsforprofile-request.query",
      "path" : "searchpersonsforprofile-request.query",
      "short" : "query",
      "definition" : "Fråga för persondata angivet med syntax enligt element queryLanguage (se Tillämpningsanvisning för frågespråk [R7])",
      "comment" : "TKB-fält: `query` (`xs:String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile-request.queryLanguage",
      "path" : "searchpersonsforprofile-request.queryLanguage",
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
      "id" : "searchpersonsforprofile-request.profile",
      "path" : "searchpersonsforprofile-request.profile",
      "short" : "profile",
      "definition" : "Profil för returnerat data (se kap 8)",
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
