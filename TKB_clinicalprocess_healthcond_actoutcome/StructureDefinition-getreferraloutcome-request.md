# GetReferralOutcome — Request - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetReferralOutcome — Request**

## Logical Model: GetReferralOutcome — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome-request | *Version*:4.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:GetReferralOutcomeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetReferralOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getreferraloutcome-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getreferraloutcome-request.csv), [Excel](StructureDefinition-getreferraloutcome-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getreferraloutcome-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome-request",
  "version" : "4.2.2",
  "name" : "GetReferralOutcomeRequest",
  "title" : "GetReferralOutcome — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:44:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetReferralOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getreferraloutcome-request",
      "path" : "getreferraloutcome-request",
      "short" : "GetReferralOutcome — Request",
      "definition" : "Logisk modell för requestparametrar i GetReferralOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3)."
    },
    {
      "id" : "getreferraloutcome-request.careUnitHSAid",
      "path" : "getreferraloutcome-request.careUnitHSAid",
      "short" : "HSA-id för vårdenhet (filter)",
      "definition" : "Filtrering på vårdenhet. Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome-request.patientId",
      "path" : "getreferraloutcome-request.patientId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "PersonIdType — id och type-OID. Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome-request.datePeriod",
      "path" : "getreferraloutcome-request.datePeriod",
      "short" : "Datumperiod för sökning",
      "definition" : "start och end är obligatoriska om datePeriod anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getreferraloutcome-request.sourceSystemHSAId",
      "path" : "getreferraloutcome-request.sourceSystemHSAId",
      "short" : "HSA-id för källsystem (filter)",
      "definition" : "HSA-id för källsystem (filter)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome-request.careContactId",
      "path" : "getreferraloutcome-request.careContactId",
      "short" : "Vårdkontaktid (filter)",
      "definition" : "Begränsar sökning till specifika vårdkontakter. Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
