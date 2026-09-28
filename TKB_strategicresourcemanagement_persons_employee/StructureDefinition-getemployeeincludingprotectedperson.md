# GetEmployeeIncludingProtectedPerson — Response - strategicresourcemanagement: persons: employee v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetEmployeeIncludingProtectedPerson — Response**

## Logical Model: GetEmployeeIncludingProtectedPerson — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployeeincludingprotectedperson | *Version*:2.0.0-rc1 |
| Draft as of 2026-09-28 | *Computable Name*:GetEmployeeIncludingProtectedPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetEmployeeIncludingProtectedPerson (urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeIncludingProtectedPersonResponder:2, GetEmployeeIncludingProtectedPersonResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-employee|current/StructureDefinition/StructureDefinition-getemployeeincludingprotectedperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getemployeeincludingprotectedperson.csv), [Excel](StructureDefinition-getemployeeincludingprotectedperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getemployeeincludingprotectedperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployeeincludingprotectedperson",
  "version" : "2.0.0-rc1",
  "name" : "GetEmployeeIncludingProtectedPerson",
  "title" : "GetEmployeeIncludingProtectedPerson — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:22:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetEmployeeIncludingProtectedPerson\n(urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeIncludingProtectedPersonResponder:2, GetEmployeeIncludingProtectedPersonResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployeeincludingprotectedperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getemployeeincludingprotectedperson",
      "path" : "getemployeeincludingprotectedperson",
      "short" : "GetEmployeeIncludingProtectedPerson — Response",
      "definition" : "Logisk modell för svaret i GetEmployeeIncludingProtectedPerson\n(urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeIncludingProtectedPersonResponder:2, GetEmployeeIncludingProtectedPersonResponseType)."
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation",
      "path" : "getemployeeincludingprotectedperson.personInformation",
      "short" : "personInformation",
      "definition" : "personInformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.personHsaId",
      "path" : "getemployeeincludingprotectedperson.personInformation.personHsaId",
      "short" : "personHsaId",
      "definition" : "personHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.givenName",
      "path" : "getemployeeincludingprotectedperson.personInformation.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.middleAndSurName",
      "path" : "getemployeeincludingprotectedperson.personInformation.middleAndSurName",
      "short" : "middleAndSurName",
      "definition" : "middleAndSurName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.nickName",
      "path" : "getemployeeincludingprotectedperson.personInformation.nickName",
      "short" : "nickName",
      "definition" : "nickName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.mail",
      "path" : "getemployeeincludingprotectedperson.personInformation.mail",
      "short" : "mail",
      "definition" : "mail",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.telephoneNumber",
      "path" : "getemployeeincludingprotectedperson.personInformation.telephoneNumber",
      "short" : "telephoneNumber",
      "definition" : "telephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.switchboardNumber",
      "path" : "getemployeeincludingprotectedperson.personInformation.switchboardNumber",
      "short" : "switchboardNumber",
      "definition" : "switchboardNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.nonPublicTelephoneNumber",
      "path" : "getemployeeincludingprotectedperson.personInformation.nonPublicTelephoneNumber",
      "short" : "nonPublicTelephoneNumber",
      "definition" : "nonPublicTelephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.mobileNumber",
      "path" : "getemployeeincludingprotectedperson.personInformation.mobileNumber",
      "short" : "mobileNumber",
      "definition" : "mobileNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.smsTelephoneNumber",
      "path" : "getemployeeincludingprotectedperson.personInformation.smsTelephoneNumber",
      "short" : "smsTelephoneNumber",
      "definition" : "smsTelephoneNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.facsimileTelephoneNumber",
      "path" : "getemployeeincludingprotectedperson.personInformation.facsimileTelephoneNumber",
      "short" : "facsimileTelephoneNumber",
      "definition" : "facsimileTelephoneNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.telephoneHour",
      "path" : "getemployeeincludingprotectedperson.personInformation.telephoneHour",
      "short" : "telephoneHour",
      "definition" : "telephoneHour",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.telephoneHour.fromDay",
      "path" : "getemployeeincludingprotectedperson.personInformation.telephoneHour.fromDay",
      "short" : "fromDay",
      "definition" : "fromDay",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.telephoneHour.fromTime",
      "path" : "getemployeeincludingprotectedperson.personInformation.telephoneHour.fromTime",
      "short" : "fromTime",
      "definition" : "fromTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.telephoneHour.toDay",
      "path" : "getemployeeincludingprotectedperson.personInformation.telephoneHour.toDay",
      "short" : "toDay",
      "definition" : "toDay",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.telephoneHour.toTime",
      "path" : "getemployeeincludingprotectedperson.personInformation.telephoneHour.toTime",
      "short" : "toTime",
      "definition" : "toTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.telephoneHour.comment",
      "path" : "getemployeeincludingprotectedperson.personInformation.telephoneHour.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.postalAddress",
      "path" : "getemployeeincludingprotectedperson.personInformation.postalAddress",
      "short" : "postalAddress",
      "definition" : "postalAddress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.postalAddress.addressLine",
      "path" : "getemployeeincludingprotectedperson.personInformation.postalAddress.addressLine",
      "short" : "addressLine",
      "definition" : "addressLine",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.description",
      "path" : "getemployeeincludingprotectedperson.personInformation.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.languageKnowledgeCode",
      "path" : "getemployeeincludingprotectedperson.personInformation.languageKnowledgeCode",
      "short" : "languageKnowledgeCode",
      "definition" : "languageKnowledgeCode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.title",
      "path" : "getemployeeincludingprotectedperson.personInformation.title",
      "short" : "title",
      "definition" : "title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.healthCareProfessionalLicence",
      "path" : "getemployeeincludingprotectedperson.personInformation.healthCareProfessionalLicence",
      "short" : "healthCareProfessionalLicence",
      "definition" : "healthCareProfessionalLicence",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.paTitle",
      "path" : "getemployeeincludingprotectedperson.personInformation.paTitle",
      "short" : "paTitle",
      "definition" : "paTitle",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.paTitle.paTitleName",
      "path" : "getemployeeincludingprotectedperson.personInformation.paTitle.paTitleName",
      "short" : "paTitleName",
      "definition" : "paTitleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.paTitle.paTitleCode",
      "path" : "getemployeeincludingprotectedperson.personInformation.paTitle.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "paTitleCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.specialityName",
      "path" : "getemployeeincludingprotectedperson.personInformation.specialityName",
      "short" : "specialityName",
      "definition" : "specialityName",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.specialityCode",
      "path" : "getemployeeincludingprotectedperson.personInformation.specialityCode",
      "short" : "specialityCode",
      "definition" : "specialityCode",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.dn",
      "path" : "getemployeeincludingprotectedperson.personInformation.dn",
      "short" : "dn",
      "definition" : "dn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.protectedPerson",
      "path" : "getemployeeincludingprotectedperson.personInformation.protectedPerson",
      "short" : "protectedPerson",
      "definition" : "protectedPerson",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.personStartDate",
      "path" : "getemployeeincludingprotectedperson.personInformation.personStartDate",
      "short" : "personStartDate",
      "definition" : "personStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.personEndDate",
      "path" : "getemployeeincludingprotectedperson.personInformation.personEndDate",
      "short" : "personEndDate",
      "definition" : "personEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson.personInformation.feignedPerson",
      "path" : "getemployeeincludingprotectedperson.personInformation.feignedPerson",
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
