# SearchPersonsForProfileUnrestricted — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchPersonsForProfileUnrestricted — Request**

## Logical Model: SearchPersonsForProfileUnrestricted — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofileunrestricted-request | *Version*:5.0 |
| Active as of 2026-10-08 | *Computable Name*:SearchPersonsForProfileUnrestrictedRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SearchPersonsForProfileUnrestricted (urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileUnrestrictedResponder:5, SearchPersonsForProfileUnrestrictedType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-searchpersonsforprofileunrestricted-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-searchpersonsforprofileunrestricted-request.csv), [Excel](StructureDefinition-searchpersonsforprofileunrestricted-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "searchpersonsforprofileunrestricted-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofileunrestricted-request",
  "version" : "5.0",
  "name" : "SearchPersonsForProfileUnrestrictedRequest",
  "title" : "SearchPersonsForProfileUnrestricted — Request",
  "status" : "active",
  "date" : "2026-10-08T18:52:53+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SearchPersonsForProfileUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileUnrestrictedResponder:5, SearchPersonsForProfileUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofileunrestricted-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "searchpersonsforprofileunrestricted-request",
      "path" : "searchpersonsforprofileunrestricted-request",
      "short" : "SearchPersonsForProfileUnrestricted — Request",
      "definition" : "Logisk modell för begäran i SearchPersonsForProfileUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileUnrestrictedResponder:5, SearchPersonsForProfileUnrestrictedType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "searchpersonsforprofileunrestricted-request.logicalAddress",
      "path" : "searchpersonsforprofileunrestricted-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. http://tempuri.org",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofileunrestricted-request.query",
      "path" : "searchpersonsforprofileunrestricted-request.query",
      "short" : "query",
      "definition" : "query",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofileunrestricted-request.queryLanguage",
      "path" : "searchpersonsforprofileunrestricted-request.queryLanguage",
      "short" : "queryLanguage",
      "definition" : "queryLanguage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofileunrestricted-request.profile",
      "path" : "searchpersonsforprofileunrestricted-request.profile",
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
