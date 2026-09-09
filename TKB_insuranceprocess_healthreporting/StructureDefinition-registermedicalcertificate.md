# RegisterMedicalCertificate - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterMedicalCertificate**

## Logical Model: RegisterMedicalCertificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/registermedicalcertificate | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterMedicalCertificate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet RegisterMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-registermedicalcertificate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registermedicalcertificate.csv), [Excel](StructureDefinition-registermedicalcertificate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registermedicalcertificate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/registermedicalcertificate",
  "version" : "3.1.0",
  "name" : "RegisterMedicalCertificate",
  "title" : "RegisterMedicalCertificate",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet RegisterMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/registermedicalcertificate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registermedicalcertificate",
      "path" : "registermedicalcertificate",
      "short" : "RegisterMedicalCertificate",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet RegisterMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3)."
    },
    {
      "id" : "registermedicalcertificate.result",
      "path" : "registermedicalcertificate.result",
      "short" : "Resultatinformation",
      "definition" : "Resultatinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate.result.resultCode",
      "path" : "registermedicalcertificate.result.resultCode",
      "short" : "Resultatkod (OK, ERROR, INFO)",
      "definition" : "Resultatkod (OK, ERROR, INFO)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate.result.infoText",
      "path" : "registermedicalcertificate.result.infoText",
      "short" : "Extra information om anropets utgång",
      "definition" : "Extra information om anropets utgång",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate.result.errorId",
      "path" : "registermedicalcertificate.result.errorId",
      "short" : "Felkategori (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)",
      "definition" : "Felkategori (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate.result.errorText",
      "path" : "registermedicalcertificate.result.errorText",
      "short" : "Beskrivande text för felet",
      "definition" : "Beskrivande text för felet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
