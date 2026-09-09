# SendMedicalCertificateQuestion - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SendMedicalCertificateQuestion**

## Logical Model: SendMedicalCertificateQuestion 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificatequestion | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:SendMedicalCertificateQuestion |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificateQuestion (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-sendmedicalcertificatequestion.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sendmedicalcertificatequestion.csv), [Excel](StructureDefinition-sendmedicalcertificatequestion.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sendmedicalcertificatequestion",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificatequestion",
  "version" : "3.1.0",
  "name" : "SendMedicalCertificateQuestion",
  "title" : "SendMedicalCertificateQuestion",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificateQuestion\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificatequestion",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "sendmedicalcertificatequestion",
      "path" : "sendmedicalcertificatequestion",
      "short" : "SendMedicalCertificateQuestion",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificateQuestion\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1)."
    },
    {
      "id" : "sendmedicalcertificatequestion.result",
      "path" : "sendmedicalcertificatequestion.result",
      "short" : "Resultatinformation",
      "definition" : "Resultatinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion.result.resultCode",
      "path" : "sendmedicalcertificatequestion.result.resultCode",
      "short" : "Resultatkod (OK, ERROR, INFO)",
      "definition" : "Resultatkod (OK, ERROR, INFO)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion.result.infoText",
      "path" : "sendmedicalcertificatequestion.result.infoText",
      "short" : "Extra information om anropets utgång",
      "definition" : "Extra information om anropets utgång",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion.result.errorId",
      "path" : "sendmedicalcertificatequestion.result.errorId",
      "short" : "Felkategori",
      "definition" : "Felkategori",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion.result.errorText",
      "path" : "sendmedicalcertificatequestion.result.errorText",
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
