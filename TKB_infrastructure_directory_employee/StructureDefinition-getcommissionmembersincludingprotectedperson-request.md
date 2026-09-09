# GetCommissionMembersIncludingProtectedPerson — Request - infrastructure: directory: employee v4.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCommissionMembersIncludingProtectedPerson — Request**

## Logical Model: GetCommissionMembersIncludingProtectedPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getcommissionmembersincludingprotectedperson-request | *Version*:4.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetCommissionMembersIncludingProtectedPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetCommissionMembersIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembersIncludingProtectedPerson:3). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-employee|current/StructureDefinition/StructureDefinition-getcommissionmembersincludingprotectedperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcommissionmembersincludingprotectedperson-request.csv), [Excel](StructureDefinition-getcommissionmembersincludingprotectedperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcommissionmembersincludingprotectedperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getcommissionmembersincludingprotectedperson-request",
  "version" : "4.0.0",
  "name" : "GetCommissionMembersIncludingProtectedPersonRequest",
  "title" : "GetCommissionMembersIncludingProtectedPerson — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:59:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet\nGetCommissionMembersIncludingProtectedPerson\n(RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembersIncludingProtectedPerson:3).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getcommissionmembersincludingprotectedperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcommissionmembersincludingprotectedperson-request",
      "path" : "getcommissionmembersincludingprotectedperson-request",
      "short" : "GetCommissionMembersIncludingProtectedPerson — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet\nGetCommissionMembersIncludingProtectedPerson\n(RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembersIncludingProtectedPerson:3)."
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson-request.healthCareUnitHsaId",
      "path" : "getcommissionmembersincludingprotectedperson-request.healthCareUnitHsaId",
      "short" : "HSA-id för vårdenhet (PDL)",
      "definition" : "HSA-id för vårdenhet enligt PDL.\nRef. HSA-id (hsaIdentity) [R5]. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson-request.commissionPurpose",
      "path" : "getcommissionmembersincludingprotectedperson-request.commissionPurpose",
      "short" : "Vårdmedarbetaruppdragets ändamål",
      "definition" : "Vårdmedarbetaruppdragets ändamål enligt definierad värdemängd.\nRef. vårdmedarbetaruppdragets ändamål (hsaCommissionPurpose) [R5].\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson-request.commissionRights",
      "path" : "getcommissionmembersincludingprotectedperson-request.commissionRights",
      "short" : "Vårdmedarbetaruppdragets rättigheter",
      "definition" : "Vårdmedarbetaruppdragets rättigheter enligt definierade värdemängder.\nSyntax: Aktivitet;Informationstyp;Omfång — alla delar behöver anges.\nRef. vårdmedarbetaruppdragets rättigheter (hsaCommissionRight) [R5].\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson-request.healthCareProfessionalLicense",
      "path" : "getcommissionmembersincludingprotectedperson-request.healthCareProfessionalLicense",
      "short" : "Legitimerad yrkesgrupp (filter)",
      "definition" : "Legitimerad yrkesgrupp enligt definierad värdemängd. Används som filter.\nRef. legitimerad yrkesgrupp (hsaTitle) [R5]. Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson-request.searchBase",
      "path" : "getcommissionmembersincludingprotectedperson-request.searchBase",
      "short" : "Sökbas (DN)",
      "definition" : "Sökbas. Om ingen sökbas anges används c=SE som sökbas. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson-request.includeFeignedObject",
      "path" : "getcommissionmembersincludingprotectedperson-request.includeFeignedObject",
      "short" : "Inkludera fingerade objekt",
      "definition" : "true: om metoden ska leverera svar med fingerade objekt. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
