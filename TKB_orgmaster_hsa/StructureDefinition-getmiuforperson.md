# GetMiuForPerson — Response - orgmaster: hsa v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMiuForPerson — Response**

## Logical Model: GetMiuForPerson — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getmiuforperson | *Version*:1.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetMiuForPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetMiuForPerson (urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1, GetMiuForPersonResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.orgmaster-hsa|current/StructureDefinition/StructureDefinition-getmiuforperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmiuforperson.csv), [Excel](StructureDefinition-getmiuforperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmiuforperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getmiuforperson",
  "version" : "1.0",
  "name" : "GetMiuForPerson",
  "title" : "GetMiuForPerson — Response",
  "status" : "draft",
  "date" : "2026-11-06T21:41:15+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetMiuForPerson\n(urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1, GetMiuForPersonResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getmiuforperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmiuforperson",
      "path" : "getmiuforperson",
      "short" : "GetMiuForPerson — Response",
      "definition" : "Logisk modell för svaret i GetMiuForPerson\n(urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1, GetMiuForPersonResponseType)."
    },
    {
      "id" : "getmiuforperson.MiuInformation",
      "path" : "getmiuforperson.MiuInformation",
      "short" : "MiuInformation",
      "definition" : "MiuInformation",
      "comment" : "TKB-fält: `MiuInformation` (`MiuInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.miuName",
      "path" : "getmiuforperson.MiuInformation.miuName",
      "short" : "miuName",
      "definition" : "miuName",
      "comment" : "TKB-fält: `../miuName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.hsaIdentity",
      "path" : "getmiuforperson.MiuInformation.hsaIdentity",
      "short" : "hsaIdentity",
      "definition" : "hsaIdentity",
      "comment" : "TKB-fält: `../hsaIdentity` (`HsaIdentityType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.miuPurpose",
      "path" : "getmiuforperson.MiuInformation.miuPurpose",
      "short" : "miuPurpose",
      "definition" : "miuPurpose",
      "comment" : "TKB-fält: `../miuPurpose` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.careUnitHsaIdentity",
      "path" : "getmiuforperson.MiuInformation.careUnitHsaIdentity",
      "short" : "careUnitHsaIdentity",
      "definition" : "careUnitHsaIdentity",
      "comment" : "TKB-fält: `../careUnitHsaIdentity` (`HsaIdentityType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.careUnitName",
      "path" : "getmiuforperson.MiuInformation.careUnitName",
      "short" : "careUnitName",
      "definition" : "careUnitName",
      "comment" : "TKB-fält: `../careUnitName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.careGiver",
      "path" : "getmiuforperson.MiuInformation.careGiver",
      "short" : "careGiver",
      "definition" : "careGiver",
      "comment" : "TKB-fält: `../careGiver` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.careGiverName",
      "path" : "getmiuforperson.MiuInformation.careGiverName",
      "short" : "careGiverName",
      "definition" : "careGiverName",
      "comment" : "TKB-fält: `../careGiverName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.careGiverOrgNo",
      "path" : "getmiuforperson.MiuInformation.careGiverOrgNo",
      "short" : "careGiverOrgNo",
      "definition" : "careGiverOrgNo",
      "comment" : "TKB-fält: `../careGiverOrgNo` (`orgNo`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.personalPrescriptionCode",
      "path" : "getmiuforperson.MiuInformation.personalPrescriptionCode",
      "short" : "personalPrescriptionCode",
      "definition" : "personalPrescriptionCode",
      "comment" : "TKB-fält: `../personalPrescriptionCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.hsaTitles",
      "path" : "getmiuforperson.MiuInformation.hsaTitles",
      "short" : "hsaTitles",
      "definition" : "hsaTitles",
      "comment" : "TKB-fält: `../hsaTitles` (`HsaTitlesType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.hsaTitles.hsaTitle",
      "path" : "getmiuforperson.MiuInformation.hsaTitles.hsaTitle",
      "short" : "hsaTitle",
      "definition" : "hsaTitle",
      "comment" : "TKB-fält: `../../hsaTitle` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.miuRights",
      "path" : "getmiuforperson.MiuInformation.miuRights",
      "short" : "miuRights",
      "definition" : "miuRights",
      "comment" : "TKB-fält: `../miuRights` (`MiuRightsType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.miuRights.miuRight",
      "path" : "getmiuforperson.MiuInformation.miuRights.miuRight",
      "short" : "miuRight",
      "definition" : "miuRight",
      "comment" : "TKB-fält: `../../miuRight` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.hsaSystemRoles",
      "path" : "getmiuforperson.MiuInformation.hsaSystemRoles",
      "short" : "hsaSystemRoles",
      "definition" : "hsaSystemRoles",
      "comment" : "TKB-fält: `../hsaSystemRoles` (`HsaSystemRolesType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.hsaSystemRoles.hsaSystemRole",
      "path" : "getmiuforperson.MiuInformation.hsaSystemRoles.hsaSystemRole",
      "short" : "hsaSystemRole",
      "definition" : "hsaSystemRole",
      "comment" : "TKB-fält: `../../hsaSystemRole` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.hsaIdentityPerson",
      "path" : "getmiuforperson.MiuInformation.hsaIdentityPerson",
      "short" : "hsaIdentityPerson",
      "definition" : "hsaIdentityPerson",
      "comment" : "TKB-fält: `../hsaIdentityPerson` (`HsaIdentityType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.paTitleCodes",
      "path" : "getmiuforperson.MiuInformation.paTitleCodes",
      "short" : "paTitleCodes",
      "definition" : "paTitleCodes",
      "comment" : "TKB-fält: `../paTitleCodes` (`PaTitleCodesType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.paTitleCodes.paTitleCode",
      "path" : "getmiuforperson.MiuInformation.paTitleCodes.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "paTitleCode",
      "comment" : "TKB-fält: `../../paTitleCode` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.givenName",
      "path" : "getmiuforperson.MiuInformation.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "comment" : "TKB-fält: `../givenName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson.MiuInformation.middleAndSurName",
      "path" : "getmiuforperson.MiuInformation.middleAndSurName",
      "short" : "middleAndSurName",
      "definition" : "middleAndSurName",
      "comment" : "TKB-fält: `../middleAndSurName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
