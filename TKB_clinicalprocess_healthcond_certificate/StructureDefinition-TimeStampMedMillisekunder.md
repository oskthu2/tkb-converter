# TimeStampMedMillisekunder - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TimeStampMedMillisekunder**

## Data Type Profile: TimeStampMedMillisekunder 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampMedMillisekunder | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:TimeStampMedMillisekunder |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
DateTime value is a string with the format "YYYY-MM-DDThh:mm:ss" that conforms to the constrained ISO 8601. Fraction of seconds and timezone precision is not required. (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [ListCertificatesForCareWithQA](StructureDefinition-listcertificatesforcarewithqa.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-TimeStampMedMillisekunder.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TimeStampMedMillisekunder.csv), [Excel](StructureDefinition-TimeStampMedMillisekunder.xlsx), [Schematron](StructureDefinition-TimeStampMedMillisekunder.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TimeStampMedMillisekunder",
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampMedMillisekunder",
  "name" : "TimeStampMedMillisekunder",
  "title" : "TimeStampMedMillisekunder",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "DateTime value is a string with the format \"YYYY-MM-DDThh:mm:ss\" that conforms to the constrained ISO 8601. Fraction of seconds and timezone precision is not required. (xs:simpleType i domänens schema.)",
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
        "key" : "local-timestampmedmillisekunder-pattern",
        "severity" : "error",
        "human" : "TimeStampMedMillisekunder ska följa mönstret i schemat: \\d{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d.\\d{3}",
        "expression" : "matches('^(?:(?:\\\\d{4}-\\\\d\\\\d-\\\\d\\\\dT\\\\d\\\\d:\\\\d\\\\d:\\\\d\\\\d.\\\\d{3}))$')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampMedMillisekunder"
      }]
    }]
  }
}

```
