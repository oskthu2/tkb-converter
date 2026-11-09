# ListCertificatesForCare — Request - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListCertificatesForCare — Request**

## Logical Model: ListCertificatesForCare — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare-request | *Version*:3.1 |
| Draft as of 2026-11-09 | *Computable Name*:ListCertificatesForCareRequest |
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
  "version" : "3.1",
  "name" : "ListCertificatesForCareRequest",
  "title" : "ListCertificatesForCare — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
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
      "definition" : "Logisk modell för requestparametrar i ListCertificatesForCare.",
      "constraint" : [{
        "key" : "listcertificatesforcarerequest-choice-1",
        "severity" : "error",
        "human" : "Exakt ett av vardgivar-id, enhets-id ska anges (xs:choice i schemat).",
        "expression" : "vardgivar-id.exists() xor enhets-id.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare-request"
      },
      {
        "key" : "listcertificatesforcare-request-vardgivare-xor-enhet",
        "severity" : "error",
        "human" : "Antingen vardgivareId eller enhetsId ska anges, inte båda (xs:choice i schemat).",
        "expression" : "vardgivareId.exists() xor enhetsId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare-request"
      }]
    },
    {
      "id" : "listcertificatesforcare-request.person-id",
      "path" : "listcertificatesforcare-request.person-id",
      "short" : "PersonId",
      "definition" : "Person- eller samordningsnummer för patienten.",
      "comment" : "TKB-fält: `person-id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).\n\n**Mappning DIM:** Patient.person-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare-request.vardgivar-id",
      "path" : "listcertificatesforcare-request.vardgivar-id",
      "short" : "HsaId",
      "definition" : "HSA-id för vårdgivaren.",
      "comment" : "TKB-fält: `vardgivar-id*` (`HsaId (se 7.2.5)`, kardinalitet 0..1).\n\n**Mappning DIM:** Vårdgivare.vårdgivar-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare-request.enhets-id",
      "path" : "listcertificatesforcare-request.enhets-id",
      "short" : "HsaId",
      "definition" : "HSA-id för enheten.",
      "comment" : "TKB-fält: `enhets-id*` (`HsaId (se 7.2.5)`, kardinalitet 0..*).\n\n**Mappning DIM:** Enhet.enhets-id",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    }]
  }
}

```
