# GetHealthCareUnitList — Response - strategicresourcemanagement: organizational: organization v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnitList — Response**

## Logical Model: GetHealthCareUnitList — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitlist | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetHealthCareUnitList |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetHealthCareUnitList (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitListResponder:2, GetHealthCareUnitListResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-organizational-organization|current/StructureDefinition/StructureDefinition-gethealthcareunitlist.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunitlist.csv), [Excel](StructureDefinition-gethealthcareunitlist.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunitlist",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitlist",
  "version" : "2.0",
  "name" : "GetHealthCareUnitList",
  "title" : "GetHealthCareUnitList — Response",
  "status" : "draft",
  "date" : "2026-11-06T21:49:07+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetHealthCareUnitList\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitListResponder:2, GetHealthCareUnitListResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitlist",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunitlist",
      "path" : "gethealthcareunitlist",
      "short" : "GetHealthCareUnitList — Response",
      "definition" : "Logisk modell för svaret i GetHealthCareUnitList\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitListResponder:2, GetHealthCareUnitListResponseType)."
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList",
      "path" : "gethealthcareunitlist.healthCareUnitList",
      "short" : "healthCareUnitList",
      "definition" : "healthCareUnitList",
      "comment" : "TKB-fält: `healthCareUnitList` (`HealthCareUnitListType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderHsaId",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderHsaId",
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
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderName",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderName",
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
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderOrgNo",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderOrgNo",
      "short" : "healthCareProviderOrgNo",
      "definition" : "healthCareProviderOrgNo",
      "comment" : "TKB-fält: `../healthCareProviderOrgNo` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderStartDate",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderStartDate",
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
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderEndDate",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderEndDate",
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
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit",
      "short" : "healthCareUnit",
      "definition" : "Ingående vårdenhet enligt PDL",
      "comment" : "TKB-fält: `..healthCareUnit` (`HealthCareUnitType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitHsaId",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitHsaId",
      "short" : "healthCareUnitHsaId",
      "definition" : "HSA-identitet ingående enhet",
      "comment" : "TKB-fält: `.. ..healthCareUnitHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitName",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitName",
      "short" : "healthCareUnitName",
      "definition" : "Namn ingående enhet",
      "comment" : "TKB-fält: `.. ..healthCareUnitName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitStartDate",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitStartDate",
      "short" : "healthCareUnitStartDate",
      "definition" : "Startdatum för vårdenhetens verksamhet.",
      "comment" : "TKB-fält: `.. ..healthCareUnitStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitEndDate",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitEndDate",
      "short" : "healthCareUnitEndDate",
      "definition" : "Slutdatum för vårdenhetens verksamhet.",
      "comment" : "TKB-fält: `.. ..healthCareUnitEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.feignedHealthCareUnit",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.feignedHealthCareUnit",
      "short" : "feignedHealthCareUnit",
      "definition" : "feignedHealthCareUnit",
      "comment" : "TKB-fält: `../../feignedHealthCareUnit` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.archivedHealthCareUnit",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.archivedHealthCareUnit",
      "short" : "archivedHealthCareUnit",
      "definition" : "archivedHealthCareUnit",
      "comment" : "TKB-fält: `../../archivedHealthCareUnit` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.feignedHealthCareProvider",
      "path" : "gethealthcareunitlist.healthCareUnitList.feignedHealthCareProvider",
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
      "id" : "gethealthcareunitlist.healthCareUnitList.archivedHealthCareProvider",
      "path" : "gethealthcareunitlist.healthCareUnitList.archivedHealthCareProvider",
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
