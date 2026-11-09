# SendCertificateToRecipient - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SendCertificateToRecipient**

## Logical Model: SendCertificateToRecipient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/sendcertificatetorecipient | *Version*:2.1 |
| Draft as of 2026-11-09 | *Computable Name*:SendCertificateToRecipient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet SendCertificateToRecipient (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendCertificateToRecipient:2). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-sendcertificatetorecipient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sendcertificatetorecipient.csv), [Excel](StructureDefinition-sendcertificatetorecipient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sendcertificatetorecipient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/sendcertificatetorecipient",
  "version" : "2.1",
  "name" : "SendCertificateToRecipient",
  "title" : "SendCertificateToRecipient",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet SendCertificateToRecipient\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendCertificateToRecipient:2).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/sendcertificatetorecipient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "sendcertificatetorecipient",
      "path" : "sendcertificatetorecipient",
      "short" : "SendCertificateToRecipient",
      "definition" : "Logisk modell för tjänstekontraktet SendCertificateToRecipient\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendCertificateToRecipient:2).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "sendcertificatetorecipient.result",
      "path" : "sendcertificatetorecipient.result",
      "short" : "ResultType",
      "definition" : "Information om anropets resultat (OK, ERROR, INFO)",
      "comment" : "TKB-fält: `result` (`ResultType  (se 7.1.10)`, kardinalitet 1..1).\n\n**Mappning DIM:** -",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient.result.resultCode",
      "path" : "sendcertificatetorecipient.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode Tillåtna värden: OK, INFO, ERROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "sendcertificatetorecipient.result.resultText",
      "path" : "sendcertificatetorecipient.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient.result.errorId",
      "path" : "sendcertificatetorecipient.result.errorId",
      "short" : "errorId",
      "definition" : "errorId Tillåtna värden: VALIDATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR, REVOKED.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
