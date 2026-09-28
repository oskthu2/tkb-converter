# GetEmployee — Response - strategicresourcemanagement: persons: employee v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetEmployee — Response**

## Logical Model: GetEmployee — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployee | *Version*:2.0.0-rc1 |
| Draft as of 2026-09-28 | *Computable Name*:GetEmployee |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetEmployee (urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeResponder:2, GetEmployeeResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-employee|current/StructureDefinition/StructureDefinition-getemployee.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getemployee.csv), [Excel](StructureDefinition-getemployee.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getemployee",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployee",
  "version" : "2.0.0-rc1",
  "name" : "GetEmployee",
  "title" : "GetEmployee — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:22:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetEmployee\n(urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeResponder:2, GetEmployeeResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployee",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getemployee",
      "path" : "getemployee",
      "short" : "GetEmployee — Response",
      "definition" : "Logisk modell för svaret i GetEmployee\n(urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeResponder:2, GetEmployeeResponseType)."
    },
    {
      "id" : "getemployee.personInformation",
      "path" : "getemployee.personInformation",
      "short" : "personInformation",
      "definition" : "personInformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getemployee.personInformation.personHsaId",
      "path" : "getemployee.personInformation.personHsaId",
      "short" : "personHsaId",
      "definition" : "personHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.givenName",
      "path" : "getemployee.personInformation.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.middleAndSurName",
      "path" : "getemployee.personInformation.middleAndSurName",
      "short" : "middleAndSurName",
      "definition" : "middleAndSurName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.nickName",
      "path" : "getemployee.personInformation.nickName",
      "short" : "nickName",
      "definition" : "nickName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.mail",
      "path" : "getemployee.personInformation.mail",
      "short" : "mail",
      "definition" : "mail",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.telephoneNumber",
      "path" : "getemployee.personInformation.telephoneNumber",
      "short" : "telephoneNumber",
      "definition" : "telephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.switchboardNumber",
      "path" : "getemployee.personInformation.switchboardNumber",
      "short" : "switchboardNumber",
      "definition" : "switchboardNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.nonPublicTelephoneNumber",
      "path" : "getemployee.personInformation.nonPublicTelephoneNumber",
      "short" : "nonPublicTelephoneNumber",
      "definition" : "nonPublicTelephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.mobileNumber",
      "path" : "getemployee.personInformation.mobileNumber",
      "short" : "mobileNumber",
      "definition" : "mobileNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.smsTelephoneNumber",
      "path" : "getemployee.personInformation.smsTelephoneNumber",
      "short" : "smsTelephoneNumber",
      "definition" : "smsTelephoneNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.facsimileTelephoneNumber",
      "path" : "getemployee.personInformation.facsimileTelephoneNumber",
      "short" : "facsimileTelephoneNumber",
      "definition" : "facsimileTelephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.telephoneHour",
      "path" : "getemployee.personInformation.telephoneHour",
      "short" : "telephoneHour",
      "definition" : "telephoneHour",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getemployee.personInformation.telephoneHour.fromDay",
      "path" : "getemployee.personInformation.telephoneHour.fromDay",
      "short" : "fromDay",
      "definition" : "fromDay",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.telephoneHour.fromTime",
      "path" : "getemployee.personInformation.telephoneHour.fromTime",
      "short" : "fromTime",
      "definition" : "fromTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getemployee.personInformation.telephoneHour.toDay",
      "path" : "getemployee.personInformation.telephoneHour.toDay",
      "short" : "toDay",
      "definition" : "toDay",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.telephoneHour.toTime",
      "path" : "getemployee.personInformation.telephoneHour.toTime",
      "short" : "toTime",
      "definition" : "toTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getemployee.personInformation.telephoneHour.comment",
      "path" : "getemployee.personInformation.telephoneHour.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.postalAddress",
      "path" : "getemployee.personInformation.postalAddress",
      "short" : "postalAddress",
      "definition" : "postalAddress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getemployee.personInformation.postalAddress.addressLine",
      "path" : "getemployee.personInformation.postalAddress.addressLine",
      "short" : "addressLine",
      "definition" : "addressLine",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.description",
      "path" : "getemployee.personInformation.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.languageKnowledgeCode",
      "path" : "getemployee.personInformation.languageKnowledgeCode",
      "short" : "languageKnowledgeCode",
      "definition" : "languageKnowledgeCode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.title",
      "path" : "getemployee.personInformation.title",
      "short" : "title",
      "definition" : "title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.healthCareProfessionalLicence",
      "path" : "getemployee.personInformation.healthCareProfessionalLicence",
      "short" : "healthCareProfessionalLicence",
      "definition" : "healthCareProfessionalLicence",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.paTitle",
      "path" : "getemployee.personInformation.paTitle",
      "short" : "paTitle",
      "definition" : "paTitle",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getemployee.personInformation.paTitle.paTitleName",
      "path" : "getemployee.personInformation.paTitle.paTitleName",
      "short" : "paTitleName",
      "definition" : "paTitleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.paTitle.paTitleCode",
      "path" : "getemployee.personInformation.paTitle.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "paTitleCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.specialityName",
      "path" : "getemployee.personInformation.specialityName",
      "short" : "specialityName",
      "definition" : "specialityName",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.specialityCode",
      "path" : "getemployee.personInformation.specialityCode",
      "short" : "specialityCode",
      "definition" : "specialityCode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.dn",
      "path" : "getemployee.personInformation.dn",
      "short" : "dn",
      "definition" : "dn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.protectedPerson",
      "path" : "getemployee.personInformation.protectedPerson",
      "short" : "protectedPerson",
      "definition" : "protectedPerson",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getemployee.personInformation.personStartDate",
      "path" : "getemployee.personInformation.personStartDate",
      "short" : "personStartDate",
      "definition" : "personStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getemployee.personInformation.personEndDate",
      "path" : "getemployee.personInformation.personEndDate",
      "short" : "personEndDate",
      "definition" : "personEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getemployee.personInformation.feignedPerson",
      "path" : "getemployee.personInformation.feignedPerson",
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
