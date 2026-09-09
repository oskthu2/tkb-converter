# GetDiagnosInformation — Request - processmanagement: decisionsupport: insurancemedicinedecisionsupport v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDiagnosInformation — Request**

## Logical Model: GetDiagnosInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getdiagnosinformation-request | *Version*:1.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetDiagnosInformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetDiagnosInformation. (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1). Anges ej parametern diagnosKod returneras diagnosinformation för alla diagnoskoder. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processmanagement-decisionsupport-insurancemedicinedecisio|current/StructureDefinition/StructureDefinition-getdiagnosinformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getdiagnosinformation-request.csv), [Excel](StructureDefinition-getdiagnosinformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getdiagnosinformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getdiagnosinformation-request",
  "version" : "1.0.0",
  "name" : "GetDiagnosInformationRequest",
  "title" : "GetDiagnosInformation — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:05:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetDiagnosInformation.\n(RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1).\nAnges ej parametern diagnosKod returneras diagnosinformation för alla diagnoskoder.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getdiagnosinformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getdiagnosinformation-request",
      "path" : "getdiagnosinformation-request",
      "short" : "GetDiagnosInformation — Request",
      "definition" : "Logisk modell för requestparametrar i GetDiagnosInformation.\n(RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1).\nAnges ej parametern diagnosKod returneras diagnosinformation för alla diagnoskoder."
    },
    {
      "id" : "getdiagnosinformation-request.diagnosKod",
      "path" : "getdiagnosinformation-request.diagnosKod",
      "short" : "Diagnoskod för filtrering av diagnosinformation",
      "definition" : "Anger om endast diagnosinformation skall hämtas för en eller ett antal diagnoskoder.\nAnges ej parametern returneras diagnosinformation för alla diagnoskoder.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getdiagnosinformation-request.avenEjAktiva",
      "path" : "getdiagnosinformation-request.avenEjAktiva",
      "short" : "Anger om även inaktiv diagnosinformation skall hämtas",
      "definition" : "Anger om även ej aktiv diagnosinformation skall hämtas.\nAnges ej villkoret returneras endast aktiva.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
