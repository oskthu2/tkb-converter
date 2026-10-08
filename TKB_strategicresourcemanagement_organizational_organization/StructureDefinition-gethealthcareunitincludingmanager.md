# GetHealthCareUnitIncludingManager — Response - strategicresourcemanagement: organizational: organization v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnitIncludingManager — Response**

## Logical Model: GetHealthCareUnitIncludingManager — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitincludingmanager | *Version*:2.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetHealthCareUnitIncludingManager |
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
  "date" : "2026-10-08T18:51:18+00:00",
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
      "short" : "healthCareUnit",
      "definition" : "healthCareUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitMemberHsaId",
      "path" : "gethealthcareunitincludingmanager.healthCareUnit.healthCareUnitMemberHsaId",
      "short" : "healthCareUnitMemberHsaId",
      "definition" : "healthCareUnitMemberHsaId",
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
      "definition" : "healthCareUnitMemberName",
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
      "definition" : "healthCareUnitMemberStartDate",
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
      "definition" : "healthCareUnitMemberEndDate",
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
      "definition" : "healthCareUnitHsaId",
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
      "definition" : "unitIsHealthCareUnit",
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
      "definition" : "healthCareUnitName",
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
      "definition" : "healthCareUnitStartDate",
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
      "definition" : "healthCareUnitEndDate",
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
      "definition" : "healthCareProviderHsaId",
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
      "definition" : "healthCareProviderName",
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
      "definition" : "healthCareProviderOrgNo",
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
      "definition" : "healthCareProviderStartDate",
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
      "definition" : "healthCareProviderEndDate",
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
      "definition" : "feignedHealthCareUnitMember",
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
      "definition" : "feignedHealthCareUnit",
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
      "definition" : "feignedHealthCareUnitManager",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
