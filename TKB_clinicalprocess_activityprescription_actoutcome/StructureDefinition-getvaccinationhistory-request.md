# GetVaccinationHistory — Request - clinicalprocess: activityprescription: actoutcome v2.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetVaccinationHistory — Request**

## Logical Model: GetVaccinationHistory — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory-request | *Version*:2.2.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetVaccinationHistoryRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetVaccinationHistory. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-actoutcome|current/StructureDefinition/StructureDefinition-getvaccinationhistory-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getvaccinationhistory-request.csv), [Excel](StructureDefinition-getvaccinationhistory-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getvaccinationhistory-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory-request",
  "version" : "2.2.1",
  "name" : "GetVaccinationHistoryRequest",
  "title" : "GetVaccinationHistory — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:42:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetVaccinationHistory.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getvaccinationhistory-request",
      "path" : "getvaccinationhistory-request",
      "short" : "GetVaccinationHistory — Request",
      "definition" : "Logisk modell för requestparametrar i GetVaccinationHistory."
    },
    {
      "id" : "getvaccinationhistory-request.careUnitHSAid",
      "path" : "getvaccinationhistory-request.careUnitHSAid",
      "short" : "Begränsar sökningen till angivna informationsägande vårdenheter",
      "definition" : "Anges med HSA-id. Motsvarar careUnitHSAId i svarsfältet.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory-request.patientId",
      "path" : "getvaccinationhistory-request.patientId",
      "short" : "Begränsar sökningen till angiven personidentifierare för patient",
      "definition" : "Tjänsteproducenten ska i svaret enbart returnera information relaterad till angiven patient.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory-request.timePeriod",
      "path" : "getvaccinationhistory-request.timePeriod",
      "short" : "Begränsar sökningen till det angivna intervallet",
      "definition" : "Begränsningen innebär att endast poster returneras med en relevant tidpunkt inom perioden.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getvaccinationhistory-request.sourceSystemHSAid",
      "path" : "getvaccinationhistory-request.sourceSystemHSAid",
      "short" : "Begränsar sökningen till angivet källsystem",
      "definition" : "Begränsar sökningen till angivet källsystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory-request.careContactId",
      "path" : "getvaccinationhistory-request.careContactId",
      "short" : "Begränsar sökningen till angiven vård- och omsorgskontakt",
      "definition" : "Begränsar sökningen till angiven vård- och omsorgskontakt",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
