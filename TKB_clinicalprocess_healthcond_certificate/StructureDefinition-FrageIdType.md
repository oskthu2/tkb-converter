# FrageIdType - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FrageIdType**

## Data Type Profile: FrageIdType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/FrageIdType | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:FrageIdType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
FrageIdType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [CreateDraftCertificate — Request](StructureDefinition-createdraftcertificate-request.md), [GetCertificate](StructureDefinition-getcertificate.md), [ListCertificatesForCare](StructureDefinition-listcertificatesforcare.md), [ListCertificatesForCareWithQA](StructureDefinition-listcertificatesforcarewithqa.md)... Show 3 more, [ListCertificatesForCitizen](StructureDefinition-listcertificatesforcitizan.md), [RegisterCertificate — Request](StructureDefinition-registercertificate-request.md) and [SendMessageToCare — Request](StructureDefinition-sendmessagetocare-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-FrageIdType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrageIdType.csv), [Excel](StructureDefinition-FrageIdType.xlsx), [Schematron](StructureDefinition-FrageIdType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrageIdType",
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/FrageIdType",
  "name" : "FrageIdType",
  "title" : "FrageIdType",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "FrageIdType (xs:simpleType i domänens schema.)",
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
        "key" : "local-frageidtype-pattern",
        "severity" : "error",
        "human" : "FrageIdType ska följa mönstret i schemat: [0-9]+",
        "expression" : "matches('^(?:(?:[0-9]+))$')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/FrageIdType"
      }]
    }]
  }
}

```
