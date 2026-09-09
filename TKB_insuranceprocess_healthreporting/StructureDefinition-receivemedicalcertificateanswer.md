# ReceiveMedicalCertificateAnswer - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ReceiveMedicalCertificateAnswer**

## Logical Model: ReceiveMedicalCertificateAnswer 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/receivemedicalcertificateanswer | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:ReceiveMedicalCertificateAnswer |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateAnswer (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-receivemedicalcertificateanswer.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-receivemedicalcertificateanswer.csv), [Excel](StructureDefinition-receivemedicalcertificateanswer.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "receivemedicalcertificateanswer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/receivemedicalcertificateanswer",
  "version" : "3.1.0",
  "name" : "ReceiveMedicalCertificateAnswer",
  "title" : "ReceiveMedicalCertificateAnswer",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateAnswer\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/receivemedicalcertificateanswer",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "receivemedicalcertificateanswer",
      "path" : "receivemedicalcertificateanswer",
      "short" : "ReceiveMedicalCertificateAnswer",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateAnswer\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1)."
    },
    {
      "id" : "receivemedicalcertificateanswer.result",
      "path" : "receivemedicalcertificateanswer.result",
      "short" : "Resultatinformation",
      "definition" : "Resultatinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "receivemedicalcertificateanswer.result.resultCode",
      "path" : "receivemedicalcertificateanswer.result.resultCode",
      "short" : "Resultatkod (OK, ERROR, INFO)",
      "definition" : "Resultatkod (OK, ERROR, INFO)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receivemedicalcertificateanswer.result.infoText",
      "path" : "receivemedicalcertificateanswer.result.infoText",
      "short" : "Extra information om anropets utgång",
      "definition" : "Extra information om anropets utgång",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receivemedicalcertificateanswer.result.errorId",
      "path" : "receivemedicalcertificateanswer.result.errorId",
      "short" : "Felkategori",
      "definition" : "Felkategori",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receivemedicalcertificateanswer.result.errorText",
      "path" : "receivemedicalcertificateanswer.result.errorText",
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
