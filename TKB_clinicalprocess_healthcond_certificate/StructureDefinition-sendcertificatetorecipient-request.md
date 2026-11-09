# SendCertificateToRecipient — Request - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SendCertificateToRecipient — Request**

## Logical Model: SendCertificateToRecipient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/sendcertificatetorecipient-request | *Version*:2.1 |
| Draft as of 2026-11-09 | *Computable Name*:SendCertificateToRecipientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i SendCertificateToRecipient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-sendcertificatetorecipient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sendcertificatetorecipient-request.csv), [Excel](StructureDefinition-sendcertificatetorecipient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sendcertificatetorecipient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/sendcertificatetorecipient-request",
  "version" : "2.1",
  "name" : "SendCertificateToRecipientRequest",
  "title" : "SendCertificateToRecipient — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i SendCertificateToRecipient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/sendcertificatetorecipient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "sendcertificatetorecipient-request",
      "path" : "sendcertificatetorecipient-request",
      "short" : "SendCertificateToRecipient — Request",
      "definition" : "Logisk modell för requestparametrar i SendCertificateToRecipient."
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatTidpunkt",
      "path" : "sendcertificatetorecipient-request.skickatTidpunkt",
      "short" : "skickatTidpunkt",
      "definition" : "Tidpunkt då begäran om att skicka intyg skickas.",
      "comment" : "TKB-fält: `skickatTidpunkt` (`TimeStampType`, kardinalitet 1..1).\n\n**Mappning DIM:** -",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.intygs-id",
      "path" : "sendcertificatetorecipient-request.intygs-id",
      "short" : "IntygId",
      "definition" : "Identitet på intyget.",
      "comment" : "TKB-fält: `intygs-id` (`IntygId (se 7.2.6)`, kardinalitet 1..1).\n\n**Mappning DIM:** Intyg.intygs-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.patientPerson-id",
      "path" : "sendcertificatetorecipient-request.patientPerson-id",
      "short" : "PersonId",
      "definition" : "Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som ska skickas. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id.",
      "comment" : "TKB-fält: `patientPerson-Id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).\n\n**Mappning DIM:** Patient.person-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.mottagare",
      "path" : "sendcertificatetorecipient-request.mottagare",
      "short" : "Part",
      "definition" : "Kodat värde som anger den part i intygshanteringsprocessen som intyget ska skickas till.",
      "comment" : "TKB-fält: `mottagare` (`Part (se 7.2.9)`, kardinalitet 1..1).\n\n**Mappning DIM:** Intygsmottagare.part",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv",
      "path" : "sendcertificatetorecipient-request.skickatAv",
      "short" : "(anonym typ)",
      "definition" : "Identifierar den person som skickar meddelandet. Denna information loggas men lagras inte i Intygstjänsten.",
      "comment" : "TKB-fält: `skickatAv`.\n\n**Mappning DIM:** -",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "sendcertificatetorecipientrequest-choice-1",
        "severity" : "error",
        "human" : "Exakt ett av hosPersonal, person-id ska anges (xs:choice i schemat).",
        "expression" : "hosPersonal.exists() xor person-id.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/sendcertificatetorecipient-request"
      },
      {
        "key" : "sendcertificatetorecipient-request-skickatav-choice",
        "severity" : "error",
        "human" : "Exakt ett av hosPersonal och personId ska anges i skickatAv (xs:choice i schemat).",
        "expression" : "hosPersonal.exists() xor personId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/sendcertificatetorecipient-request"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal",
      "short" : "HosPersonal",
      "definition" : "Skall anges när anrop görs från vården, och enbart då.",
      "comment" : "TKB-fält: `../hosPersonal` (`HoSPersonal (se 7.1.4)`, kardinalitet 0..1).\n\n**Mappning DIM:** HoS-personal, Enhet, Vårdgivare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.personal-id",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.personal-id",
      "short" : "HsaId",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.fullstandigtNamn",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.fullstandigtNamn",
      "short" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "definition" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.forskrivarkod",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.befattning",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.befattning",
      "short" : "Befattning",
      "definition" : "befattning",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet",
      "short" : "Enhet",
      "definition" : "enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.enhets-id",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.enhets-id",
      "short" : "HsaId",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.arbetsplatskod",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.arbetsplatskod",
      "short" : "ArbetsplatsKod",
      "definition" : "o.i.d för arbetsplatskod är 1.2.752.29.4.71",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.enhetsnamn",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.enhetsnamn",
      "short" : "enhetsnamn",
      "definition" : "enhetsnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.postadress",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.postnummer",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.postort",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.telefonnummer",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.epost",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.epost",
      "short" : "epost",
      "definition" : "epost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.vardgivare",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.vardgivare",
      "short" : "Vardgivare",
      "definition" : "vardgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.vardgivare.vardgivare-id",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.vardgivare.vardgivare-id",
      "short" : "HsaId",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.vardgivare.vardgivarnamn",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.vardgivare.vardgivarnamn",
      "short" : "vardgivarnamn",
      "definition" : "vardgivarnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.specialistkompetens",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.specialistkompetens",
      "short" : "Specialistkompetens",
      "definition" : "specialistkompetens",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.specialistkompetens.code",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.specialistkompetens.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.specialistkompetens.displayName",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.specialistkompetens.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.legitimeratYrke",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.legitimeratYrke",
      "short" : "LegitimeratYrkeType",
      "definition" : "legitimeratYrke",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.person-id",
      "path" : "sendcertificatetorecipient-request.skickatAv.person-id",
      "short" : "PersonId",
      "definition" : "Skall anges när anrop görs från en invånartjänst, och enbart då.",
      "comment" : "TKB-fält: `../person-id` (`PersonId (se 7.2.10)`, kardinalitet 0..1).\n\n**Mappning DIM:** Patient.person-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    }]
  }
}

```
