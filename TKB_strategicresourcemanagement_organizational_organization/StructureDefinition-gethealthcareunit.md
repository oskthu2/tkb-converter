# GetHealthCareUnit — Response - strategicresourcemanagement: organizational: organization v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnit — Response**

## Logical Model: GetHealthCareUnit — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunit | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetHealthCareUnit |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetHealthCareUnit (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitResponder:2, GetHealthCareUnitResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-organizational-organization|current/StructureDefinition/StructureDefinition-gethealthcareunit.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunit.csv), [Excel](StructureDefinition-gethealthcareunit.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunit",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunit",
  "version" : "2.0",
  "name" : "GetHealthCareUnit",
  "title" : "GetHealthCareUnit — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:50:15+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetHealthCareUnit\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitResponder:2, GetHealthCareUnitResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunit",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunit",
      "path" : "gethealthcareunit",
      "short" : "GetHealthCareUnit — Response",
      "definition" : "Logisk modell för svaret i GetHealthCareUnit\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitResponder:2, GetHealthCareUnitResponseType)."
    },
    {
      "id" : "gethealthcareunit.healthCareUnit",
      "path" : "gethealthcareunit.healthCareUnit",
      "short" : "HealthCareUnitType",
      "definition" : "healthCareUnit",
      "comment" : "TKB-fält: `healthCareUnit` (`HealthCareUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.unitIsHealthCareUnit",
      "path" : "gethealthcareunit.healthCareUnit.unitIsHealthCareUnit",
      "short" : "unitIsHealthCareUnit",
      "definition" : "True, om enheten (funktionen) själv är en vårdenhet\n\nOm enheten (funktionen) inte är vårdenhet kommer inget värde att returneras.",
      "comment" : "TKB-fält: `..unitIsHealthCareUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberHsaId",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberHsaId",
      "short" : "healthCareUnitMemberHsaId",
      "definition" : "Enhetens (funktionens) HSA-id",
      "comment" : "TKB-fält: `..healthCareUnitMemberHsaId` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberName",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberName",
      "short" : "healthCareUnitMemberName",
      "definition" : "Enhetens (funktionens) namn",
      "comment" : "TKB-fält: `..healthCareUnitMemberName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberStartDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberStartDate",
      "short" : "healthCareUnitMemberStartDate",
      "definition" : "Startdatum för enhetens (funktionens) verksamhet",
      "comment" : "TKB-fält: `..healthCareUnitMemberStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberEndDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberEndDate",
      "short" : "healthCareUnitMemberEndDate",
      "definition" : "Slutdatum för enhetens (funktionens) verksamhet",
      "comment" : "TKB-fält: `..healthCareUnitMemberEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitHsaId",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitHsaId",
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
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitName",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitName",
      "short" : "healthCareUnitName",
      "definition" : "Vårdenhetens namn",
      "comment" : "TKB-fält: `..healthCareUnitName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitStartDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitStartDate",
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
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitEndDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitEndDate",
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
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderHsaId",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderHsaId",
      "short" : "healthCareProviderHsaId",
      "definition" : "Vårdgivarens HSA-id",
      "comment" : "TKB-fält: `..healthCareProviderHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderName",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderName",
      "short" : "healthCareProviderName",
      "definition" : "Vårdgivarens namn",
      "comment" : "TKB-fält: `..healthCareProviderName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderOrgNo",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderOrgNo",
      "short" : "healthCareProviderOrgNo",
      "definition" : "Vårdgivarens organisationsnummer",
      "comment" : "TKB-fält: `..healthCareProviderOrgNo` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderStartDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderStartDate",
      "short" : "healthCareProviderStartDate",
      "definition" : "Startdatum för vårdgivarens verksamhet.",
      "comment" : "TKB-fält: `..healthCareProviderStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderEndDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderEndDate",
      "short" : "healthCareProviderEndDate",
      "definition" : "Slutdatum för vårdgivarens verksamhet.",
      "comment" : "TKB-fält: `..healthCareProviderEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.feignedHealthCareUnitMember",
      "path" : "gethealthcareunit.healthCareUnit.feignedHealthCareUnitMember",
      "short" : "feignedHealthCareUnitMember",
      "definition" : "true: om enheten är ett fingerat objekt",
      "comment" : "TKB-fält: `..feignedHealthCareUnitMember` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.feignedHealthCareUnit",
      "path" : "gethealthcareunit.healthCareUnit.feignedHealthCareUnit",
      "short" : "feignedHealthCareUnit",
      "definition" : "true: om vårdenheten är ett fingerat objekt",
      "comment" : "TKB-fält: `..feignedHealthCareUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.feignedHealthCareProvider",
      "path" : "gethealthcareunit.healthCareUnit.feignedHealthCareProvider",
      "short" : "feignedHealthCareProvider",
      "definition" : "feignedHealthCareProvider",
      "comment" : "TKB-fält: `../feignedHealthCareProvider` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.archivedHealthCareUnitMember",
      "path" : "gethealthcareunit.healthCareUnit.archivedHealthCareUnitMember",
      "short" : "archivedHealthCareUnitMember",
      "definition" : "archivedHealthCareUnitMember",
      "comment" : "TKB-fält: `../archivedHealthCareUnitMember` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.archivedHealthCareUnit",
      "path" : "gethealthcareunit.healthCareUnit.archivedHealthCareUnit",
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
      "id" : "gethealthcareunit.healthCareUnit.archivedHealthCareProvider",
      "path" : "gethealthcareunit.healthCareUnit.archivedHealthCareProvider",
      "short" : "archivedHealthCareProvider",
      "definition" : "archivedHealthCareProvider",
      "comment" : "TKB-fält: `../archivedHealthCareProvider` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
