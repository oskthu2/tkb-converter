# SearchPersonsForProfileByOrderUnrestricted — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchPersonsForProfileByOrderUnrestricted — Request**

## Logical Model: SearchPersonsForProfileByOrderUnrestricted — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorderunrestricted-request | *Version*:5.0 |
| Active as of 2026-10-08 | *Computable Name*:SearchPersonsForProfileByOrderUnrestrictedRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SearchPersonsForProfileByOrderUnrestricted (urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestrictedResponder:5, SearchPersonsForProfileByOrderUnrestrictedType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-searchpersonsforprofilebyorderunrestricted-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-searchpersonsforprofilebyorderunrestricted-request.csv), [Excel](StructureDefinition-searchpersonsforprofilebyorderunrestricted-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "searchpersonsforprofilebyorderunrestricted-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorderunrestricted-request",
  "version" : "5.0",
  "name" : "SearchPersonsForProfileByOrderUnrestrictedRequest",
  "title" : "SearchPersonsForProfileByOrderUnrestricted — Request",
  "status" : "active",
  "date" : "2026-10-08T18:52:53+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SearchPersonsForProfileByOrderUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestrictedResponder:5, SearchPersonsForProfileByOrderUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofilebyorderunrestricted-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "searchpersonsforprofilebyorderunrestricted-request",
      "path" : "searchpersonsforprofilebyorderunrestricted-request",
      "short" : "SearchPersonsForProfileByOrderUnrestricted — Request",
      "definition" : "Logisk modell för begäran i SearchPersonsForProfileByOrderUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestrictedResponder:5, SearchPersonsForProfileByOrderUnrestrictedType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "searchpersonsforprofilebyorderunrestricted-request.logicalAddress",
      "path" : "searchpersonsforprofilebyorderunrestricted-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. http://tempuri.org",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofilebyorderunrestricted-request.query",
      "path" : "searchpersonsforprofilebyorderunrestricted-request.query",
      "short" : "query",
      "definition" : "query",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofilebyorderunrestricted-request.queryLanguage",
      "path" : "searchpersonsforprofilebyorderunrestricted-request.queryLanguage",
      "short" : "queryLanguage",
      "definition" : "queryLanguage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofilebyorderunrestricted-request.profile",
      "path" : "searchpersonsforprofilebyorderunrestricted-request.profile",
      "short" : "profile",
      "definition" : "profile",
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
