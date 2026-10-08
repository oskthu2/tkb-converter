# GetPersonsForProfileUnrestricted — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPersonsForProfileUnrestricted — Request**

## Logical Model: GetPersonsForProfileUnrestricted — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersonsforprofileunrestricted-request | *Version*:5.0 |
| Active as of 2026-10-08 | *Computable Name*:GetPersonsForProfileUnrestrictedRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetPersonsForProfileUnrestricted (urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileUnrestrictedResponder:5, GetPersonsForProfileUnrestrictedType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-getpersonsforprofileunrestricted-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpersonsforprofileunrestricted-request.csv), [Excel](StructureDefinition-getpersonsforprofileunrestricted-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpersonsforprofileunrestricted-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersonsforprofileunrestricted-request",
  "version" : "5.0",
  "name" : "GetPersonsForProfileUnrestrictedRequest",
  "title" : "GetPersonsForProfileUnrestricted — Request",
  "status" : "active",
  "date" : "2026-10-08T18:52:53+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetPersonsForProfileUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileUnrestrictedResponder:5, GetPersonsForProfileUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersonsforprofileunrestricted-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpersonsforprofileunrestricted-request",
      "path" : "getpersonsforprofileunrestricted-request",
      "short" : "GetPersonsForProfileUnrestricted — Request",
      "definition" : "Logisk modell för begäran i GetPersonsForProfileUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileUnrestrictedResponder:5, GetPersonsForProfileUnrestrictedType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getpersonsforprofileunrestricted-request.logicalAddress",
      "path" : "getpersonsforprofileunrestricted-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. http://tempuri.org",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofileunrestricted-request.personId",
      "path" : "getpersonsforprofileunrestricted-request.personId",
      "short" : "personId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofileunrestricted-request.personId.root",
      "path" : "getpersonsforprofileunrestricted-request.personId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofileunrestricted-request.personId.iiExtension",
      "path" : "getpersonsforprofileunrestricted-request.personId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofileunrestricted-request.profile",
      "path" : "getpersonsforprofileunrestricted-request.profile",
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
    },
    {
      "id" : "getpersonsforprofileunrestricted-request.ignoreReferredIdentity",
      "path" : "getpersonsforprofileunrestricted-request.ignoreReferredIdentity",
      "short" : "ignoreReferredIdentity",
      "definition" : "ignoreReferredIdentity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
