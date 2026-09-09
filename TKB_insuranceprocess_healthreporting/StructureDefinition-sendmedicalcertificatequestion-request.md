# SendMedicalCertificateQuestion — Request - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SendMedicalCertificateQuestion — Request**

## Logical Model: SendMedicalCertificateQuestion — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificatequestion-request | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:SendMedicalCertificateQuestionRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificateQuestion (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1). Skickar en fråga till Försäkringskassan för ett läkarintyg. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-sendmedicalcertificatequestion-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sendmedicalcertificatequestion-request.csv), [Excel](StructureDefinition-sendmedicalcertificatequestion-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sendmedicalcertificatequestion-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificatequestion-request",
  "version" : "3.1.0",
  "name" : "SendMedicalCertificateQuestionRequest",
  "title" : "SendMedicalCertificateQuestion — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificateQuestion\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1).\nSkickar en fråga till Försäkringskassan för ett läkarintyg.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/sendmedicalcertificatequestion-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "sendmedicalcertificatequestion-request",
      "path" : "sendmedicalcertificatequestion-request",
      "short" : "SendMedicalCertificateQuestion — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificateQuestion\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1).\nSkickar en fråga till Försäkringskassan för ett läkarintyg."
    },
    {
      "id" : "sendmedicalcertificatequestion-request.vardReferensId",
      "path" : "sendmedicalcertificatequestion-request.vardReferensId",
      "short" : "Identitet för denna fråga från vården",
      "definition" : "Samma vardReferens-id kan förekomma i flera meddelanden (t.ex. påminnelse).\nFör teknisk koppling bör varje ny fråga ha unikt id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.amne",
      "path" : "sendmedicalcertificatequestion-request.amne",
      "short" : "Ämne som frågan gäller",
      "definition" : "Ämne som frågan gäller",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/ValueSet/amne-vs"
      }
    },
    {
      "id" : "sendmedicalcertificatequestion-request.fraga",
      "path" : "sendmedicalcertificatequestion-request.fraga",
      "short" : "Frågan",
      "definition" : "Frågan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.fraga.meddelandeText",
      "path" : "sendmedicalcertificatequestion-request.fraga.meddelandeText",
      "short" : "Själva frågan",
      "definition" : "Själva frågan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.fraga.signeringsTidpunkt",
      "path" : "sendmedicalcertificatequestion-request.fraga.signeringsTidpunkt",
      "short" : "Signeringstidpunkt för frågan",
      "definition" : "Signeringstidpunkt för frågan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.avsantTidpunkt",
      "path" : "sendmedicalcertificatequestion-request.avsantTidpunkt",
      "short" : "Tidpunkt då frågan skickades från vården",
      "definition" : "Tidpunkt då frågan skickades från vården",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard",
      "path" : "sendmedicalcertificatequestion-request.adressVard",
      "short" : "Vårdadress",
      "definition" : "Vårdadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal",
      "short" : "Vårdpersonal som ställde frågan",
      "definition" : "Vårdpersonal som ställde frågan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.personalId",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.personalId",
      "short" : "HSA-Id för Hos-person som ställde frågan",
      "definition" : "HSA-Id för Hos-person som ställde frågan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.fullstandigtNamn",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.fullstandigtNamn",
      "short" : "Namn för Hos-person som ställde frågan",
      "definition" : "Namn för Hos-person som ställde frågan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet",
      "short" : "Vårdenhet",
      "definition" : "Vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.enhetsId",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.enhetsId",
      "short" : "HSA-Id för Hos-vårdenhet",
      "definition" : "HSA-Id för Hos-vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.enhetsNamn",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.enhetsNamn",
      "short" : "Namn på Hos-vårdenhet",
      "definition" : "Namn på Hos-vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.postadress",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.postadress",
      "short" : "Postadress",
      "definition" : "Postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.postnummer",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.postnummer",
      "short" : "Postnummer",
      "definition" : "Postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.postort",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.postort",
      "short" : "Postort",
      "definition" : "Postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.telefonnummer",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.telefonnummer",
      "short" : "Telefonnummer",
      "definition" : "Telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.epost",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.epost",
      "short" : "Epost",
      "definition" : "Epost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.vardgivare",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.vardgivare",
      "short" : "Vårdgivare",
      "definition" : "Vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.vardgivare.vardgivareId",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.vardgivare.vardgivareId",
      "short" : "HSA-Id för Hos-vårdgivare",
      "definition" : "HSA-Id för Hos-vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.vardgivare.vardgivareNamn",
      "path" : "sendmedicalcertificatequestion-request.adressVard.hosPersonal.enhet.vardgivare.vardgivareNamn",
      "short" : "Namn på Hos-vårdgivare",
      "definition" : "Namn på Hos-vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.lakarutlatande",
      "path" : "sendmedicalcertificatequestion-request.lakarutlatande",
      "short" : "Läkarintyget som frågan gäller",
      "definition" : "Läkarintyget som frågan gäller",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.lakarutlatande.lakarutlatandeId",
      "path" : "sendmedicalcertificatequestion-request.lakarutlatande.lakarutlatandeId",
      "short" : "Unikt id för läkarintyget",
      "definition" : "Unikt id för läkarintyget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.lakarutlatande.signeringsTidpunkt",
      "path" : "sendmedicalcertificatequestion-request.lakarutlatande.signeringsTidpunkt",
      "short" : "Signeringstidpunkt för läkarintyget",
      "definition" : "Signeringstidpunkt för läkarintyget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.lakarutlatande.patient",
      "path" : "sendmedicalcertificatequestion-request.lakarutlatande.patient",
      "short" : "Patienten",
      "definition" : "Patienten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.lakarutlatande.patient.personId",
      "path" : "sendmedicalcertificatequestion-request.lakarutlatande.patient.personId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendmedicalcertificatequestion-request.lakarutlatande.patient.fullstandigtNamn",
      "path" : "sendmedicalcertificatequestion-request.lakarutlatande.patient.fullstandigtNamn",
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
