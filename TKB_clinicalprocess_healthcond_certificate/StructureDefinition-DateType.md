# DateType - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DateType**

## Data Type Profile: DateType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/DateType | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:DateType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Date avgränsat till YYYY-MM-DD (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [ListCertificatesForCareWithQA](StructureDefinition-listcertificatesforcarewithqa.md), [ListCertificatesForCitizen — Request](StructureDefinition-listcertificatesforcitizan-request.md), [ListSickLeavesForCare](StructureDefinition-listsickleavesforcare.md), [SendMessageToCare — Request](StructureDefinition-sendmessagetocare-request.md) and [SendMessageToRecipient — Request](StructureDefinition-sendmessagetorecipient-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-DateType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DateType.csv), [Excel](StructureDefinition-DateType.xlsx), [Schematron](StructureDefinition-DateType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DateType",
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/DateType",
  "name" : "DateType",
  "title" : "DateType",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Date avgränsat till YYYY-MM-DD (xs:simpleType i domänens schema.)",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "date",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/date",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "date",
      "path" : "date",
      "constraint" : [{
        "key" : "local-datetype-pattern",
        "severity" : "error",
        "human" : "DateType ska följa mönstret i schemat: \\d{4}-\\d\\d-\\d\\d",
        "expression" : "matches('^(?:(?:\\\\d{4}-\\\\d\\\\d-\\\\d\\\\d))$')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/DateType"
      }]
    }]
  }
}

```
