# GetCertificate — Request - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCertificate — Request**

## Logical Model: GetCertificate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/getcertificate-request | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetCertificateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1). Hämtar ett specifikt läkarintyg från intygstjänsten. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-getcertificate-request.json)

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
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/getcertificate-request",
  "version" : "3.1.0",
  "name" : "GetCertificateRequest",
  "title" : "GetCertificate — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1).\nHämtar ett specifikt läkarintyg från intygstjänsten.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/getcertificate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcertificate-request",
      "path" : "getcertificate-request",
      "short" : "GetCertificate — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1).\nHämtar ett specifikt läkarintyg från intygstjänsten."
    },
    {
      "id" : "getcertificate-request.certificateId",
      "path" : "getcertificate-request.certificateId",
      "short" : "Identitet på intyget (GUID)",
      "definition" : "ASSUME: Tabellen anger 'O' (Obligatorisk?) men det är oklart om båda fälten eller ett av dem krävs.\nSe QUESTIONS.md BLOCK-HR-001.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate-request.nationalIdentityNumber",
      "path" : "getcertificate-request.nationalIdentityNumber",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
