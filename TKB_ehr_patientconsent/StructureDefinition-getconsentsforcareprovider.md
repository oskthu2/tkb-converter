# GetConsentsForCareProvider - ehr: patientconsent — Samtyckeshantering v1.0.1-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConsentsForCareProvider**

## Logical Model: GetConsentsForCareProvider 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforcareprovider | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetConsentsForCareProvider |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetConsentsForCareProvider (RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1). Representerar responsens informationsstruktur. 
Tjänst som läser alla giltiga samtyckesintyg för en viss vårdgivare med grundinformation. Stödjer paginering via flaggan HasMore och CreatedOnOrAfter för inkrementell hämtning. Valfritt returneras även makulerade/återkallade intyg via getCancelledFlag. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientconsent|current/StructureDefinition/StructureDefinition-getconsentsforcareprovider.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getconsentsforcareprovider.csv), [Excel](StructureDefinition-getconsentsforcareprovider.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getconsentsforcareprovider",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforcareprovider",
  "version" : "1.0",
  "name" : "GetConsentsForCareProvider",
  "title" : "GetConsentsForCareProvider",
  "status" : "draft",
  "date" : "2026-11-09T03:30:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetConsentsForCareProvider\n(RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som läser alla giltiga samtyckesintyg för en viss vårdgivare med grundinformation.\nStödjer paginering via flaggan HasMore och CreatedOnOrAfter för inkrementell hämtning.\nValfritt returneras även makulerade/återkallade intyg via getCancelledFlag.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforcareprovider",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getconsentsforcareprovider",
      "path" : "getconsentsforcareprovider",
      "short" : "GetConsentsForCareProvider",
      "definition" : "Logisk modell för tjänstekontraktet GetConsentsForCareProvider\n(RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som läser alla giltiga samtyckesintyg för en viss vårdgivare med grundinformation.\nStödjer paginering via flaggan HasMore och CreatedOnOrAfter för inkrementell hämtning.\nValfritt returneras även makulerade/återkallade intyg via getCancelledFlag."
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType",
      "short" : "GetAllAssertionsResultType",
      "definition" : "GetAllAssertionsResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Result",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Result.ResultCode",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Result.ResultCode",
      "short" : "ResultCode",
      "definition" : "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientconsent/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Result.ResultText",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.MoreOnOrAfter",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.MoreOnOrAfter",
      "short" : "MoreOnOrAfter",
      "definition" : "MoreOnOrAfter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.HasMore",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.HasMore",
      "short" : "HasMore",
      "definition" : "HasMore",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions",
      "short" : "PDLAssertionType",
      "definition" : "Assertions",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.AssertionId",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.AssertionId",
      "short" : "AssertionId",
      "definition" : "AssertionId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.AssertionType",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.AssertionType",
      "short" : "AssertionType",
      "definition" : "AssertionType Tillåtna värden: Consent, Emergency.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientconsent/ValueSet/assertiontype-vs"
      }
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.Scope",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.Scope",
      "short" : "Scope",
      "definition" : "Scope Tillåtna värden: NationalLevel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientconsent/ValueSet/scope-vs"
      }
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.PatientId",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.CareProviderId",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.CareUnitId",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.CareUnitId",
      "short" : "CareUnitId",
      "definition" : "CareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.EmployeeId",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.StartDate",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.StartDate",
      "short" : "StartDate",
      "definition" : "StartDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.EndDate",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.EndDate",
      "short" : "EndDate",
      "definition" : "EndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.OwnerId",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.Assertions.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.CancelledAssertions",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.CancelledAssertions",
      "short" : "CancelledAssertionType",
      "definition" : "CancelledAssertions",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.CancelledAssertions.AssertionId",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.CancelledAssertions.AssertionId",
      "short" : "AssertionId",
      "definition" : "AssertionId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.GetAllAssertionsResultType.CancelledAssertions.CancellationDate",
      "path" : "getconsentsforcareprovider.GetAllAssertionsResultType.CancelledAssertions.CancellationDate",
      "short" : "CancellationDate",
      "definition" : "CancellationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
