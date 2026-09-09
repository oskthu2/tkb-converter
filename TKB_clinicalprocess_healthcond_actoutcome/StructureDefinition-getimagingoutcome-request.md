# GetImagingOutcome — Request - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetImagingOutcome — Request**

## Logical Model: GetImagingOutcome — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getimagingoutcome-request | *Version*:4.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:GetImagingOutcomeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetImagingOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getimagingoutcome-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getimagingoutcome-request.csv), [Excel](StructureDefinition-getimagingoutcome-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getimagingoutcome-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getimagingoutcome-request",
  "version" : "4.2.2",
  "name" : "GetImagingOutcomeRequest",
  "title" : "GetImagingOutcome — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:44:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetImagingOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getimagingoutcome-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getimagingoutcome-request",
      "path" : "getimagingoutcome-request",
      "short" : "GetImagingOutcome — Request",
      "definition" : "Logisk modell för requestparametrar i GetImagingOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1)."
    },
    {
      "id" : "getimagingoutcome-request.careUnitHSAId",
      "path" : "getimagingoutcome-request.careUnitHSAId",
      "short" : "HSA-id för PDL-enhet (filter)",
      "definition" : "Filtrering på PDL-enhet. Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getimagingoutcome-request.patientId",
      "path" : "getimagingoutcome-request.patientId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "PersonIdType — id och type-OID. Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getimagingoutcome-request.datePeriod",
      "path" : "getimagingoutcome-request.datePeriod",
      "short" : "Datumperiod för sökning",
      "definition" : "Datumperiod för sökning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getimagingoutcome-request.sourceSystemHSAId",
      "path" : "getimagingoutcome-request.sourceSystemHSAId",
      "short" : "HSA-id för källsystem (filter)",
      "definition" : "HSA-id för källsystem (filter)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getimagingoutcome-request.careContactId",
      "path" : "getimagingoutcome-request.careContactId",
      "short" : "Vårdkontaktid (filter)",
      "definition" : "Vårdkontaktid (filter)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
