# GetCertificate — Request - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCertificate — Request**

## Logical Model: GetCertificate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/getcertificate-request | *Version*:2.1 |
| Draft as of 2026-11-09 | *Computable Name*:GetCertificateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetCertificate. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-getcertificate-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcertificate-request.csv), [Excel](StructureDefinition-getcertificate-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcertificate-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/getcertificate-request",
  "version" : "2.1",
  "name" : "GetCertificateRequest",
  "title" : "GetCertificate — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetCertificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/getcertificate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcertificate-request",
      "path" : "getcertificate-request",
      "short" : "GetCertificate — Request",
      "definition" : "Logisk modell för requestparametrar i GetCertificate."
    },
    {
      "id" : "getcertificate-request.intygs-id",
      "path" : "getcertificate-request.intygs-id",
      "short" : "IntygId",
      "definition" : "Unikt ID för det intyg som skall hämtas.",
      "comment" : "TKB-fält: `intygs-id` (`IntygId (se 7.2.6)`, kardinalitet 1..1).\n\n**Mappning DIM:** Intyg.intygs-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcertificate-request.part",
      "path" : "getcertificate-request.part",
      "short" : "Part",
      "definition" : "Kodat värde som anger den part i intygshanteringsprocessen som skickar begäran om att hämta intyget.",
      "comment" : "TKB-fält: `part` (`Part (se 7.2.9)`, kardinalitet 1..1).\n\n**Mappning DIM:** Part.part",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    }]
  }
}

```
