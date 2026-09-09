# SendMedicalCertificate — Request - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SendMedicalCertificate — Request**

## Logical Model: SendMedicalCertificate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificate-request | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:SendMedicalCertificateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1). Skickar ett meddelande om att ett läkarintyg skall skickas vidare till FK. Läkarintyget är tidigare insänt via RegisterMedicalCertificate. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-sendmedicalcertificate-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sendmedicalcertificate-request.csv), [Excel](StructureDefinition-sendmedicalcertificate-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sendmedicalcertificate-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificate-request",
  "version" : "3.1.0",
  "name" : "SendMedicalCertificateRequest",
  "title" : "SendMedicalCertificate — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1).\nSkickar ett meddelande om att ett läkarintyg skall skickas vidare till FK.\nLäkarintyget är tidigare insänt via RegisterMedicalCertificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "sendmedicalcertificate-request",
      "path" : "sendmedicalcertificate-request",
      "short" : "SendMedicalCertificate — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1).\nSkickar ett meddelande om att ett läkarintyg skall skickas vidare till FK.\nLäkarintyget är tidigare insänt via RegisterMedicalCertificate."
    },
    {
      "id" : "sendmedicalcertificate-request.send",
      "path" : "sendmedicalcertificate-request.send",
      "short" : "Signal om att skicka ett intyg",
      "definition" : "Signal om att skicka ett intyg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.vardReferensId",
      "path" : "sendmedicalcertificate-request.send.vardReferensId",
      "short" : "Identitet för detta meddelande från vården",
      "definition" : "Identitet för detta meddelande från vården",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.avsantTidpunkt",
      "path" : "sendmedicalcertificate-request.send.avsantTidpunkt",
      "short" : "Tidpunkt då meddelandet skickades från vården",
      "definition" : "Tidpunkt då meddelandet skickades från vården",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard",
      "path" : "sendmedicalcertificate-request.send.adressVard",
      "short" : "Vårdadress",
      "definition" : "Vårdadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal",
      "short" : "Vårdpersonal",
      "definition" : "Vårdpersonal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.personalId",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.personalId",
      "short" : "HSA-Id för Hos-person som skickade meddelandet",
      "definition" : "HSA-Id för Hos-person som skickade meddelandet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.fullstandigtNamn",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.fullstandigtNamn",
      "short" : "Namn för Hos-person som skickade meddelandet",
      "definition" : "Namn för Hos-person som skickade meddelandet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet",
      "short" : "Vårdenhet",
      "definition" : "Vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.enhetsId",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.enhetsId",
      "short" : "HSA-Id för Hos-vårdenhet",
      "definition" : "HSA-Id för Hos-vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.enhetsNamn",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.enhetsNamn",
      "short" : "Namn på Hos-vårdenhet",
      "definition" : "Namn på Hos-vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.postadress",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.postadress",
      "short" : "Postadress",
      "definition" : "Postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.postnummer",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.postnummer",
      "short" : "Postnummer",
      "definition" : "Postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.postort",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.postort",
      "short" : "Postort",
      "definition" : "Postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.telefonnummer",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.telefonnummer",
      "short" : "Telefonnummer",
      "definition" : "Telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.epost",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.epost",
      "short" : "Epost",
      "definition" : "Epost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.vardgivare",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.vardgivare",
      "short" : "Vårdgivare",
      "definition" : "Vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.vardgivare.vardgivareId",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.vardgivare.vardgivareId",
      "short" : "HSA-Id för Hos-vårdgivare",
      "definition" : "HSA-Id för Hos-vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.vardgivare.vardgivareNamn",
      "path" : "sendmedicalcertificate-request.send.adressVard.hosPersonal.enhet.vardgivare.vardgivareNamn",
      "short" : "Namn på Hos-vårdgivare",
      "definition" : "Namn på Hos-vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.lakarutlatande",
      "path" : "sendmedicalcertificate-request.lakarutlatande",
      "short" : "Läkarutlåtandet",
      "definition" : "Läkarutlåtandet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.lakarutlatande.lakarutlatandeId",
      "path" : "sendmedicalcertificate-request.lakarutlatande.lakarutlatandeId",
      "short" : "Unikt id för läkarintyget",
      "definition" : "Unikt id för läkarintyget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.lakarutlatande.signeringsTidpunkt",
      "path" : "sendmedicalcertificate-request.lakarutlatande.signeringsTidpunkt",
      "short" : "Signeringstidpunkt för läkarintyget",
      "definition" : "Signeringstidpunkt för läkarintyget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.lakarutlatande.patient",
      "path" : "sendmedicalcertificate-request.lakarutlatande.patient",
      "short" : "Patienten",
      "definition" : "Patienten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.lakarutlatande.patient.personId",
      "path" : "sendmedicalcertificate-request.lakarutlatande.patient.personId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendmedicalcertificate-request.lakarutlatande.patient.fullstandigtNamn",
      "path" : "sendmedicalcertificate-request.lakarutlatande.patient.fullstandigtNamn",
      "short" : "Patientens namn",
      "definition" : "Patientens namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
