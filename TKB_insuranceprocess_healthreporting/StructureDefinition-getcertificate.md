# GetCertificate - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCertificate**

## Logical Model: GetCertificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/getcertificate | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetCertificate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet GetCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-getcertificate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcertificate.csv), [Excel](StructureDefinition-getcertificate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcertificate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/getcertificate",
  "version" : "3.1.0",
  "name" : "GetCertificate",
  "title" : "GetCertificate",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet GetCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/getcertificate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcertificate",
      "path" : "getcertificate",
      "short" : "GetCertificate",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet GetCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1)."
    },
    {
      "id" : "getcertificate.certificateMeta",
      "path" : "getcertificate.certificateMeta",
      "short" : "Metadata om intyget",
      "definition" : "Metadata om intyget",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.certificateId",
      "path" : "getcertificate.certificateMeta.certificateId",
      "short" : "Identitet på intyget (GUID)",
      "definition" : "Identitet på intyget (GUID)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.certificateType",
      "path" : "getcertificate.certificateMeta.certificateType",
      "short" : "Typ av intyg",
      "definition" : "Typ av intyg",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.validFrom",
      "path" : "getcertificate.certificateMeta.validFrom",
      "short" : "Startdatum för sjukskrivningsperioden",
      "definition" : "Startdatum för sjukskrivningsperioden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.validTo",
      "path" : "getcertificate.certificateMeta.validTo",
      "short" : "Slutdatum för sjukskrivningsperioden",
      "definition" : "Slutdatum för sjukskrivningsperioden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.issuerName",
      "path" : "getcertificate.certificateMeta.issuerName",
      "short" : "Namn för Hos-person som utfärdat intyget",
      "definition" : "Namn för Hos-person som utfärdat intyget",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.facilityName",
      "path" : "getcertificate.certificateMeta.facilityName",
      "short" : "Namn på Hos-vårdenhet där intyget utfärdats",
      "definition" : "Namn på Hos-vårdenhet där intyget utfärdats",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.signDate",
      "path" : "getcertificate.certificateMeta.signDate",
      "short" : "Datum och tid när intyget signerades",
      "definition" : "Datum och tid när intyget signerades",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.available",
      "path" : "getcertificate.certificateMeta.available",
      "short" : "Om intyget är tillgängligt",
      "definition" : "Om intyget är tillgängligt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.certificateStatus",
      "path" : "getcertificate.certificateMeta.certificateStatus",
      "short" : "Statustyper för olika mottagare",
      "definition" : "Statustyper för olika mottagare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.certificateStatus.target",
      "path" : "getcertificate.certificateMeta.certificateStatus.target",
      "short" : "Mottagare för en status (t.ex. FK)",
      "definition" : "Mottagare för en status (t.ex. FK)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.certificateMeta.certificateStatus.certificateStatusType",
      "path" : "getcertificate.certificateMeta.certificateStatus.certificateStatusType",
      "short" : "Typ av statusändring för intyget",
      "definition" : "Typ av statusändring för intyget",
      "min" : 0,
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
      "id" : "getcertificate.certificateMeta.certificateStatus.timestamp",
      "path" : "getcertificate.certificateMeta.certificateStatus.timestamp",
      "short" : "När statusen sattes",
      "definition" : "När statusen sattes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcertificate.certificate",
      "path" : "getcertificate.certificate",
      "short" : "Platshållare för intyget (generisk, se meta.certificateType för typ)",
      "definition" : "ASSUME: Intyget är generiskt XML - mappat till string i avvaktan på formell FHIR-modell.\nSe QUESTIONS.md ASSUME-HR-002.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.result",
      "path" : "getcertificate.result",
      "short" : "Resultatinformation",
      "definition" : "Resultatinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.result.resultCode",
      "path" : "getcertificate.result.resultCode",
      "short" : "Resultatkod (OK, ERROR, INFO)",
      "definition" : "Resultatkod (OK, ERROR, INFO)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.result.infoText",
      "path" : "getcertificate.result.infoText",
      "short" : "Extra information om anropets utgång",
      "definition" : "Extra information om anropets utgång",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.result.errorId",
      "path" : "getcertificate.result.errorId",
      "short" : "Felkategori",
      "definition" : "Felkategori",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.result.errorText",
      "path" : "getcertificate.result.errorText",
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
