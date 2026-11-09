# GetPersonsWithCommissionAtHealthCareUnit — Response - orgmaster: hsa v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPersonsWithCommissionAtHealthCareUnit — Response**

## Logical Model: GetPersonsWithCommissionAtHealthCareUnit — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getpersonswithcommissionathealthcareunit | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetPersonsWithCommissionAtHealthCareUnit |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetPersonsWithCommissionAtHealthCareUnit (urn:riv:orgmaster:hsa:GetPersonsWithCommissionAtHealthCareUnitResponder:1, GetPersonsWithCommissionAtHealthCareUnitResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.orgmaster-hsa|current/StructureDefinition/StructureDefinition-getpersonswithcommissionathealthcareunit.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpersonswithcommissionathealthcareunit.csv), [Excel](StructureDefinition-getpersonswithcommissionathealthcareunit.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpersonswithcommissionathealthcareunit",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getpersonswithcommissionathealthcareunit",
  "version" : "1.0",
  "name" : "GetPersonsWithCommissionAtHealthCareUnit",
  "title" : "GetPersonsWithCommissionAtHealthCareUnit — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:45:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetPersonsWithCommissionAtHealthCareUnit\n(urn:riv:orgmaster:hsa:GetPersonsWithCommissionAtHealthCareUnitResponder:1, GetPersonsWithCommissionAtHealthCareUnitResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getpersonswithcommissionathealthcareunit",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpersonswithcommissionathealthcareunit",
      "path" : "getpersonswithcommissionathealthcareunit",
      "short" : "GetPersonsWithCommissionAtHealthCareUnit — Response",
      "definition" : "Logisk modell för svaret i GetPersonsWithCommissionAtHealthCareUnit\n(urn:riv:orgmaster:hsa:GetPersonsWithCommissionAtHealthCareUnitResponder:1, GetPersonsWithCommissionAtHealthCareUnitResponseType)."
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList",
      "short" : "(anonym typ)",
      "definition" : "PersonList",
      "comment" : "TKB-fält: `PersonList` (`PersonList`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson",
      "short" : "PersonListPerson",
      "definition" : "personListPerson",
      "comment" : "TKB-fält: `../personListPerson` (`PersonListPerson`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.hsaIdentity",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.hsaIdentity",
      "short" : "hsaIdentity",
      "definition" : "hsaIdentity",
      "comment" : "TKB-fält: `../../hsaIdentity` (`HsaIdentityType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.givenName",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "comment" : "TKB-fält: `../../givenName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.sn",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.sn",
      "short" : "sn",
      "definition" : "sn",
      "comment" : "TKB-fält: `../../sn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.personalPrescriptionCode",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.personalPrescriptionCode",
      "short" : "personalPrescriptionCode",
      "definition" : "personalPrescriptionCode",
      "comment" : "TKB-fält: `../../personalPrescriptionCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.paTitleCodes",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.paTitleCodes",
      "short" : "PaTitleCodesType",
      "definition" : "paTitleCodes",
      "comment" : "TKB-fält: `../../paTitleCodes` (`PaTitleCodesType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.paTitleCodes.paTitleCode",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.paTitleCodes.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "paTitleCode",
      "comment" : "TKB-fält: `../../../paTitleCode` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.paTitleNames",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.paTitleNames",
      "short" : "PaTitleNamesType",
      "definition" : "paTitleNames",
      "comment" : "TKB-fält: `../../paTitleNames` (`PaTitleNamesType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.paTitleNames.paTitleName",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.paTitleNames.paTitleName",
      "short" : "paTitleName",
      "definition" : "paTitleName",
      "comment" : "TKB-fält: `../../../paTitleName` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.hsaTitles",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.hsaTitles",
      "short" : "HsaTitlesType",
      "definition" : "hsaTitles",
      "comment" : "TKB-fält: `../../hsaTitles` (`HsaTitlesType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.hsaTitles.hsaTitle",
      "path" : "getpersonswithcommissionathealthcareunit.PersonList.personListPerson.hsaTitles.hsaTitle",
      "short" : "hsaTitle",
      "definition" : "hsaTitle",
      "comment" : "TKB-fält: `../../../hsaTitle` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
