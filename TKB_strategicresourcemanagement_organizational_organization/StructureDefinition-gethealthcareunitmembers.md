# GetHealthCareUnitMembers — Response - strategicresourcemanagement: organizational: organization v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnitMembers — Response**

## Logical Model: GetHealthCareUnitMembers — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitmembers | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetHealthCareUnitMembers |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetHealthCareUnitMembers (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2, GetHealthCareUnitMembersResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-organizational-organization|current/StructureDefinition/StructureDefinition-gethealthcareunitmembers.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunitmembers.csv), [Excel](StructureDefinition-gethealthcareunitmembers.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunitmembers",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitmembers",
  "version" : "2.0",
  "name" : "GetHealthCareUnitMembers",
  "title" : "GetHealthCareUnitMembers — Response",
  "status" : "draft",
  "date" : "2026-11-06T21:49:07+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetHealthCareUnitMembers\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2, GetHealthCareUnitMembersResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitmembers",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunitmembers",
      "path" : "gethealthcareunitmembers",
      "short" : "GetHealthCareUnitMembers — Response",
      "definition" : "Logisk modell för svaret i GetHealthCareUnitMembers\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2, GetHealthCareUnitMembersResponseType)."
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers",
      "short" : "healthCareUnitMembers",
      "definition" : "Information om vårdenheten och dess kopplade enheter",
      "comment" : "TKB-fält: `healthCareUnitMembers` (`HealthCareUnitMembersType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitName",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitName",
      "short" : "healthCareUnitName",
      "definition" : "Vårdenhetens namn.",
      "comment" : "TKB-fält: `..healthCareUnitName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitHsaId",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitHsaId",
      "short" : "healthCareUnitHsaId",
      "definition" : "Vårdenhetens HSA-id",
      "comment" : "TKB-fält: `..healthCareUnitHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitStartDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitStartDate",
      "short" : "healthCareUnitStartDate",
      "definition" : "Startdatum för vårdenhetens verksamhet.",
      "comment" : "TKB-fält: `..healthCareUnitStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitEndDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitEndDate",
      "short" : "healthCareUnitEndDate",
      "definition" : "Slutdatum för vårdenhetens verksamhet.",
      "comment" : "TKB-fält: `..healthCareUnitEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitPrescriptionCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitPrescriptionCode",
      "short" : "healthCareUnitPrescriptionCode",
      "definition" : "Vårdenhetens arbetsplatskod(-er)",
      "comment" : "TKB-fält: `..healthCareUnitPrescriptionCode` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.telephoneNumber",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.telephoneNumber",
      "short" : "telephoneNumber",
      "definition" : "Vårdenhetens publika direkttelefonnummer.",
      "comment" : "TKB-fält: `..telephoneNumber` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.postalAddress",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.postalAddress",
      "short" : "postalAddress",
      "definition" : "Vårdenhetens postadress.",
      "comment" : "TKB-fält: `..postalAddress` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.postalAddress.addressLine",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.postalAddress.addressLine",
      "short" : "addressLine",
      "definition" : "Adressrader",
      "comment" : "TKB-fält: `.. ..addressLine` (`String`, kardinalitet 1..n).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.postalCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.postalCode",
      "short" : "postalCode",
      "definition" : "Vårdenheten postnummer där verksamheten bedrivs",
      "comment" : "TKB-fält: `..postalCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.feignedHealthCareUnit",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.feignedHealthCareUnit",
      "short" : "feignedHealthCareUnit",
      "definition" : "feignedHealthCareUnit",
      "comment" : "TKB-fält: `../feignedHealthCareUnit` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.archivedHealthCareUnit",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.archivedHealthCareUnit",
      "short" : "archivedHealthCareUnit",
      "definition" : "archivedHealthCareUnit",
      "comment" : "TKB-fält: `../archivedHealthCareUnit` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider",
      "short" : "healthCareProvider",
      "definition" : "healthCareProvider",
      "comment" : "TKB-fält: `../healthCareProvider` (`HealthCareProviderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderName",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderName",
      "short" : "healthCareProviderName",
      "definition" : "healthCareProviderName",
      "comment" : "TKB-fält: `../../healthCareProviderName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderHsaId",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderHsaId",
      "short" : "healthCareProviderHsaId",
      "definition" : "healthCareProviderHsaId",
      "comment" : "TKB-fält: `../../healthCareProviderHsaId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderOrgNo",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderOrgNo",
      "short" : "healthCareProviderOrgNo",
      "definition" : "healthCareProviderOrgNo",
      "comment" : "TKB-fält: `../../healthCareProviderOrgNo` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderStartDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderStartDate",
      "short" : "healthCareProviderStartDate",
      "definition" : "healthCareProviderStartDate",
      "comment" : "TKB-fält: `../../healthCareProviderStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderEndDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderEndDate",
      "short" : "healthCareProviderEndDate",
      "definition" : "healthCareProviderEndDate",
      "comment" : "TKB-fält: `../../healthCareProviderEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderPrescriptionCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderPrescriptionCode",
      "short" : "healthCareProviderPrescriptionCode",
      "definition" : "healthCareProviderPrescriptionCode",
      "comment" : "TKB-fält: `../../healthCareProviderPrescriptionCode` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.telephoneNumber",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.telephoneNumber",
      "short" : "telephoneNumber",
      "definition" : "telephoneNumber",
      "comment" : "TKB-fält: `../../telephoneNumber` (`TelephoneNumberType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalAddress",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalAddress",
      "short" : "postalAddress",
      "definition" : "postalAddress",
      "comment" : "TKB-fält: `../../postalAddress` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalAddress.addressLine",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalAddress.addressLine",
      "short" : "addressLine",
      "definition" : "addressLine",
      "comment" : "TKB-fält: `../../../addressLine` (`string`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "comment" : "TKB-fält: `../../postalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.feignedHealthCareProvider",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.feignedHealthCareProvider",
      "short" : "feignedHealthCareProvider",
      "definition" : "feignedHealthCareProvider",
      "comment" : "TKB-fält: `../../feignedHealthCareProvider` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.archivedHealthCareProvider",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.archivedHealthCareProvider",
      "short" : "archivedHealthCareProvider",
      "definition" : "archivedHealthCareProvider",
      "comment" : "TKB-fält: `../../archivedHealthCareProvider` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember",
      "short" : "healthCareUnitMember",
      "definition" : "Information om en kopplad enhet",
      "comment" : "TKB-fält: `..healthCareUnitMember` (`HealthCareUnitMemberType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberName",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberName",
      "short" : "healthCareUnitMemberName",
      "definition" : "Den kopplade enhetens namn",
      "comment" : "TKB-fält: `.. .. healthCareUnitMember Name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberHsaId",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberHsaId",
      "short" : "healthCareUnitMemberHsaId",
      "definition" : "Den kopplade enhetens HSA-id",
      "comment" : "TKB-fält: `.. .. healthCareUnitMember HsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStartDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStartDate",
      "short" : "healthCareUnitMemberStartDate",
      "definition" : "Startdatum för kopplade enhetens verksamhet.",
      "comment" : "TKB-fält: `.. ..healthCareUnitMember StartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberEndDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberEndDate",
      "short" : "healthCareUnitMemberEndDate",
      "definition" : "Slutdatum för kopplade enhetens verksamhet.",
      "comment" : "TKB-fält: `.. ..healthCareUnitMember EndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPrescriptionCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPrescriptionCode",
      "short" : "healthCareUnitMemberPrescriptionCode",
      "definition" : "Den kopplade enhetens arbetsplatskod(-er)",
      "comment" : "TKB-fält: `.. .. healthCareUnitMember PrescriptionCode` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberTelephoneNumber",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberTelephoneNumber",
      "short" : "healthCareUnitMemberTelephoneNumber",
      "definition" : "Den kopplade enhetens publika direkttelefonnummer",
      "comment" : "TKB-fält: `.. ..healthCareUnitMember TelephoneNumber` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberpostalAddress",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberpostalAddress",
      "short" : "healthCareUnitMemberpostalAddress",
      "definition" : "Den kopplade enhetens postadress",
      "comment" : "TKB-fält: `.. .. healthCareUnitMember postalAddress` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberpostalAddress.addressLine",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberpostalAddress.addressLine",
      "short" : "addressLine",
      "definition" : "Adressrader",
      "comment" : "TKB-fält: `.. .. ..addressLine` (`String`, kardinalitet 1..n).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberpostalCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberpostalCode",
      "short" : "healthCareUnitMemberpostalCode",
      "definition" : "Den kopplade enhetens postnummer för där verksamheten bedrivs.",
      "comment" : "TKB-fält: `.. .. healthCareUnitMember postalCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.feignedHealthCareUnitMember",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.feignedHealthCareUnitMember",
      "short" : "feignedHealthCareUnitMember",
      "definition" : "feignedHealthCareUnitMember",
      "comment" : "TKB-fält: `../../feignedHealthCareUnitMember` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.archivedHealthCareUnitMember",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.archivedHealthCareUnitMember",
      "short" : "archivedHealthCareUnitMember",
      "definition" : "archivedHealthCareUnitMember",
      "comment" : "TKB-fält: `../../archivedHealthCareUnitMember` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
