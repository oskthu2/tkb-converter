# GetCredentialsForPersonIncludingProtectedPerson — Request - infrastructure: directory: authorizationmanagement v2.4.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCredentialsForPersonIncludingProtectedPerson — Request**

## Logical Model: GetCredentialsForPersonIncludingProtectedPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getcredentialsforpersonincludingprotectedperson-request | *Version*:2.4.4 |
| Draft as of 2026-09-09 | *Computable Name*:GetCredentialsForPersonIncludingProtectedPersonRequest |
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
  "version" : "2.4.4",
  "name" : "GetCredentialsForPersonIncludingProtectedPersonRequest",
  "title" : "GetCredentialsForPersonIncludingProtectedPerson — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:58:44+00:00",
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
      "definition" : "Logisk modell för requestparametrar i GetCredentialsForPersonIncludingProtectedPerson.\nExakt ett av fälten personHsaId och personalIdentityNumber ska anges."
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson-request.personHsaId",
      "path" : "getcredentialsforpersonincludingprotectedperson-request.personHsaId",
      "short" : "Unik identifierare för personen vars behörighetsegenskaper söks ut",
      "definition" : "Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.\nRef. HSA-id (hsaIdentity) [R5].",
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
      "definition" : "Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.\nRef. person-id (personalIdentityNumber) [R5].",
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
      "definition" : "Sökbas (DN). Om ej angiven används c=SE.",
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
      "definition" : "true: leverera svar med fingerade objekt",
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
      "definition" : "Profilval — 'extended1' returnerar även personalIdentity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
