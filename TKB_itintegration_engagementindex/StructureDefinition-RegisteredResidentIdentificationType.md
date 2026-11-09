# RegisteredResidentIdentificationType - itintegration: engagementindex v1.0.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisteredResidentIdentificationType**

## Data Type Profile: RegisteredResidentIdentificationType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/RegisteredResidentIdentificationType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:RegisteredResidentIdentificationType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
RegisteredResidentIdentificationType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [FindContent — Request](StructureDefinition-findcontent-request.md), [FindContent](StructureDefinition-findcontent.md), [ProcessNotification — Request](StructureDefinition-processnotification-request.md) and [Update — Request](StructureDefinition-update-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-engagementindex|current/StructureDefinition/StructureDefinition-RegisteredResidentIdentificationType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RegisteredResidentIdentificationType.csv), [Excel](StructureDefinition-RegisteredResidentIdentificationType.xlsx), [Schematron](StructureDefinition-RegisteredResidentIdentificationType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RegisteredResidentIdentificationType",
  "url" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/RegisteredResidentIdentificationType",
  "name" : "RegisteredResidentIdentificationType",
  "title" : "RegisteredResidentIdentificationType",
  "status" : "active",
  "date" : "2026-11-09T03:42:52+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "RegisteredResidentIdentificationType (xs:simpleType i domänens schema.)",
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
        "key" : "local-registeredresidentidentificationtype-pattern",
        "severity" : "error",
        "human" : "RegisteredResidentIdentificationType ska följa mönstret i schemat: [0-9]{8}[0-9A-Zptf]{4}",
        "expression" : "matches('^(?:(?:[0-9]{8}[0-9A-Zptf]{4}))$')",
        "source" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/RegisteredResidentIdentificationType"
      }]
    }]
  }
}

```
