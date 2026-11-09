# DelfrageIdType - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DelfrageIdType**

## Data Type Profile: DelfrageIdType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/DelfrageIdType | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:DelfrageIdType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
DelfrageIdType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [CreateDraftCertificate — Request](StructureDefinition-createdraftcertificate-request.md), [GetCertificate](StructureDefinition-getcertificate.md), [ListCertificatesForCare](StructureDefinition-listcertificatesforcare.md), [ListCertificatesForCareWithQA](StructureDefinition-listcertificatesforcarewithqa.md)... Show 2 more, [ListCertificatesForCitizen](StructureDefinition-listcertificatesforcitizan.md) and [RegisterCertificate — Request](StructureDefinition-registercertificate-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-DelfrageIdType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DelfrageIdType.csv), [Excel](StructureDefinition-DelfrageIdType.xlsx), [Schematron](StructureDefinition-DelfrageIdType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DelfrageIdType",
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/DelfrageIdType",
  "name" : "DelfrageIdType",
  "title" : "DelfrageIdType",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "DelfrageIdType (xs:simpleType i domänens schema.)",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "string",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/string",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "string",
      "path" : "string",
      "constraint" : [{
        "key" : "local-delfrageidtype-pattern",
        "severity" : "error",
        "human" : "DelfrageIdType ska följa mönstret i schemat: [0-9]+\\.[0-9]+",
        "expression" : "matches('^(?:(?:[0-9]+\\\\.[0-9]+))$')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/DelfrageIdType"
      }]
    }]
  }
}

```
