# TimeStampType - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TimeStampType**

## Data Type Profile: TimeStampType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampType | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:TimeStampType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
DateTime avgränsat till YYYY-MM-DDThh:mm:ss (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetCertificate](StructureDefinition-getcertificate.md), [ListCertificatesForCare](StructureDefinition-listcertificatesforcare.md), [ListCertificatesForCareWithQA — Request](StructureDefinition-listcertificatesforcarewithqa-request.md), [ListCertificatesForCareWithQA](StructureDefinition-listcertificatesforcarewithqa.md)... Show 7 more, [ListCertificatesForCitizen](StructureDefinition-listcertificatesforcitizan.md), [RegisterCertificate — Request](StructureDefinition-registercertificate-request.md), [RevokeCertificate — Request](StructureDefinition-revokecertificate-request.md), [SendCertificateToRecipient — Request](StructureDefinition-sendcertificatetorecipient-request.md), [SendMessageToCare — Request](StructureDefinition-sendmessagetocare-request.md), [SendMessageToRecipient — Request](StructureDefinition-sendmessagetorecipient-request.md) and [SetCertificateStatus — Request](StructureDefinition-setcertificatestatus-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-TimeStampType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TimeStampType.csv), [Excel](StructureDefinition-TimeStampType.xlsx), [Schematron](StructureDefinition-TimeStampType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TimeStampType",
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampType",
  "name" : "TimeStampType",
  "title" : "TimeStampType",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "DateTime avgränsat till YYYY-MM-DDThh:mm:ss (xs:simpleType i domänens schema.)",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "dateTime",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/dateTime",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "dateTime",
      "path" : "dateTime",
      "constraint" : [{
        "key" : "local-timestamptype-pattern",
        "severity" : "error",
        "human" : "TimeStampType ska följa mönstret i schemat: \\d{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d",
        "expression" : "matches('^(?:(?:\\\\d{4}-\\\\d\\\\d-\\\\d\\\\dT\\\\d\\\\d:\\\\d\\\\d:\\\\d\\\\d))$')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampType"
      }]
    }]
  }
}

```
