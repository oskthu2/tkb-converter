# GetCommissionMembers — Response - strategicresourcemanagement: persons: employee v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCommissionMembers — Response**

## Logical Model: GetCommissionMembers — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getcommissionmembers | *Version*:2.0.0-rc1 |
| Draft as of 2026-09-28 | *Computable Name*:GetCommissionMembers |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetCommissionMembers (urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersResponder:2, GetCommissionMembersResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-employee|current/StructureDefinition/StructureDefinition-getcommissionmembers.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcommissionmembers.csv), [Excel](StructureDefinition-getcommissionmembers.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcommissionmembers",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getcommissionmembers",
  "version" : "2.0.0-rc1",
  "name" : "GetCommissionMembers",
  "title" : "GetCommissionMembers — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:22:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetCommissionMembers\n(urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersResponder:2, GetCommissionMembersResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getcommissionmembers",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcommissionmembers",
      "path" : "getcommissionmembers",
      "short" : "GetCommissionMembers — Response",
      "definition" : "Logisk modell för svaret i GetCommissionMembers\n(urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersResponder:2, GetCommissionMembersResponseType)."
    },
    {
      "id" : "getcommissionmembers.personInformation",
      "path" : "getcommissionmembers.personInformation",
      "short" : "personInformation",
      "definition" : "personInformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.personHsaId",
      "path" : "getcommissionmembers.personInformation.personHsaId",
      "short" : "personHsaId",
      "definition" : "personHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.givenName",
      "path" : "getcommissionmembers.personInformation.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.middleAndSurName",
      "path" : "getcommissionmembers.personInformation.middleAndSurName",
      "short" : "middleAndSurName",
      "definition" : "middleAndSurName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.nickName",
      "path" : "getcommissionmembers.personInformation.nickName",
      "short" : "nickName",
      "definition" : "nickName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.mail",
      "path" : "getcommissionmembers.personInformation.mail",
      "short" : "mail",
      "definition" : "mail",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.telephoneNumber",
      "path" : "getcommissionmembers.personInformation.telephoneNumber",
      "short" : "telephoneNumber",
      "definition" : "telephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.switchboardNumber",
      "path" : "getcommissionmembers.personInformation.switchboardNumber",
      "short" : "switchboardNumber",
      "definition" : "switchboardNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.nonPublicTelephoneNumber",
      "path" : "getcommissionmembers.personInformation.nonPublicTelephoneNumber",
      "short" : "nonPublicTelephoneNumber",
      "definition" : "nonPublicTelephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.mobileNumber",
      "path" : "getcommissionmembers.personInformation.mobileNumber",
      "short" : "mobileNumber",
      "definition" : "mobileNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.smsTelephoneNumber",
      "path" : "getcommissionmembers.personInformation.smsTelephoneNumber",
      "short" : "smsTelephoneNumber",
      "definition" : "smsTelephoneNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.facsimileTelephoneNumber",
      "path" : "getcommissionmembers.personInformation.facsimileTelephoneNumber",
      "short" : "facsimileTelephoneNumber",
      "definition" : "facsimileTelephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.telephoneHour",
      "path" : "getcommissionmembers.personInformation.telephoneHour",
      "short" : "telephoneHour",
      "definition" : "telephoneHour",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.telephoneHour.fromDay",
      "path" : "getcommissionmembers.personInformation.telephoneHour.fromDay",
      "short" : "fromDay",
      "definition" : "fromDay",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.telephoneHour.fromTime",
      "path" : "getcommissionmembers.personInformation.telephoneHour.fromTime",
      "short" : "fromTime",
      "definition" : "fromTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.telephoneHour.toDay",
      "path" : "getcommissionmembers.personInformation.telephoneHour.toDay",
      "short" : "toDay",
      "definition" : "toDay",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.telephoneHour.toTime",
      "path" : "getcommissionmembers.personInformation.telephoneHour.toTime",
      "short" : "toTime",
      "definition" : "toTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.telephoneHour.comment",
      "path" : "getcommissionmembers.personInformation.telephoneHour.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.postalAddress",
      "path" : "getcommissionmembers.personInformation.postalAddress",
      "short" : "postalAddress",
      "definition" : "postalAddress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.postalAddress.addressLine",
      "path" : "getcommissionmembers.personInformation.postalAddress.addressLine",
      "short" : "addressLine",
      "definition" : "addressLine",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.description",
      "path" : "getcommissionmembers.personInformation.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.languageKnowledgeCode",
      "path" : "getcommissionmembers.personInformation.languageKnowledgeCode",
      "short" : "languageKnowledgeCode",
      "definition" : "languageKnowledgeCode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.title",
      "path" : "getcommissionmembers.personInformation.title",
      "short" : "title",
      "definition" : "title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.healthCareProfessionalLicence",
      "path" : "getcommissionmembers.personInformation.healthCareProfessionalLicence",
      "short" : "healthCareProfessionalLicence",
      "definition" : "healthCareProfessionalLicence",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.paTitle",
      "path" : "getcommissionmembers.personInformation.paTitle",
      "short" : "paTitle",
      "definition" : "paTitle",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.paTitle.paTitleName",
      "path" : "getcommissionmembers.personInformation.paTitle.paTitleName",
      "short" : "paTitleName",
      "definition" : "paTitleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.paTitle.paTitleCode",
      "path" : "getcommissionmembers.personInformation.paTitle.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "paTitleCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.specialityName",
      "path" : "getcommissionmembers.personInformation.specialityName",
      "short" : "specialityName",
      "definition" : "specialityName",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.specialityCode",
      "path" : "getcommissionmembers.personInformation.specialityCode",
      "short" : "specialityCode",
      "definition" : "specialityCode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.dn",
      "path" : "getcommissionmembers.personInformation.dn",
      "short" : "dn",
      "definition" : "dn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.protectedPerson",
      "path" : "getcommissionmembers.personInformation.protectedPerson",
      "short" : "protectedPerson",
      "definition" : "protectedPerson",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.personStartDate",
      "path" : "getcommissionmembers.personInformation.personStartDate",
      "short" : "personStartDate",
      "definition" : "personStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.personEndDate",
      "path" : "getcommissionmembers.personInformation.personEndDate",
      "short" : "personEndDate",
      "definition" : "personEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcommissionmembers.personInformation.feignedPerson",
      "path" : "getcommissionmembers.personInformation.feignedPerson",
      "short" : "feignedPerson",
      "definition" : "feignedPerson",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
