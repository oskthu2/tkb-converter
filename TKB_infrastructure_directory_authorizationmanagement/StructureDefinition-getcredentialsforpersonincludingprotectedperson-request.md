# GetCredentialsForPersonIncludingProtectedPerson — Request - infrastructure: directory: authorizationmanagement v2.4.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCredentialsForPersonIncludingProtectedPerson — Request**

## Logical Model: GetCredentialsForPersonIncludingProtectedPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getcredentialsforpersonincludingprotectedperson-request | *Version*:2.2 |
| Active as of 2026-11-06 | *Computable Name*:GetCredentialsForPersonIncludingProtectedPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetCredentialsForPersonIncludingProtectedPerson. Exakt ett av fälten personHsaId och personalIdentityNumber ska anges. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-getcredentialsforpersonincludingprotectedperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcredentialsforpersonincludingprotectedperson-request.csv), [Excel](StructureDefinition-getcredentialsforpersonincludingprotectedperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcredentialsforpersonincludingprotectedperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getcredentialsforpersonincludingprotectedperson-request",
  "version" : "2.2",
  "name" : "GetCredentialsForPersonIncludingProtectedPersonRequest",
  "title" : "GetCredentialsForPersonIncludingProtectedPerson — Request",
  "status" : "active",
  "date" : "2026-11-06T21:28:52+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetCredentialsForPersonIncludingProtectedPerson.\nExakt ett av fälten personHsaId och personalIdentityNumber ska anges.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getcredentialsforpersonincludingprotectedperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcredentialsforpersonincludingprotectedperson-request",
      "path" : "getcredentialsforpersonincludingprotectedperson-request",
      "short" : "GetCredentialsForPersonIncludingProtectedPerson — Request",
      "definition" : "Logisk modell för requestparametrar i GetCredentialsForPersonIncludingProtectedPerson.\nExakt ett av fälten personHsaId och personalIdentityNumber ska anges.",
      "constraint" : [{
        "key" : "getcredentialsprotected-request-hsaid-xor-pnr",
        "severity" : "error",
        "human" : "Exakt ett av personHsaId och personalIdentityNumber ska anges.",
        "expression" : "personHsaId.exists() xor personalIdentityNumber.exists()",
        "source" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getcredentialsforpersonincludingprotectedperson-request"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson-request.personHsaId",
      "path" : "getcredentialsforpersonincludingprotectedperson-request.personHsaId",
      "short" : "Unik identifierare för personen vars behörighetsegenskaper söks ut",
      "definition" : "Unik identifierare för den person vars behörighetsegenskaper ska sökas ut.\n\nRef. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `personHsaId *1)` (`String`, kardinalitet 0..1).\n\n**Modellanteckning:** Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.\nRef. HSA-id (hsaIdentity) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson-request.personalIdentityNumber",
      "path" : "getcredentialsforpersonincludingprotectedperson-request.personalIdentityNumber",
      "short" : "Person-id för personen vars behörighetsegenskaper söks ut",
      "definition" : "Person-id för den person vars behörighetsegenskaper ska sökas ut. Ref. person-id (personalIdentityNumber) [R5]",
      "comment" : "TKB-fält: `personalIdentityNumber *1)` (`String`, kardinalitet 0..1).\n\n**Modellanteckning:** Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.\nRef. person-id (personalIdentityNumber) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson-request.searchBase",
      "path" : "getcredentialsforpersonincludingprotectedperson-request.searchBase",
      "short" : "Sökbas (DN). Om ej angiven används c=SE.",
      "definition" : "Sökbas. Om ingen sökbas anges används c=SE som sökbas.",
      "comment" : "TKB-fält: `searchBase *4)` (`DN`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson-request.includeFeignedObject",
      "path" : "getcredentialsforpersonincludingprotectedperson-request.includeFeignedObject",
      "short" : "true: leverera svar med fingerade objekt",
      "definition" : "true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras.",
      "comment" : "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson-request.profile",
      "path" : "getcredentialsforpersonincludingprotectedperson-request.profile",
      "short" : "Profilval — 'extended1' returnerar även personalIdentity",
      "definition" : "profile kan endast ha värdet \"extended1\" och med detta värde satt returneras även personalIdentity,",
      "comment" : "TKB-fält: `profile` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
