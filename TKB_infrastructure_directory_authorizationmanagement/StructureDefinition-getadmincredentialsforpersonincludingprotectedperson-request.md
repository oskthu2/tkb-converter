# GetAdminCredentialsForPersonIncludingProtectedPerson — Request - infrastructure: directory: authorizationmanagement v2.4.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAdminCredentialsForPersonIncludingProtectedPerson — Request**

## Logical Model: GetAdminCredentialsForPersonIncludingProtectedPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforpersonincludingprotectedperson-request | *Version*:2.4.4 |
| Draft as of 2026-09-09 | *Computable Name*:GetAdminCredentialsForPersonIncludingProtectedPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetAdminCredentialsForPersonIncludingProtectedPerson. Exakt ett av fälten personHsaId och personalIdentityNumber ska anges. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-getadmincredentialsforpersonincludingprotectedperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getadmincredentialsforpersonincludingprotectedperson-request.csv), [Excel](StructureDefinition-getadmincredentialsforpersonincludingprotectedperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getadmincredentialsforpersonincludingprotectedperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforpersonincludingprotectedperson-request",
  "version" : "2.4.4",
  "name" : "GetAdminCredentialsForPersonIncludingProtectedPersonRequest",
  "title" : "GetAdminCredentialsForPersonIncludingProtectedPerson — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:58:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetAdminCredentialsForPersonIncludingProtectedPerson.\nExakt ett av fälten personHsaId och personalIdentityNumber ska anges.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforpersonincludingprotectedperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request",
      "short" : "GetAdminCredentialsForPersonIncludingProtectedPerson — Request",
      "definition" : "Logisk modell för requestparametrar i GetAdminCredentialsForPersonIncludingProtectedPerson.\nExakt ett av fälten personHsaId och personalIdentityNumber ska anges."
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.personHsaId",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.personHsaId",
      "short" : "Unik identifierare för personen vars behörighetsegenskaper söks ut",
      "definition" : "Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.personalIdentityNumber",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.personalIdentityNumber",
      "short" : "Person-id för personen vars behörighetsegenskaper söks ut",
      "definition" : "Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.authorizationScopeCode",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.authorizationScopeCode",
      "short" : "Behörighetsområdeskod att filtrera på",
      "definition" : "Behörighetsområdeskod att filtrera på",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.authorizationScopePropertyCode",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.authorizationScopePropertyCode",
      "short" : "Kod för behörighetsområdesegenskap att filtrera på",
      "definition" : "Kod för behörighetsområdesegenskap att filtrera på",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.searchBase",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.searchBase",
      "short" : "Sökbas (DN). Om ej angiven används c=SE.",
      "definition" : "Sökbas (DN). Om ej angiven används c=SE.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.includeFeignedObject",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.includeFeignedObject",
      "short" : "true: leverera svar med fingerade objekt",
      "definition" : "true: leverera svar med fingerade objekt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
