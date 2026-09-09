# RevokeCertificate — Request - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeCertificate — Request**

## Logical Model: RevokeCertificate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/revokecertificate-request | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:RevokeCertificateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i RevokeCertificate. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-revokecertificate-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-revokecertificate-request.csv), [Excel](StructureDefinition-revokecertificate-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "revokecertificate-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/revokecertificate-request",
  "version" : "4.1-RC1",
  "name" : "RevokeCertificateRequest",
  "title" : "RevokeCertificate — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i RevokeCertificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/revokecertificate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokecertificate-request",
      "path" : "revokecertificate-request",
      "short" : "RevokeCertificate — Request",
      "definition" : "Logisk modell för requestparametrar i RevokeCertificate."
    },
    {
      "id" : "revokecertificate-request.meddelande",
      "path" : "revokecertificate-request.meddelande",
      "short" : "Beskrivning av orsak till makuleringen",
      "definition" : "Beskrivning av orsak till makuleringen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokecertificate-request.skickatTidpunkt",
      "path" : "revokecertificate-request.skickatTidpunkt",
      "short" : "Tidpunkt då makuleringen skickades från vården",
      "definition" : "Tidpunkt då makuleringen skickades från vården",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "revokecertificate-request.intygsId",
      "path" : "revokecertificate-request.intygsId",
      "short" : "Unikt ID för det intyg som ska makuleras",
      "definition" : "Unikt ID för det intyg som ska makuleras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "revokecertificate-request.patientPersonId",
      "path" : "revokecertificate-request.patientPersonId",
      "short" : "Person- eller samordningsnummer för patienten",
      "definition" : "Ska överensstämma med person-id på det intyg som ska makuleras.\nInkluderas för att förenkla sökning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "revokecertificate-request.skickatAv",
      "path" : "revokecertificate-request.skickatAv",
      "short" : "Identifierar den som utför makuleringen",
      "definition" : "Identifierar den som utför makuleringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokecertificate-request.skickatAv.personalId",
      "path" : "revokecertificate-request.skickatAv.personalId",
      "short" : "HSA-id för hälso- och sjukvårdspersonalen",
      "definition" : "HSA-id för hälso- och sjukvårdspersonalen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "revokecertificate-request.skickatAv.fullstandigtNamn",
      "path" : "revokecertificate-request.skickatAv.fullstandigtNamn",
      "short" : "Personalens fullständiga namn",
      "definition" : "Personalens fullständiga namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokecertificate-request.skickatAv.enhet",
      "path" : "revokecertificate-request.skickatAv.enhet",
      "short" : "Enhet",
      "definition" : "Enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokecertificate-request.skickatAv.enhet.enhetsId",
      "path" : "revokecertificate-request.skickatAv.enhet.enhetsId",
      "short" : "HSA-id för enheten",
      "definition" : "HSA-id för enheten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "revokecertificate-request.skickatAv.enhet.vardgivare",
      "path" : "revokecertificate-request.skickatAv.enhet.vardgivare",
      "short" : "Vårdgivare",
      "definition" : "Vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokecertificate-request.skickatAv.enhet.vardgivare.vardgivareId",
      "path" : "revokecertificate-request.skickatAv.enhet.vardgivare.vardgivareId",
      "short" : "HSA-id för vårdgivaren",
      "definition" : "HSA-id för vårdgivaren",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
