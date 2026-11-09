# PartielltDatum - masterdata: organisationalresources: licensetopractice v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PartielltDatum**

## Data Type Profile: PartielltDatum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PartielltDatum | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:PartielltDatum |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Partielltdatum är en begränsning av Datum. Denna typ tillåter formaten "ÅÅÅÅ[MM[DD]]" Dvs enbart år eller år och månad. (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetHospPersonForIVO](StructureDefinition-gethosppersonforivo.md) and [GetHospPersonForPublicHealthcare](StructureDefinition-gethosppersonforpublichealthcare.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-organisationalresources-licensetopractice|current/StructureDefinition/StructureDefinition-PartielltDatum.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PartielltDatum.csv), [Excel](StructureDefinition-PartielltDatum.xlsx), [Schematron](StructureDefinition-PartielltDatum.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PartielltDatum",
  "url" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PartielltDatum",
  "name" : "PartielltDatum",
  "title" : "PartielltDatum",
  "status" : "active",
  "date" : "2026-11-09T03:45:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Partielltdatum är en begränsning av Datum. Denna typ tillåter formaten \"ÅÅÅÅ[MM[DD]]\" Dvs enbart år eller år och månad. (xs:simpleType i domänens schema.)",
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
        "key" : "local-partielltdatum-pattern",
        "severity" : "error",
        "human" : "PartielltDatum ska följa mönstret i schemat: [1-2][0-9]{3,3}(((0[1-9])|(1[0-2]))(((0[1-9])|([1-2][0-9])|(3[0-1])))?)?",
        "expression" : "matches('^(?:(?:[1-2][0-9]{3,3}(((0[1-9])|(1[0-2]))(((0[1-9])|([1-2][0-9])|(3[0-1])))?)?))$')",
        "source" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PartielltDatum"
      }]
    }]
  }
}

```
