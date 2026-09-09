# ListCertificatesForCare — Request - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListCertificatesForCare — Request**

## Logical Model: ListCertificatesForCare — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare-request | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:ListCertificatesForCareRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i ListCertificatesForCare. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-listcertificatesforcare-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listcertificatesforcare-request.csv), [Excel](StructureDefinition-listcertificatesforcare-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listcertificatesforcare-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare-request",
  "version" : "4.1-RC1",
  "name" : "ListCertificatesForCareRequest",
  "title" : "ListCertificatesForCare — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i ListCertificatesForCare.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listcertificatesforcare-request",
      "path" : "listcertificatesforcare-request",
      "short" : "ListCertificatesForCare — Request",
      "definition" : "Logisk modell för requestparametrar i ListCertificatesForCare."
    },
    {
      "id" : "listcertificatesforcare-request.personId",
      "path" : "listcertificatesforcare-request.personId",
      "short" : "Person- eller samordningsnummer för patienten",
      "definition" : "Person- eller samordningsnummer för patienten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificatesforcare-request.vardgivareId",
      "path" : "listcertificatesforcare-request.vardgivareId",
      "short" : "HSA-id för vårdgivaren (exklusivt med enhetsId)",
      "definition" : "HSA-id för den vårdgivare vars intyg ska sökas. Kan ej kombineras med enhetsId.\nVillkorlig kardinalitet: antingen vardgivareId eller enhetsId ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificatesforcare-request.enhetsId",
      "path" : "listcertificatesforcare-request.enhetsId",
      "short" : "HSA-id för enhet/enheter (exklusivt med vardgivareId)",
      "definition" : "HSA-id för en eller flera enheter vars intyg ska sökas. Kan ej kombineras med vardgivareId.\nVillkorlig kardinalitet: antingen enhetsId eller vardgivareId ska anges.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
