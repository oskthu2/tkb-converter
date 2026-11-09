# GetConsentsForPatient - ehr: patientconsent — Samtyckeshantering v1.0.1-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConsentsForPatient**

## Logical Model: GetConsentsForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforpatient | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetConsentsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetConsentsForPatient (RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1). Representerar responsens informationsstruktur. 
Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation. Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents). Ogiltiga intyg (giltigt t o m har passerats, makulerade eller återkallade) returneras ej. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientconsent|current/StructureDefinition/StructureDefinition-getconsentsforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getconsentsforpatient.csv), [Excel](StructureDefinition-getconsentsforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getconsentsforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforpatient",
  "version" : "1.0",
  "name" : "GetConsentsForPatient",
  "title" : "GetConsentsForPatient",
  "status" : "draft",
  "date" : "2026-11-09T03:30:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetConsentsForPatient\n(RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.\nMed giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som\nunderlag vid en kontroll gällande åtkomst (CheckConsents). Ogiltiga intyg (giltigt t o m har passerats,\nmakulerade eller återkallade) returneras ej.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getconsentsforpatient",
      "path" : "getconsentsforpatient",
      "short" : "GetConsentsForPatient",
      "definition" : "Logisk modell för tjänstekontraktet GetConsentsForPatient\n(RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.\nMed giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som\nunderlag vid en kontroll gällande åtkomst (CheckConsents). Ogiltiga intyg (giltigt t o m har passerats,\nmakulerade eller återkallade) returneras ej."
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType",
      "path" : "getconsentsforpatient.GetConsentsResultType",
      "short" : "GetConsentsResultType",
      "definition" : "GetConsentsResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.Result",
      "path" : "getconsentsforpatient.GetConsentsResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.Result.ResultCode",
      "path" : "getconsentsforpatient.GetConsentsResultType.Result.ResultCode",
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
      "id" : "getconsentsforpatient.GetConsentsResultType.Result.ResultText",
      "path" : "getconsentsforpatient.GetConsentsResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions",
      "short" : "PDLAssertionType",
      "definition" : "PdlAssertions",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.AssertionId",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.AssertionId",
      "short" : "AssertionId",
      "definition" : "AssertionId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.AssertionType",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.AssertionType",
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
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.Scope",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.Scope",
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
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.PatientId",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.CareProviderId",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.CareUnitId",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.CareUnitId",
      "short" : "CareUnitId",
      "definition" : "CareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.EmployeeId",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.StartDate",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.StartDate",
      "short" : "StartDate",
      "definition" : "StartDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.EndDate",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.EndDate",
      "short" : "EndDate",
      "definition" : "EndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.OwnerId",
      "path" : "getconsentsforpatient.GetConsentsResultType.PdlAssertions.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
