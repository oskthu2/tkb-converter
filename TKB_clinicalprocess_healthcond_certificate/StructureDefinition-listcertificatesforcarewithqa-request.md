# ListCertificatesForCareWithQA — Request - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListCertificatesForCareWithQA — Request**

## Logical Model: ListCertificatesForCareWithQA — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcarewithqa-request | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:ListCertificatesForCareWithQARequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i ListCertificatesForCareWithQA. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-listcertificatesforcarewithqa-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listcertificatesforcarewithqa-request.csv), [Excel](StructureDefinition-listcertificatesforcarewithqa-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listcertificatesforcarewithqa-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcarewithqa-request",
  "version" : "4.1-RC1",
  "name" : "ListCertificatesForCareWithQARequest",
  "title" : "ListCertificatesForCareWithQA — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i ListCertificatesForCareWithQA.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcarewithqa-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listcertificatesforcarewithqa-request",
      "path" : "listcertificatesforcarewithqa-request",
      "short" : "ListCertificatesForCareWithQA — Request",
      "definition" : "Logisk modell för requestparametrar i ListCertificatesForCareWithQA."
    },
    {
      "id" : "listcertificatesforcarewithqa-request.personId",
      "path" : "listcertificatesforcarewithqa-request.personId",
      "short" : "Person- eller samordningsnummer för patienten",
      "definition" : "Person- eller samordningsnummer för patienten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa-request.enhetsId",
      "path" : "listcertificatesforcarewithqa-request.enhetsId",
      "short" : "HSA-id för enheten/enheterna (exklusivt med vardgivareId)",
      "definition" : "Ska ej anges tillsammans med vardgivareId.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa-request.vardgivareId",
      "path" : "listcertificatesforcarewithqa-request.vardgivareId",
      "short" : "HSA-id för vårdgivaren (exklusivt med enhetsId)",
      "definition" : "Ska ej anges tillsammans med enhetsId.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa-request.fromTidpunkt",
      "path" : "listcertificatesforcarewithqa-request.fromTidpunkt",
      "short" : "Hämta händelser från och med denna tidpunkt",
      "definition" : "Hämta händelser från och med denna tidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa-request.tomTidpunkt",
      "path" : "listcertificatesforcarewithqa-request.tomTidpunkt",
      "short" : "Hämta händelser fram till och med denna tidpunkt",
      "definition" : "Hämta händelser fram till och med denna tidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
