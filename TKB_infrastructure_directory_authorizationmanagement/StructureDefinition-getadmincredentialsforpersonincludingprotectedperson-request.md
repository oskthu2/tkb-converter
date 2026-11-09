# GetAdminCredentialsForPersonIncludingProtectedPerson — Request - infrastructure: directory: authorizationmanagement v2.4.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAdminCredentialsForPersonIncludingProtectedPerson — Request**

## Logical Model: GetAdminCredentialsForPersonIncludingProtectedPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforpersonincludingprotectedperson-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAdminCredentialsForPersonIncludingProtectedPersonRequest |
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
  "version" : "2.0",
  "name" : "GetAdminCredentialsForPersonIncludingProtectedPersonRequest",
  "title" : "GetAdminCredentialsForPersonIncludingProtectedPerson — Request",
  "status" : "active",
  "date" : "2026-11-09T03:36:43+00:00",
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
      "definition" : "Logisk modell för requestparametrar i GetAdminCredentialsForPersonIncludingProtectedPerson.\nExakt ett av fälten personHsaId och personalIdentityNumber ska anges.",
      "constraint" : [{
        "key" : "getadmincredentialsforpersonincludingprotectedperson-choice-1",
        "severity" : "error",
        "human" : "Exakt ett av personHsaId, personalIdentityNumber ska anges (xs:choice i schemat).",
        "expression" : "personHsaId.exists() xor personalIdentityNumber.exists()",
        "source" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforpersonincludingprotectedperson-request"
      },
      {
        "key" : "getadmincredentialsprotected-request-hsaid-xor-pnr",
        "severity" : "error",
        "human" : "Exakt ett av personHsaId och personalIdentityNumber ska anges.",
        "expression" : "personHsaId.exists() xor personalIdentityNumber.exists()",
        "source" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforpersonincludingprotectedperson-request"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.personHsaId",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.personHsaId",
      "short" : "personHsaId",
      "definition" : "Unik identifierare för den person vars behörighetsegenskaper ska sökas ut.\n\nRef. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `personHsaId *1)` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.personalIdentityNumber",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "Person-id för den person vars behörighetsegenskaper ska sökas ut. Ref. person-id (personalIdentityNumber) [R5]",
      "comment" : "TKB-fält: `personalIdentityNumber *1)` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.authorizationScopeCode",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.authorizationScopeCode",
      "short" : "authorizationScopeCode",
      "definition" : "Behörighetsområdeskod som ska ingå i sökt Administrativt medarbetaruppdrag. Optional.",
      "comment" : "TKB-fält: `authorizationScopeCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.authorizationScopePropertyCode",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.authorizationScopePropertyCode",
      "short" : "authorizationScopePropertyCode",
      "definition" : "Kod för behörighetsområdesegenskap som ska ingå i sökt Administrativt medarbetaruppdrag. Optional.",
      "comment" : "TKB-fält: `authorizationScopePropertyCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.searchBase",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.searchBase",
      "short" : "searchBase",
      "definition" : "Sökbas för behörighetsegenskaper. Om ingen sökbas anges används c=SE som sökbas.",
      "comment" : "TKB-fält: `searchBase *2)` (`DN`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/DNType"]
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson-request.includeFeignedObject",
      "path" : "getadmincredentialsforpersonincludingprotectedperson-request.includeFeignedObject",
      "short" : "includeFeignedObject",
      "definition" : "true: om metoden ska leverera svar med fingerade objekt.",
      "comment" : "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
