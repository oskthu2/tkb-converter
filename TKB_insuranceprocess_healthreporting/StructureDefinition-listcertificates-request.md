# ListCertificates — Request - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListCertificates — Request**

## Logical Model: ListCertificates — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/listcertificates-request | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:ListCertificatesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet ListCertificates (RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1). Begär en lista av registrerade läkarintyg från intygstjänsten. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-listcertificates-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listcertificates-request.csv), [Excel](StructureDefinition-listcertificates-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listcertificates-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/listcertificates-request",
  "version" : "3.1.0",
  "name" : "ListCertificatesRequest",
  "title" : "ListCertificates — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet ListCertificates\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1).\nBegär en lista av registrerade läkarintyg från intygstjänsten.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/listcertificates-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listcertificates-request",
      "path" : "listcertificates-request",
      "short" : "ListCertificates — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet ListCertificates\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1).\nBegär en lista av registrerade läkarintyg från intygstjänsten."
    },
    {
      "id" : "listcertificates-request.nationalIdentityNumber",
      "path" : "listcertificates-request.nationalIdentityNumber",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificates-request.certificateType",
      "path" : "listcertificates-request.certificateType",
      "short" : "Typ av intyg att filtrera på (om tomt returneras alla typer)",
      "definition" : "Typ av intyg att filtrera på (om tomt returneras alla typer)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificates-request.available",
      "path" : "listcertificates-request.available",
      "short" : "Om true returneras tillgängliga intyg, false returnerar ej tillgängliga",
      "definition" : "ASSUME: Fältet är 'string' i XSD men representerar ett booleskt värde. Mappat till boolean.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "listcertificates-request.fromDate",
      "path" : "listcertificates-request.fromDate",
      "short" : "Startdatum för sökning på utfärdandedatum",
      "definition" : "Startdatum för sökning på utfärdandedatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "listcertificates-request.toDate",
      "path" : "listcertificates-request.toDate",
      "short" : "Slutdatum för sökning på utfärdandedatum",
      "definition" : "Slutdatum för sökning på utfärdandedatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    }]
  }
}

```
