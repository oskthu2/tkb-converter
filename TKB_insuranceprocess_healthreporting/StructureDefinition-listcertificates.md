# ListCertificates - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListCertificates**

## Logical Model: ListCertificates 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/listcertificates | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:ListCertificates |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet ListCertificates (RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-listcertificates.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listcertificates.csv), [Excel](StructureDefinition-listcertificates.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listcertificates",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/listcertificates",
  "version" : "3.1.0",
  "name" : "ListCertificates",
  "title" : "ListCertificates",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet ListCertificates\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/listcertificates",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listcertificates",
      "path" : "listcertificates",
      "short" : "ListCertificates",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet ListCertificates\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1)."
    },
    {
      "id" : "listcertificates.certificateMeta",
      "path" : "listcertificates.certificateMeta",
      "short" : "Metadata om ett intyg",
      "definition" : "Metadata om ett intyg",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.certificateId",
      "path" : "listcertificates.certificateMeta.certificateId",
      "short" : "Identitet på intyget (GUID)",
      "definition" : "Identitet på intyget (GUID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.certificateType",
      "path" : "listcertificates.certificateMeta.certificateType",
      "short" : "Typ av intyg",
      "definition" : "Typ av intyg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.validFrom",
      "path" : "listcertificates.certificateMeta.validFrom",
      "short" : "Startdatum för sjukskrivningsperioden",
      "definition" : "Startdatum för sjukskrivningsperioden",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.validTo",
      "path" : "listcertificates.certificateMeta.validTo",
      "short" : "Slutdatum för sjukskrivningsperioden",
      "definition" : "Slutdatum för sjukskrivningsperioden",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.issuerName",
      "path" : "listcertificates.certificateMeta.issuerName",
      "short" : "Namn för Hos-person som utfärdat intyget",
      "definition" : "Namn för Hos-person som utfärdat intyget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.facilityName",
      "path" : "listcertificates.certificateMeta.facilityName",
      "short" : "Namn på Hos-vårdenhet där intyget utfärdats",
      "definition" : "Namn på Hos-vårdenhet där intyget utfärdats",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.signDate",
      "path" : "listcertificates.certificateMeta.signDate",
      "short" : "Datum när intyget signerades",
      "definition" : "Datum när intyget signerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.available",
      "path" : "listcertificates.certificateMeta.available",
      "short" : "Om intyget är tillgängligt och kan användas",
      "definition" : "Om intyget är tillgängligt och kan användas",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.certificateStatus",
      "path" : "listcertificates.certificateMeta.certificateStatus",
      "short" : "Statustyper för olika mottagare",
      "definition" : "Statustyper för olika mottagare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.certificateStatus.target",
      "path" : "listcertificates.certificateMeta.certificateStatus.target",
      "short" : "Mottagare för en status (t.ex. FK)",
      "definition" : "Mottagare för en status (t.ex. FK)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificates.certificateMeta.certificateStatus.certificateStatusType",
      "path" : "listcertificates.certificateMeta.certificateStatus.certificateStatusType",
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
      "id" : "listcertificates.certificateMeta.certificateStatus.timestamp",
      "path" : "listcertificates.certificateMeta.certificateStatus.timestamp",
      "short" : "När statusen sattes",
      "definition" : "När statusen sattes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "listcertificates.result",
      "path" : "listcertificates.result",
      "short" : "Resultatinformation",
      "definition" : "Resultatinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificates.result.resultCode",
      "path" : "listcertificates.result.resultCode",
      "short" : "Resultatkod (OK, ERROR, INFO)",
      "definition" : "Resultatkod (OK, ERROR, INFO)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificates.result.infoText",
      "path" : "listcertificates.result.infoText",
      "short" : "Extra information om anropets utgång",
      "definition" : "Extra information om anropets utgång",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificates.result.errorId",
      "path" : "listcertificates.result.errorId",
      "short" : "Felkategori",
      "definition" : "Felkategori",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificates.result.errorText",
      "path" : "listcertificates.result.errorText",
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
