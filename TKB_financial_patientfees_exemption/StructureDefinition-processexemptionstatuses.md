# ProcessExemptionStatuses — Response - financial: patientfees: exemption v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessExemptionStatuses — Response**

## Logical Model: ProcessExemptionStatuses — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/financial-patientfees-exemption/StructureDefinition/processexemptionstatuses | *Version*:1.0 |
| Active as of 2026-10-08 | *Computable Name*:ProcessExemptionStatuses |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i ProcessExemptionStatuses (urn:riv:financial:patientfees:exemption:ProcessExemptionStatusesResponder:1, ProcessExemptionStatusesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.financial-patientfees-exemption|current/StructureDefinition/StructureDefinition-processexemptionstatuses.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processexemptionstatuses.csv), [Excel](StructureDefinition-processexemptionstatuses.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processexemptionstatuses",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/financial-patientfees-exemption/StructureDefinition/processexemptionstatuses",
  "version" : "1.0",
  "name" : "ProcessExemptionStatuses",
  "title" : "ProcessExemptionStatuses — Response",
  "status" : "active",
  "date" : "2026-10-08T18:24:38+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i ProcessExemptionStatuses\n(urn:riv:financial:patientfees:exemption:ProcessExemptionStatusesResponder:1, ProcessExemptionStatusesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/financial-patientfees-exemption/StructureDefinition/processexemptionstatuses",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processexemptionstatuses",
      "path" : "processexemptionstatuses",
      "short" : "ProcessExemptionStatuses — Response",
      "definition" : "Logisk modell för svaret i ProcessExemptionStatuses\n(urn:riv:financial:patientfees:exemption:ProcessExemptionStatusesResponder:1, ProcessExemptionStatusesResponseType)."
    },
    {
      "id" : "processexemptionstatuses.resultCode",
      "path" : "processexemptionstatuses.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/financial-patientfees-exemption/ValueSet/patientfees-exemption-resultcode-vs"
      }
    },
    {
      "id" : "processexemptionstatuses.resultText",
      "path" : "processexemptionstatuses.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
