# GetAdminCredentialsForPerson — Request - infrastructure: directory: authorizationmanagement v2.4.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAdminCredentialsForPerson — Request**

## Logical Model: GetAdminCredentialsForPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforperson-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAdminCredentialsForPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetAdminCredentialsForPerson. Exakt ett av fälten personHsaId och personalIdentityNumber ska anges. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-getadmincredentialsforperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getadmincredentialsforperson-request.csv), [Excel](StructureDefinition-getadmincredentialsforperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getadmincredentialsforperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforperson-request",
  "version" : "2.0",
  "name" : "GetAdminCredentialsForPersonRequest",
  "title" : "GetAdminCredentialsForPerson — Request",
  "status" : "active",
  "date" : "2026-11-09T03:36:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetAdminCredentialsForPerson.\nExakt ett av fälten personHsaId och personalIdentityNumber ska anges.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getadmincredentialsforperson-request",
      "path" : "getadmincredentialsforperson-request",
      "short" : "GetAdminCredentialsForPerson — Request",
      "definition" : "Logisk modell för requestparametrar i GetAdminCredentialsForPerson.\nExakt ett av fälten personHsaId och personalIdentityNumber ska anges.",
      "constraint" : [{
        "key" : "getadmincredentialsforpersonrequest-choice-1",
        "severity" : "error",
        "human" : "Exakt ett av personHsaId, personalIdentityNumber ska anges (xs:choice i schemat).",
        "expression" : "personHsaId.exists() xor personalIdentityNumber.exists()",
        "source" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforperson-request"
      },
      {
        "key" : "getadmincredentialsforperson-request-hsaid-xor-pnr",
        "severity" : "error",
        "human" : "Exakt ett av personHsaId och personalIdentityNumber ska anges.",
        "expression" : "personHsaId.exists() xor personalIdentityNumber.exists()",
        "source" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforperson-request"
      }]
    },
    {
      "id" : "getadmincredentialsforperson-request.personHsaId",
      "path" : "getadmincredentialsforperson-request.personHsaId",
      "short" : "personHsaId",
      "definition" : "personHsaId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson-request.personalIdentityNumber",
      "path" : "getadmincredentialsforperson-request.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "personalIdentityNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson-request.authorizationScopeCode",
      "path" : "getadmincredentialsforperson-request.authorizationScopeCode",
      "short" : "authorizationScopeCode",
      "definition" : "authorizationScopeCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson-request.authorizationScopePropertyCode",
      "path" : "getadmincredentialsforperson-request.authorizationScopePropertyCode",
      "short" : "authorizationScopePropertyCode",
      "definition" : "authorizationScopePropertyCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson-request.searchBase",
      "path" : "getadmincredentialsforperson-request.searchBase",
      "short" : "searchBase",
      "definition" : "searchBase",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/DNType"]
      }]
    },
    {
      "id" : "getadmincredentialsforperson-request.includeFeignedObject",
      "path" : "getadmincredentialsforperson-request.includeFeignedObject",
      "short" : "includeFeignedObject",
      "definition" : "includeFeignedObject",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
