# SetCertificateStatus — Request - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SetCertificateStatus — Request**

## Logical Model: SetCertificateStatus — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/setcertificatestatus-request | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:SetCertificateStatusRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet SetCertificateStatus (RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1). Sätter status för ett registrerat läkarintyg i intygstjänsten. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-setcertificatestatus-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-setcertificatestatus-request.csv), [Excel](StructureDefinition-setcertificatestatus-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "setcertificatestatus-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/setcertificatestatus-request",
  "version" : "3.1.0",
  "name" : "SetCertificateStatusRequest",
  "title" : "SetCertificateStatus — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet SetCertificateStatus\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1).\nSätter status för ett registrerat läkarintyg i intygstjänsten.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/setcertificatestatus-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "setcertificatestatus-request",
      "path" : "setcertificatestatus-request",
      "short" : "SetCertificateStatus — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet SetCertificateStatus\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1).\nSätter status för ett registrerat läkarintyg i intygstjänsten."
    },
    {
      "id" : "setcertificatestatus-request.certificateId",
      "path" : "setcertificatestatus-request.certificateId",
      "short" : "Identitet på intyget (GUID)",
      "definition" : "ASSUME: Tabellrubriken är förväxlad med nationalIdentityNumber i källdokumentet.\nTolkat som att certificateId = intygets GUID-identitet.\nSe QUESTIONS.md BLOCK-HR-002.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "setcertificatestatus-request.nationalIdentityNumber",
      "path" : "setcertificatestatus-request.nationalIdentityNumber",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "setcertificatestatus-request.target",
      "path" : "setcertificatestatus-request.target",
      "short" : "Mottagare för statusändringen (t.ex. FK)",
      "definition" : "Mottagare för statusändringen (t.ex. FK)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "setcertificatestatus-request.certificateStatus",
      "path" : "setcertificatestatus-request.certificateStatus",
      "short" : "Typ av statusändring för intyget",
      "definition" : "Typ av statusändring för intyget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/ValueSet/status-vs"
      }
    },
    {
      "id" : "setcertificatestatus-request.timestamp",
      "path" : "setcertificatestatus-request.timestamp",
      "short" : "När anropet sattes för intyget",
      "definition" : "När anropet sattes för intyget",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
