# SetCertificateStatus — Request - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SetCertificateStatus — Request**

## Logical Model: SetCertificateStatus — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/setcertificatestatus-request | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:SetCertificateStatusRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i SetCertificateStatus. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-setcertificatestatus-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-setcertificatestatus-request.csv), [Excel](StructureDefinition-setcertificatestatus-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "setcertificatestatus-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/setcertificatestatus-request",
  "version" : "4.1-RC1",
  "name" : "SetCertificateStatusRequest",
  "title" : "SetCertificateStatus — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i SetCertificateStatus.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/setcertificatestatus-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "setcertificatestatus-request",
      "path" : "setcertificatestatus-request",
      "short" : "SetCertificateStatus — Request",
      "definition" : "Logisk modell för requestparametrar i SetCertificateStatus."
    },
    {
      "id" : "setcertificatestatus-request.intygsId",
      "path" : "setcertificatestatus-request.intygsId",
      "short" : "Unikt ID för det intyg vars status ska sättas",
      "definition" : "Unikt ID för det intyg vars status ska sättas",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "setcertificatestatus-request.part",
      "path" : "setcertificatestatus-request.part",
      "short" : "Kodat värde för den part statusen gäller för",
      "definition" : "Kodat värde för den part statusen gäller för",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/ValueSet/part-vs"
      }
    },
    {
      "id" : "setcertificatestatus-request.certificateStatus",
      "path" : "setcertificatestatus-request.certificateStatus",
      "short" : "Kodat värde för intygsstatus",
      "definition" : "Kodat värde för intygsstatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/ValueSet/statuskod-vs"
      }
    },
    {
      "id" : "setcertificatestatus-request.tidpunkt",
      "path" : "setcertificatestatus-request.tidpunkt",
      "short" : "Tidpunkt då statusen sattes",
      "definition" : "Tidpunkt då statusen sattes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
