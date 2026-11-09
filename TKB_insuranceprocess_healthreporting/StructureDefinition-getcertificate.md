# GetCertificate - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCertificate**

## Logical Model: GetCertificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/getcertificate | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:GetCertificate |
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
  "version" : "1.0",
  "name" : "GetCertificate",
  "title" : "GetCertificate",
  "status" : "active",
  "date" : "2026-11-09T03:41:48+00:00",
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
      "id" : "getcertificate.meta",
      "path" : "getcertificate.meta",
      "short" : "CertificateMetaType",
      "definition" : "meta",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcertificate.meta.certificateId",
      "path" : "getcertificate.meta.certificateId",
      "short" : "certificateId",
      "definition" : "Identitet på intyget. Är en GUID.",
      "comment" : "TKB-fält: `meta.certificateId` (`string`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.meta.certificateType",
      "path" : "getcertificate.meta.certificateType",
      "short" : "certificateType",
      "definition" : "Typ av intyg. Om inget anges returneras alla typer.",
      "comment" : "TKB-fält: `meta.certificateType` (`string`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.meta.validFrom",
      "path" : "getcertificate.meta.validFrom",
      "short" : "validFrom",
      "definition" : "Startdatum för sjukskrivningsperioden.",
      "comment" : "TKB-fält: `meta.validFrom` (`datum`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getcertificate.meta.validTo",
      "path" : "getcertificate.meta.validTo",
      "short" : "validTo",
      "definition" : "Slutdatum för sjukskrivningsperioden.",
      "comment" : "TKB-fält: `meta.validTo` (`datum`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getcertificate.meta.issuerName",
      "path" : "getcertificate.meta.issuerName",
      "short" : "issuerName",
      "definition" : "Namn för Hos-person som utfärdat intyget",
      "comment" : "TKB-fält: `meta.issuerName` (`string`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.meta.facilityName",
      "path" : "getcertificate.meta.facilityName",
      "short" : "facilityName",
      "definition" : "Namn på Hos-vårdenhet där intyget utfärdats",
      "comment" : "TKB-fält: `meta.facilityName` (`string`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.meta.signDate",
      "path" : "getcertificate.meta.signDate",
      "short" : "signDate",
      "definition" : "Datum och tid när intyget signerades",
      "comment" : "TKB-fält: `meta.signDate` (`datetime`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getcertificate.meta.available",
      "path" : "getcertificate.meta.available",
      "short" : "available",
      "definition" : "Anger om intyget är tillgängligt.",
      "comment" : "TKB-fält: `meta.available` (`string`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.meta.status",
      "path" : "getcertificate.meta.status",
      "short" : "CertificateStatusType",
      "definition" : "En lista över statustyper för olika mottagare",
      "comment" : "TKB-fält: `meta.status`.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcertificate.meta.status.target",
      "path" : "getcertificate.meta.status.target",
      "short" : "target",
      "definition" : "Mottagare för en status. Ex FK",
      "comment" : "TKB-fält: `meta.status.target` (`string`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.meta.status.type",
      "path" : "getcertificate.meta.status.type",
      "short" : "type",
      "definition" : "Typ av statusändring för intyget.",
      "comment" : "TKB-fält: `meta.status.type` (`string`, kardinalitet O).\n\n**Modellanteckning:** type Tillåtna värden: UNHANDLED, DELETED, RESTORED, CANCELLED, SENT, RECEIVED, IN_PROGRESS, PROCESSED.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getcertificate.meta.status.timestamp",
      "path" : "getcertificate.meta.status.timestamp",
      "short" : "timestamp",
      "definition" : "När statusen sattes för intyget",
      "comment" : "TKB-fält: `meta.status.timestamp` (`datetime`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcertificate.certificate",
      "path" : "getcertificate.certificate",
      "short" : "certificateType",
      "definition" : "Platshållare för intyget som är generisk. Typ av intyg anges i meta.certificateType.",
      "comment" : "TKB-fält: `certificate` (`<any>`).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcertificate.result",
      "path" : "getcertificate.result",
      "short" : "ResultOfCall",
      "definition" : "result",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcertificate.result.resultCode",
      "path" : "getcertificate.result.resultCode",
      "short" : "resultCode",
      "definition" : "Information om anropet gick bra(OK, ERROR, INFO)",
      "comment" : "TKB-fält: `result.resultCode` (`string`, kardinalitet O).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getcertificate.result.infoText",
      "path" : "getcertificate.result.infoText",
      "short" : "infoText",
      "definition" : "Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text.",
      "comment" : "TKB-fält: `result.infoText` (`string`, kardinalitet V).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.result.errorId",
      "path" : "getcertificate.result.errorId",
      "short" : "errorId",
      "definition" : "Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)",
      "comment" : "TKB-fält: `result.errorId` (`string`, kardinalitet V).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getcertificate.result.errorText",
      "path" : "getcertificate.result.errorText",
      "short" : "errorText",
      "definition" : "Text som ytterliggare beskriver felet",
      "comment" : "TKB-fält: `result.errorText` (`string`, kardinalitet V).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
