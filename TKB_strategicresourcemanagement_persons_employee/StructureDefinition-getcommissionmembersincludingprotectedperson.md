# GetCommissionMembersIncludingProtectedPerson — Response - strategicresourcemanagement: persons: employee v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCommissionMembersIncludingProtectedPerson — Response**

## Logical Model: GetCommissionMembersIncludingProtectedPerson — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getcommissionmembersincludingprotectedperson | *Version*:2.0.0-rc1 |
| Draft as of 2026-09-28 | *Computable Name*:GetCommissionMembersIncludingProtectedPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetCommissionMembersIncludingProtectedPerson (urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersIncludingProtectedPersonResponder:2, GetCommissionMembersIncludingProtectedPersonResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-employee|current/StructureDefinition/StructureDefinition-getcommissionmembersincludingprotectedperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcommissionmembersincludingprotectedperson.csv), [Excel](StructureDefinition-getcommissionmembersincludingprotectedperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcommissionmembersincludingprotectedperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getcommissionmembersincludingprotectedperson",
  "version" : "2.0.0-rc1",
  "name" : "GetCommissionMembersIncludingProtectedPerson",
  "title" : "GetCommissionMembersIncludingProtectedPerson — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:22:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetCommissionMembersIncludingProtectedPerson\n(urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersIncludingProtectedPersonResponder:2, GetCommissionMembersIncludingProtectedPersonResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getcommissionmembersincludingprotectedperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcommissionmembersincludingprotectedperson",
      "path" : "getcommissionmembersincludingprotectedperson",
      "short" : "GetCommissionMembersIncludingProtectedPerson — Response",
      "definition" : "Logisk modell för svaret i GetCommissionMembersIncludingProtectedPerson\n(urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersIncludingProtectedPersonResponder:2, GetCommissionMembersIncludingProtectedPersonResponseType)."
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation",
      "short" : "personInformation",
      "definition" : "personInformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.personHsaId",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.personHsaId",
      "short" : "personHsaId",
      "definition" : "personHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.givenName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.middleAndSurName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.middleAndSurName",
      "short" : "middleAndSurName",
      "definition" : "middleAndSurName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.nickName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.nickName",
      "short" : "nickName",
      "definition" : "nickName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.mail",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.mail",
      "short" : "mail",
      "definition" : "mail",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneNumber",
      "short" : "telephoneNumber",
      "definition" : "telephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.switchboardNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.switchboardNumber",
      "short" : "switchboardNumber",
      "definition" : "switchboardNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.nonPublicTelephoneNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.nonPublicTelephoneNumber",
      "short" : "nonPublicTelephoneNumber",
      "definition" : "nonPublicTelephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.mobileNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.mobileNumber",
      "short" : "mobileNumber",
      "definition" : "mobileNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.smsTelephoneNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.smsTelephoneNumber",
      "short" : "smsTelephoneNumber",
      "definition" : "smsTelephoneNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.facsimileTelephoneNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.facsimileTelephoneNumber",
      "short" : "facsimileTelephoneNumber",
      "definition" : "facsimileTelephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour",
      "short" : "telephoneHour",
      "definition" : "telephoneHour",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromDay",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromDay",
      "short" : "fromDay",
      "definition" : "fromDay",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromTime",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromTime",
      "short" : "fromTime",
      "definition" : "fromTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.toDay",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.toDay",
      "short" : "toDay",
      "definition" : "toDay",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.toTime",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.toTime",
      "short" : "toTime",
      "definition" : "toTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.comment",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.postalAddress",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.postalAddress",
      "short" : "postalAddress",
      "definition" : "postalAddress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.postalAddress.addressLine",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.postalAddress.addressLine",
      "short" : "addressLine",
      "definition" : "addressLine",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.description",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.languageKnowledgeCode",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.languageKnowledgeCode",
      "short" : "languageKnowledgeCode",
      "definition" : "languageKnowledgeCode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.title",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.title",
      "short" : "title",
      "definition" : "title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicence",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicence",
      "short" : "healthCareProfessionalLicence",
      "definition" : "healthCareProfessionalLicence",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle",
      "short" : "paTitle",
      "definition" : "paTitle",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle.paTitleName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle.paTitleName",
      "short" : "paTitleName",
      "definition" : "paTitleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle.paTitleCode",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "paTitleCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.specialityName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.specialityName",
      "short" : "specialityName",
      "definition" : "specialityName",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.specialityCode",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.specialityCode",
      "short" : "specialityCode",
      "definition" : "specialityCode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.dn",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.dn",
      "short" : "dn",
      "definition" : "dn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.protectedPerson",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.protectedPerson",
      "short" : "protectedPerson",
      "definition" : "protectedPerson",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.personStartDate",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.personStartDate",
      "short" : "personStartDate",
      "definition" : "personStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.personEndDate",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.personEndDate",
      "short" : "personEndDate",
      "definition" : "personEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.feignedPerson",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.feignedPerson",
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
