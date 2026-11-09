# GetCommissionsForPerson - ehr: commission v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCommissionsForPerson**

## Logical Model: GetCommissionsForPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-commission/StructureDefinition/getcommissionsforperson | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetCommissionsForPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetCommissionsForPerson (RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1). Representerar responsens informationsstruktur (GetCommissionsForPersonResult). 
Tjänsten hämtar alla medarbetaruppdrag som personen är kopplad till, returnerar det senast valda uppdraget och anger om ett uppdrag valts inom de senaste 12 timmarna. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-commission|current/StructureDefinition/StructureDefinition-getcommissionsforperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcommissionsforperson.csv), [Excel](StructureDefinition-getcommissionsforperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcommissionsforperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-commission/StructureDefinition/getcommissionsforperson",
  "version" : "1.0",
  "name" : "GetCommissionsForPerson",
  "title" : "GetCommissionsForPerson",
  "status" : "draft",
  "date" : "2026-11-09T03:29:07+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetCommissionsForPerson\n(RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1).\nRepresenterar responsens informationsstruktur (GetCommissionsForPersonResult).\n\nTjänsten hämtar alla medarbetaruppdrag som personen är kopplad till,\nreturnerar det senast valda uppdraget och anger om ett uppdrag valts\ninom de senaste 12 timmarna.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-commission/StructureDefinition/getcommissionsforperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcommissionsforperson",
      "path" : "getcommissionsforperson",
      "short" : "GetCommissionsForPerson",
      "definition" : "Logisk modell för tjänstekontraktet GetCommissionsForPerson\n(RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1).\nRepresenterar responsens informationsstruktur (GetCommissionsForPersonResult).\n\nTjänsten hämtar alla medarbetaruppdrag som personen är kopplad till,\nreturnerar det senast valda uppdraget och anger om ett uppdrag valts\ninom de senaste 12 timmarna."
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType",
      "short" : "GetCommissionsForPersonResultType",
      "definition" : "GetCommissionsForPersonResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getcommissions-careprovider-xor",
        "severity" : "warning",
        "human" : "Antingen healthCareProviderHsaId eller healthCareProviderName ska anges",
        "expression" : "Commissions.HealthCareProviderHsaId.exists() or Commissions.HealthCareProviderName.exists()",
        "source" : "https://fhir.inera.se/ig/ehr-commission/StructureDefinition/getcommissionsforperson"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Result",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Result.ResultCode",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Result.ResultCode",
      "short" : "ResultCode",
      "definition" : "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-commission/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Result.ResultText",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.LastSelectedCommissionHsaId",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.LastSelectedCommissionHsaId",
      "short" : "LastSelectedCommissionHsaId",
      "definition" : "LastSelectedCommissionHsaId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.SelectionPerformed",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.SelectionPerformed",
      "short" : "SelectionPerformed",
      "definition" : "SelectionPerformed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions",
      "short" : "CommissionType",
      "definition" : "Commissions",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.CommissionHsaId",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.CommissionHsaId",
      "short" : "CommissionHsaId",
      "definition" : "CommissionHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.CommissionName",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.CommissionName",
      "short" : "CommissionName",
      "definition" : "CommissionName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.CommissionPurpose",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.CommissionPurpose",
      "short" : "CommissionPurpose",
      "definition" : "CommissionPurpose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareUnitHsaId",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareUnitHsaId",
      "short" : "HealthCareUnitHsaId",
      "definition" : "HealthCareUnitHsaId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareUnitName",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareUnitName",
      "short" : "HealthCareUnitName",
      "definition" : "HealthCareUnitName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareUnitStartDate",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareUnitStartDate",
      "short" : "HealthCareUnitStartDate",
      "definition" : "HealthCareUnitStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareUnitEndDate",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareUnitEndDate",
      "short" : "HealthCareUnitEndDate",
      "definition" : "HealthCareUnitEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareProviderHsaId",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareProviderHsaId",
      "short" : "HealthCareProviderHsaId",
      "definition" : "HealthCareProviderHsaId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareProviderName",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareProviderName",
      "short" : "HealthCareProviderName",
      "definition" : "HealthCareProviderName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareProviderOrgNo",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareProviderOrgNo",
      "short" : "HealthCareProviderOrgNo",
      "definition" : "HealthCareProviderOrgNo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareProviderStartDate",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareProviderStartDate",
      "short" : "HealthCareProviderStartDate",
      "definition" : "HealthCareProviderStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareProviderEndDate",
      "path" : "getcommissionsforperson.GetCommissionsForPersonResultType.Commissions.HealthCareProviderEndDate",
      "short" : "HealthCareProviderEndDate",
      "definition" : "HealthCareProviderEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
