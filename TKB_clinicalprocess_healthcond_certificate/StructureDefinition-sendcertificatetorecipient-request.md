# SendCertificateToRecipient — Request - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SendCertificateToRecipient — Request**

## Logical Model: SendCertificateToRecipient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/sendcertificatetorecipient-request | *Version*:2.1 |
| Draft as of 2026-11-06 | *Computable Name*:SendCertificateToRecipientRequest |
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
  "date" : "2026-11-06T21:04:47+00:00",
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
      "short" : "Tidpunkt då begäran om att skicka intyg skickas",
      "definition" : "Tidpunkt då begäran om att skicka intyg skickas.",
      "comment" : "TKB-fält: `skickatTidpunkt` (`TimeStampType`, kardinalitet 1..1).\n\n**Mappning DIM:** -",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.intygsId",
      "path" : "sendcertificatetorecipient-request.intygsId",
      "short" : "Identitet på intyget",
      "definition" : "Identitet på intyget.",
      "comment" : "TKB-fält: `intygs-id` (`IntygId (se 7.2.6)`, kardinalitet 1..1).\n\n**Mappning DIM:** Intyg.intygs-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.patientPersonId",
      "path" : "sendcertificatetorecipient-request.patientPersonId",
      "short" : "Person- eller samordningsnummer för patienten",
      "definition" : "Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som ska skickas. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id.",
      "comment" : "TKB-fält: `patientPerson-Id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).\n\n**Mappning DIM:** Patient.person-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.mottagare",
      "path" : "sendcertificatetorecipient-request.mottagare",
      "short" : "Kodat värde för den part intyget ska skickas till",
      "definition" : "Kodat värde som anger den part i intygshanteringsprocessen som intyget ska skickas till.",
      "comment" : "TKB-fält: `mottagare` (`Part (se 7.2.9)`, kardinalitet 1..1).\n\n**Mappning DIM:** Intygsmottagare.part",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/ValueSet/part-vs"
      }
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv",
      "path" : "sendcertificatetorecipient-request.skickatAv",
      "short" : "Identifierar personen som skickar intyget",
      "definition" : "Identifierar den person som skickar meddelandet. Denna information loggas men lagras inte i Intygstjänsten.",
      "comment" : "TKB-fält: `skickatAv`.\n\n**Mappning DIM:** -\n\n**Modellanteckning:** hosPersonal eller personId (invånare) — exklusivt val (XML schema choice).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
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
      "short" : "HoS-personal (anges vid anrop från vården)",
      "definition" : "Skall anges när anrop görs från vården, och enbart då.",
      "comment" : "TKB-fält: `../hosPersonal` (`HoSPersonal (se 7.1.4)`, kardinalitet 0..1).\n\n**Mappning DIM:** HoS-personal, Enhet, Vårdgivare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.personalId",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.personalId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet",
      "short" : "Enhet",
      "definition" : "Enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.enhetsId",
      "path" : "sendcertificatetorecipient-request.skickatAv.hosPersonal.enhet.enhetsId",
      "short" : "HSA-id för enheten",
      "definition" : "HSA-id för enheten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "sendcertificatetorecipient-request.skickatAv.personId",
      "path" : "sendcertificatetorecipient-request.skickatAv.personId",
      "short" : "Person- eller samordningsnummer (anges vid anrop från invånartjänst)",
      "definition" : "Skall anges när anrop görs från en invånartjänst, och enbart då.",
      "comment" : "TKB-fält: `../person-id` (`PersonId (se 7.2.10)`, kardinalitet 0..1).\n\n**Mappning DIM:** Patient.person-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
