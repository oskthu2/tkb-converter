# SetCertificateStatus - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SetCertificateStatus**

## Logical Model: SetCertificateStatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/setcertificatestatus | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:SetCertificateStatus |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet SetCertificateStatus (RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-setcertificatestatus.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-setcertificatestatus.csv), [Excel](StructureDefinition-setcertificatestatus.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "setcertificatestatus",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/setcertificatestatus",
  "version" : "3.1.0",
  "name" : "SetCertificateStatus",
  "title" : "SetCertificateStatus",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet SetCertificateStatus\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/setcertificatestatus",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "setcertificatestatus",
      "path" : "setcertificatestatus",
      "short" : "SetCertificateStatus",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet SetCertificateStatus\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1)."
    },
    {
      "id" : "setcertificatestatus.result",
      "path" : "setcertificatestatus.result",
      "short" : "Resultatinformation",
      "definition" : "Resultatinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "setcertificatestatus.result.resultCode",
      "path" : "setcertificatestatus.result.resultCode",
      "short" : "Resultatkod (OK, ERROR, INFO)",
      "definition" : "Resultatkod (OK, ERROR, INFO)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "setcertificatestatus.result.infoText",
      "path" : "setcertificatestatus.result.infoText",
      "short" : "Extra information om anropets utgång",
      "definition" : "Extra information om anropets utgång",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "setcertificatestatus.result.errorId",
      "path" : "setcertificatestatus.result.errorId",
      "short" : "Felkategori",
      "definition" : "Felkategori",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "setcertificatestatus.result.errorText",
      "path" : "setcertificatestatus.result.errorText",
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
