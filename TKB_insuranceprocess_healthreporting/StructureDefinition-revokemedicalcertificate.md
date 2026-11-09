# RevokeMedicalCertificate - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeMedicalCertificate**

## Logical Model: RevokeMedicalCertificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/revokemedicalcertificate | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:RevokeMedicalCertificate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet RevokeMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-revokemedicalcertificate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-revokemedicalcertificate.csv), [Excel](StructureDefinition-revokemedicalcertificate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "revokemedicalcertificate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/revokemedicalcertificate",
  "version" : "1.0",
  "name" : "RevokeMedicalCertificate",
  "title" : "RevokeMedicalCertificate",
  "status" : "active",
  "date" : "2026-11-09T03:41:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet RevokeMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/revokemedicalcertificate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokemedicalcertificate",
      "path" : "revokemedicalcertificate",
      "short" : "RevokeMedicalCertificate",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet RevokeMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1)."
    },
    {
      "id" : "revokemedicalcertificate.result",
      "path" : "revokemedicalcertificate.result",
      "short" : "ResultOfCall",
      "definition" : "result",
      "comment" : "TKB-fält: `result` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "revokemedicalcertificate.result.resultCode",
      "path" : "revokemedicalcertificate.result.resultCode",
      "short" : "resultCode",
      "definition" : "Information om anropet gick bra(OK, ERROR, INFO)",
      "comment" : "TKB-fält: `result.resultCode` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "revokemedicalcertificate.result.infoText",
      "path" : "revokemedicalcertificate.result.infoText",
      "short" : "infoText",
      "definition" : "Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text.",
      "comment" : "TKB-fält: `result.infoText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate.result.errorId",
      "path" : "revokemedicalcertificate.result.errorId",
      "short" : "errorId",
      "definition" : "Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)",
      "comment" : "TKB-fält: `result.errorId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "revokemedicalcertificate.result.errorText",
      "path" : "revokemedicalcertificate.result.errorText",
      "short" : "errorText",
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
