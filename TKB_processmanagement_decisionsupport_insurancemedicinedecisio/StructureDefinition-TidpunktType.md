# TidpunktType - processmanagement: decisionsupport: insurancemedicinedecisionsupport v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TidpunktType**

## Data Type Profile: TidpunktType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/TidpunktType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:TidpunktType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tidpunkt "ÅÅÅÅMMDD" som matchar begränsad ISO 8601. TTidszon skall ej anges (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetDiagnosInformation](StructureDefinition-getdiagnosinformation.md), [GetFmb](StructureDefinition-getfmb.md) and [GetVersions](StructureDefinition-getversions.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processmanagement-decisionsupport-insurancemedicinedecisio|current/StructureDefinition/StructureDefinition-TidpunktType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TidpunktType.csv), [Excel](StructureDefinition-TidpunktType.xlsx), [Schematron](StructureDefinition-TidpunktType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TidpunktType",
  "url" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/TidpunktType",
  "name" : "TidpunktType",
  "title" : "TidpunktType",
  "status" : "active",
  "date" : "2026-11-09T03:46:58+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tidpunkt \"ÅÅÅÅMMDD\" som matchar begränsad ISO 8601. TTidszon skall ej anges (xs:simpleType i domänens schema.)",
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
        "key" : "local-tidpunkttype-pattern",
        "severity" : "error",
        "human" : "TidpunktType ska följa mönstret i schemat: [1-2][0-9]{3,3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))",
        "expression" : "matches('^(?:(?:[1-2][0-9]{3,3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))))$')",
        "source" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/TidpunktType"
      }]
    }]
  }
}

```
