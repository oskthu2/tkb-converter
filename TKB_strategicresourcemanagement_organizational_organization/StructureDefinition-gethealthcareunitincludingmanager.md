# GetHealthCareUnitIncludingManager — Response - strategicresourcemanagement: organizational: organization v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnitIncludingManager — Response**

## Logical Model: GetHealthCareUnitIncludingManager — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitincludingmanager | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetHealthCareUnitIncludingManager |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetHealthCareUnitIncludingManager (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitIncludingManagerResponder:2, GetHealthCareUnitIncludingManagerResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-organizational-organization|current/StructureDefinition/StructureDefinition-gethealthcareunitincludingmanager.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunitincludingmanager.csv), [Excel](StructureDefinition-gethealthcareunitincludingmanager.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunitincludingmanager",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitincludingmanager",
  "version" : "2.0",
  "name" : "GetHealthCareUnitIncludingManager",
  "title" : "GetHealthCareUnitIncludingManager — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:50:15+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetHealthCareUnitIncludingManager\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitIncludingManagerResponder:2, GetHealthCareUnitIncludingManagerResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitincludingmanager",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunitincludingmanager",
      "path" : "gethealthcareunitincludingmanager",
      "short" : "GetHealthCareUnitIncludingManager — Response",
      "definition" : "Logisk modell för svaret i GetHealthCareUnitIncludingManager\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitIncludingManagerResponder:2, GetHealthCareUnitIncludingManagerResponseType)."
    },
    {
      "id" : "gethealthcareunitincludingmanager.healthCareUnit",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit",
      "short" : "HealthCareUnitIncludingManagerType",
      "definition" : "healthCareUnit",
      "comment" : "TKB-fält: `healthCareUnit` (`HealthCareUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitMemberHsaId",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitMemberHsaId",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitMemberName",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitMemberName",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitMemberStartDate",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitMemberStartDate",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitMemberEndDate",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitMemberEndDate",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitHsaId",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitHsaId",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.unitIsHealthCareUnit",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.unitIsHealthCareUnit",
      "short" : "unitIsHealthCareUnit",
      "definition" : "True, om enheten själv är en vårdenhet\n\nOm enhet inte är vårdenhet kommer inget värde att returneras.",
      "comment" : "TKB-fält: `..unitIsHealthCareUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitName",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitName",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitManagerHsaId",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitManagerHsaId",
      "short" : "healthCareUnitManagerHsaId",
      "definition" : "healthCareUnitManagerHsaId",
      "comment" : "TKB-fält: `../healthCareUnitManagerHsaId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitStartDate",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitStartDate",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitEndDate",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitEndDate",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareProviderHsaId",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareProviderHsaId",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareProviderName",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareProviderName",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareProviderOrgNo",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareProviderOrgNo",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareProviderStartDate",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareProviderStartDate",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareProviderEndDate",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareProviderEndDate",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.feignedHealthCareUnitMember",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.feignedHealthCareUnitMember",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.feignedHealthCareUnit",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.feignedHealthCareUnit",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.feignedHealthCareProvider",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.feignedHealthCareProvider",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.feignedHealthCareUnitManager",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.feignedHealthCareUnitManager",
      "short" : "feignedHealthCareUnitManager",
      "definition" : "true: om vårdenhetens verksamhetschef är ett fingerat objekt",
      "comment" : "TKB-fält: `..feignedHealthCareUnitManager` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.archivedHealthCareUnitMember",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.archivedHealthCareUnitMember",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.archivedHealthCareUnit",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.archivedHealthCareUnit",
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
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.archivedHealthCareProvider",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.archivedHealthCareProvider",
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
