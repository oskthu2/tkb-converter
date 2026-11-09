# ListCertificatesForCitizen — Request - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListCertificatesForCitizen — Request**

## Logical Model: ListCertificatesForCitizen — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcitizan-request | *Version*:4.1.0-rc1 |
| Draft as of 2026-11-09 | *Computable Name*:ListCertificatesForCitizanRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i ListCertificatesForCitizen. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-listcertificatesforcitizan-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listcertificatesforcitizan-request.csv), [Excel](StructureDefinition-listcertificatesforcitizan-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listcertificatesforcitizan-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcitizan-request",
  "version" : "4.1.0-rc1",
  "name" : "ListCertificatesForCitizanRequest",
  "title" : "ListCertificatesForCitizen — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i ListCertificatesForCitizen.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcitizan-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listcertificatesforcitizan-request",
      "path" : "listcertificatesforcitizan-request",
      "short" : "ListCertificatesForCitizen — Request",
      "definition" : "Logisk modell för requestparametrar i ListCertificatesForCitizen."
    },
    {
      "id" : "listcertificatesforcitizan-request.person-id",
      "path" : "listcertificatesforcitizan-request.person-id",
      "short" : "PersonId",
      "definition" : "person-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcitizan-request.intygTyp",
      "path" : "listcertificatesforcitizan-request.intygTyp",
      "short" : "TypAvIntyg",
      "definition" : "intygTyp",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcitizan-request.arkiverade",
      "path" : "listcertificatesforcitizan-request.arkiverade",
      "short" : "arkiverade",
      "definition" : "arkiverade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "listcertificatesforcitizan-request.fromDatum",
      "path" : "listcertificatesforcitizan-request.fromDatum",
      "short" : "fromDatum",
      "definition" : "fromDatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "listcertificatesforcitizan-request.tomDatum",
      "path" : "listcertificatesforcitizan-request.tomDatum",
      "short" : "tomDatum",
      "definition" : "tomDatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "listcertificatesforcitizan-request.part",
      "path" : "listcertificatesforcitizan-request.part",
      "short" : "Part",
      "definition" : "part",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    }]
  }
}

```
