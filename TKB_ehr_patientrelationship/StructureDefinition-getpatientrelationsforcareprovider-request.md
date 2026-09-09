# GetPatientRelationsForCareProvider — Request - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPatientRelationsForCareProvider — Request**

## Logical Model: GetPatientRelationsForCareProvider — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforcareprovider-request | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetPatientRelationsForCareProviderRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetPatientRelationsForCareProvider. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-getpatientrelationsforcareprovider-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpatientrelationsforcareprovider-request.csv), [Excel](StructureDefinition-getpatientrelationsforcareprovider-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpatientrelationsforcareprovider-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforcareprovider-request",
  "version" : "1.0.1",
  "name" : "GetPatientRelationsForCareProviderRequest",
  "title" : "GetPatientRelationsForCareProvider — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:55:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetPatientRelationsForCareProvider.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforcareprovider-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpatientrelationsforcareprovider-request",
      "path" : "getpatientrelationsforcareprovider-request",
      "short" : "GetPatientRelationsForCareProvider — Request",
      "definition" : "Logisk modell för requestparametrar i GetPatientRelationsForCareProvider."
    },
    {
      "id" : "getpatientrelationsforcareprovider-request.careProviderId",
      "path" : "getpatientrelationsforcareprovider-request.careProviderId",
      "short" : "HSA-id på den vårdgivare vars patientrelationer skall hämtas",
      "definition" : "HSA-id på den vårdgivare vars patientrelationer skall hämtas",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider-request.createdOnOrAfter",
      "path" : "getpatientrelationsforcareprovider-request.createdOnOrAfter",
      "short" : "Valfritt startdatum — returnerar bara patientrelationer skapade på eller efter denna tidpunkt",
      "definition" : "Användbart vid upprepande förfrågningar för att undvika att data som redan inhämtats returneras igen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider-request.getCancelledFlag",
      "path" : "getpatientrelationsforcareprovider-request.getCancelledFlag",
      "short" : "Flagga som avgör om makulerade och återkallade patientrelationer skall returneras",
      "definition" : "Flagga som avgör om makulerade och återkallade patientrelationer skall returneras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
