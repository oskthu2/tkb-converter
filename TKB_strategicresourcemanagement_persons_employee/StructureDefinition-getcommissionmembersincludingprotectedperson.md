# GetCommissionMembersIncludingProtectedPerson — Response - strategicresourcemanagement: persons: employee v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCommissionMembersIncludingProtectedPerson — Response**

## Logical Model: GetCommissionMembersIncludingProtectedPerson — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getcommissionmembersincludingprotectedperson | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetCommissionMembersIncludingProtectedPerson |
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
  "version" : "2.0",
  "name" : "GetCommissionMembersIncludingProtectedPerson",
  "title" : "GetCommissionMembersIncludingProtectedPerson — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:50:45+00:00",
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
      "short" : "PersonInformationType",
      "definition" : "Information om personen.\n\nEn person (ett HSA-id) returneras bara en gång även om personen är medlem i flera matchande medarbetaruppdrag Om personen har flera person-objekt returneras en instans per objekt.",
      "comment" : "TKB-fält: `personInformation` (`PersonInformationType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.personHsaId",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.personHsaId",
      "short" : "personHsaId",
      "definition" : "Personens HSA-id.",
      "comment" : "TKB-fält: `..personHsaId` (`String`, kardinalitet 1..1).",
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
      "definition" : "Tilltalsnamn.",
      "comment" : "TKB-fält: `..givenName` (`String`, kardinalitet ..1).",
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
      "definition" : "Mellan- och Efternamn separerade med mellanslag",
      "comment" : "TKB-fält: `..middleAndSurName` (`String`, kardinalitet 1..1).",
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
      "definition" : "Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med.",
      "comment" : "TKB-fält: `..nickName` (`String`, kardinalitet 0..1).",
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
      "definition" : "E-postadress.",
      "comment" : "TKB-fält: `..mail` (`String`, kardinalitet 0..1).",
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
      "definition" : "Publikt direkttelefonnummer.",
      "comment" : "TKB-fält: `..telephoneNumber` (`Telefon`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/TelephoneNumberType"]
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.switchboardNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.switchboardNumber",
      "short" : "switchboardNumber",
      "definition" : "Telefonnummer till växel.",
      "comment" : "TKB-fält: `..switchboardNumber` (`Telefon`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/TelephoneNumberType"]
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.nonPublicTelephoneNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.nonPublicTelephoneNumber",
      "short" : "nonPublicTelephoneNumber",
      "definition" : "Tjänstetelefonnummer.",
      "comment" : "TKB-fält: `..nonPublicTelephoneNumber` (`Telefon`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/TelephoneNumberType"]
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.mobileNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.mobileNumber",
      "short" : "mobileNumber",
      "definition" : "Mobiltelefonnummer.",
      "comment" : "TKB-fält: `..mobileNumber` (`Telefon`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/TelephoneNumberType"]
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.smsTelephoneNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.smsTelephoneNumber",
      "short" : "smsTelephoneNumber",
      "definition" : "Telefonnummer för SMS-meddelanden.",
      "comment" : "TKB-fält: `..smsTelephoneNumber` (`Telefon`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/TelephoneNumberType"]
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.facsimileTelephoneNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.facsimileTelephoneNumber",
      "short" : "facsimileTelephoneNumber",
      "definition" : "Faxnummer.",
      "comment" : "TKB-fält: `..facsimileTelephoneNumber` (`Telefon`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/TelephoneNumberType"]
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour",
      "short" : "TimeSpanType",
      "definition" : "Telefontider för publik telefon (telephoneNumber).",
      "comment" : "TKB-fält: `..telephoneHour` (`TimeSpan`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromDay",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromDay",
      "short" : "fromDay",
      "definition" : "Från dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..fromDay` (`String`, kardinalitet 1..1).",
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
      "definition" : "Från tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..fromTime` (`Time`, kardinalitet 1..1).",
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
      "definition" : "Till dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..toDay` (`String`, kardinalitet 1..1).",
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
      "definition" : "Till tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..toTime` (`Time`, kardinalitet 1..1).",
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
      "definition" : "Information om aktuellt tidsintervall.",
      "comment" : "TKB-fält: `.. ..comment` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.postalAddress",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.postalAddress",
      "short" : "AddressType",
      "definition" : "postalAddress",
      "comment" : "TKB-fält: `../postalAddress` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.postalAddress.addressLine",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.postalAddress.addressLine",
      "short" : "addressLine",
      "definition" : "addressLine",
      "comment" : "TKB-fält: `../../addressLine` (`string`, kardinalitet 1..*).",
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
      "comment" : "TKB-fält: `../description` (`string`, kardinalitet 0..1).",
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
      "definition" : "Kod för språk personen har tillräcklig kunskap om för att kunna ta emot patienter som talar detta språk.",
      "comment" : "TKB-fält: `..languageKnowledgeCode` (`String`, kardinalitet 0..n).",
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
      "definition" : "Titel i fritext",
      "comment" : "TKB-fält: `..title` (`String`, kardinalitet 0..1).",
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
      "definition" : "Legitimerad yrkesgrupp",
      "comment" : "TKB-fält: `..healthCareProfessionalLicence` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle",
      "short" : "PaTitleType",
      "definition" : "Personens befattning",
      "comment" : "TKB-fält: `..paTitle` (`PaTitleType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle.paTitleName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle.paTitleName",
      "short" : "paTitleName",
      "definition" : "Befattning",
      "comment" : "TKB-fält: `.. ..paTitleName` (`String`, kardinalitet ..1).",
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
      "definition" : "Befattningskod",
      "comment" : "TKB-fält: `.. ..paTitleCode` (`String`, kardinalitet ..1).",
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
      "definition" : "Specialistutbildning utöver grundutbildning.",
      "comment" : "TKB-fält: `..specialityName` (`String`, kardinalitet 0..n).",
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
      "definition" : "Klassificeringskod för specialistutbildning utöver grundutbildning.",
      "comment" : "TKB-fält: `..specialityCode` (`String`, kardinalitet 0..n).",
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
      "comment" : "TKB-fält: `../dn` (`DNType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/DNType"]
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.protectedPerson",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.protectedPerson",
      "short" : "protectedPerson",
      "definition" : "true: om person har skyddad identitet\n\n(om personen inte har skyddad identitet kommer inget värde att returneras)",
      "comment" : "TKB-fält: `..protectedPerson` (`Boolean`, kardinalitet 0..1).",
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
      "definition" : "Eventuellt startdatum för personens anställning. Om startdatum ännu inte inträtt innebär det att personens anställning ännu inte är aktiv.",
      "comment" : "TKB-fält: `..personStartDate` (`dateTime`, kardinalitet 0..1).",
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
      "definition" : "Eventuellt slutdatum för personens anställning. Om slutdatum passerats innebär det att personens anställning inte är aktiv.",
      "comment" : "TKB-fält: `..personEndDate` (`dateTime`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../feignedPerson` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
