# ReceiveMedicalCertificateQuestion - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ReceiveMedicalCertificateQuestion**

## Logical Model: ReceiveMedicalCertificateQuestion 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/receivemedicalcertificatequestion | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:ReceiveMedicalCertificateQuestion |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateQuestion (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-receivemedicalcertificatequestion.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-receivemedicalcertificatequestion.csv), [Excel](StructureDefinition-receivemedicalcertificatequestion.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "receivemedicalcertificatequestion",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/receivemedicalcertificatequestion",
  "version" : "1.0",
  "name" : "ReceiveMedicalCertificateQuestion",
  "title" : "ReceiveMedicalCertificateQuestion",
  "status" : "active",
  "date" : "2026-11-06T21:35:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateQuestion\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/receivemedicalcertificatequestion",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "receivemedicalcertificatequestion",
      "path" : "receivemedicalcertificatequestion",
      "short" : "ReceiveMedicalCertificateQuestion",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateQuestion\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1)."
    },
    {
      "id" : "receivemedicalcertificatequestion.result",
      "path" : "receivemedicalcertificatequestion.result",
      "short" : "Resultatinformation",
      "definition" : "Resultatinformation",
      "comment" : "TKB-fält: `result` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "receivemedicalcertificatequestion.result.resultCode",
      "path" : "receivemedicalcertificatequestion.result.resultCode",
      "short" : "Resultatkod (OK, ERROR, INFO)",
      "definition" : "Information om anropet gick bra(OK, ERROR, INFO)",
      "comment" : "TKB-fält: `result.resultCode` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receivemedicalcertificatequestion.result.infoText",
      "path" : "receivemedicalcertificatequestion.result.infoText",
      "short" : "Extra information om anropets utgång",
      "definition" : "Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text.",
      "comment" : "TKB-fält: `result.infoText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receivemedicalcertificatequestion.result.errorId",
      "path" : "receivemedicalcertificatequestion.result.errorId",
      "short" : "Felkategori",
      "definition" : "Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)",
      "comment" : "TKB-fält: `result.errorId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receivemedicalcertificatequestion.result.errorText",
      "path" : "receivemedicalcertificatequestion.result.errorText",
      "short" : "Beskrivande text för felet",
      "definition" : "Text som ytterliggare beskriver felet",
      "comment" : "TKB-fält: `result.errorText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
