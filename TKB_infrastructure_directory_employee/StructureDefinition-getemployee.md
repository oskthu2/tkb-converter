# GetEmployee - infrastructure: directory: employee v4.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetEmployee**

## Logical Model: GetEmployee 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getemployee | *Version*:4.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetEmployee |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetEmployee (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4). Representerar responsens informationsstruktur. Är identisk med GetEmployeeIncludingProtectedPerson förutom att skyddade personer aldrig returneras — fältet protectedPerson returneras alltså aldrig. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-employee|current/StructureDefinition/StructureDefinition-getemployee.json)

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
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getemployee",
  "version" : "4.0",
  "name" : "GetEmployee",
  "title" : "GetEmployee",
  "status" : "draft",
  "date" : "2026-11-09T03:37:12+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetEmployee\n(RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4).\nRepresenterar responsens informationsstruktur.\nÄr identisk med GetEmployeeIncludingProtectedPerson förutom att skyddade personer\naldrig returneras — fältet protectedPerson returneras alltså aldrig.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getemployee",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getemployee",
      "path" : "getemployee",
      "short" : "GetEmployee",
      "definition" : "Logisk modell för tjänstekontraktet GetEmployee\n(RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4).\nRepresenterar responsens informationsstruktur.\nÄr identisk med GetEmployeeIncludingProtectedPerson förutom att skyddade personer\naldrig returneras — fältet protectedPerson returneras alltså aldrig."
    },
    {
      "id" : "getemployee.personInformation",
      "path" : "getemployee.personInformation",
      "short" : "PersonInformationType",
      "definition" : "personInformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
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
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/TelephoneNumberType"]
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
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/TelephoneNumberType"]
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
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/TelephoneNumberType"]
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
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/TelephoneNumberType"]
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
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/TelephoneNumberType"]
      }]
    },
    {
      "id" : "getemployee.personInformation.telephoneHour",
      "path" : "getemployee.personInformation.telephoneHour",
      "short" : "TimeSpanType",
      "definition" : "telephoneHour",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
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
      "id" : "getemployee.personInformation.telephoneHour.fromDate",
      "path" : "getemployee.personInformation.telephoneHour.fromDate",
      "short" : "fromDate",
      "definition" : "fromDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.telephoneHour.toDate",
      "path" : "getemployee.personInformation.telephoneHour.toDate",
      "short" : "toDate",
      "definition" : "toDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.postalAddress",
      "path" : "getemployee.personInformation.postalAddress",
      "short" : "AddressType",
      "definition" : "postalAddress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
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
      "short" : "PaTitleType",
      "definition" : "paTitle",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
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
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/DNType"]
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
    },
    {
      "id" : "getemployee.personInformation.healthCareProfessionalLicenceSpeciality",
      "path" : "getemployee.personInformation.healthCareProfessionalLicenceSpeciality",
      "short" : "HealthCareProfessionalLicenceSpecialityType",
      "definition" : "healthCareProfessionalLicenceSpeciality",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getemployee.personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence",
      "path" : "getemployee.personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence",
      "short" : "healthCareProfessionalLicence",
      "definition" : "healthCareProfessionalLicence",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.healthCareProfessionalLicenceSpeciality.specialityCode",
      "path" : "getemployee.personInformation.healthCareProfessionalLicenceSpeciality.specialityCode",
      "short" : "specialityCode",
      "definition" : "specialityCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.healthCareProfessionalLicenceSpeciality.specialityName",
      "path" : "getemployee.personInformation.healthCareProfessionalLicenceSpeciality.specialityName",
      "short" : "specialityName",
      "definition" : "specialityName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.age",
      "path" : "getemployee.personInformation.age",
      "short" : "age",
      "definition" : "age",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.gender",
      "path" : "getemployee.personInformation.gender",
      "short" : "gender",
      "definition" : "gender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.structuredPostalAddress",
      "path" : "getemployee.personInformation.structuredPostalAddress",
      "short" : "StructuredPostalAddressType",
      "definition" : "structuredPostalAddress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getemployee.personInformation.structuredPostalAddress.addressee",
      "path" : "getemployee.personInformation.structuredPostalAddress.addressee",
      "short" : "addressee",
      "definition" : "addressee",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.structuredPostalAddress.street",
      "path" : "getemployee.personInformation.structuredPostalAddress.street",
      "short" : "street",
      "definition" : "street",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.structuredPostalAddress.premisesNumber",
      "path" : "getemployee.personInformation.structuredPostalAddress.premisesNumber",
      "short" : "premisesNumber",
      "definition" : "premisesNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.structuredPostalAddress.premisesLetter",
      "path" : "getemployee.personInformation.structuredPostalAddress.premisesLetter",
      "short" : "premisesLetter",
      "definition" : "premisesLetter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.structuredPostalAddress.postCode",
      "path" : "getemployee.personInformation.structuredPostalAddress.postCode",
      "short" : "postCode",
      "definition" : "postCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee.personInformation.structuredPostalAddress.town",
      "path" : "getemployee.personInformation.structuredPostalAddress.town",
      "short" : "town",
      "definition" : "town",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
