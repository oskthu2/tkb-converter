# SendMedicalCertificate - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SendMedicalCertificate**

## Logical Model: SendMedicalCertificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificate | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:SendMedicalCertificate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-sendmedicalcertificate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sendmedicalcertificate.csv), [Excel](StructureDefinition-sendmedicalcertificate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sendmedicalcertificate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificate",
  "version" : "3.1.0",
  "name" : "SendMedicalCertificate",
  "title" : "SendMedicalCertificate",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "sendmedicalcertificate",
      "path" : "sendmedicalcertificate",
      "short" : "SendMedicalCertificate",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1)."
    },
    {
      "id" : "sendmedicalcertificate.result",
      "path" : "sendmedicalcertificate.result",
      "short" : "Resultatinformation",
      "definition" : "Resultatinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificate.result.resultCode",
      "path" : "sendmedicalcertificate.result.resultCode",
      "short" : "Resultatkod (OK, ERROR, INFO)",
      "definition" : "Resultatkod (OK, ERROR, INFO)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate.result.infoText",
      "path" : "sendmedicalcertificate.result.infoText",
      "short" : "Extra information om anropets utgång",
      "definition" : "Extra information om anropets utgång",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate.result.errorId",
      "path" : "sendmedicalcertificate.result.errorId",
      "short" : "Felkategori",
      "definition" : "Felkategori",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate.result.errorText",
      "path" : "sendmedicalcertificate.result.errorText",
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
