# CreateDraftCertificate — Request - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateDraftCertificate — Request**

## Logical Model: CreateDraftCertificate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/createdraftcertificate-request | *Version*:3.3 |
| Draft as of 2026-11-06 | *Computable Name*:CreateDraftCertificateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CreateDraftCertificate. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-createdraftcertificate-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createdraftcertificate-request.csv), [Excel](StructureDefinition-createdraftcertificate-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createdraftcertificate-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/createdraftcertificate-request",
  "version" : "3.3",
  "name" : "CreateDraftCertificateRequest",
  "title" : "CreateDraftCertificate — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:04:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CreateDraftCertificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/createdraftcertificate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createdraftcertificate-request",
      "path" : "createdraftcertificate-request",
      "short" : "CreateDraftCertificate — Request",
      "definition" : "Logisk modell för requestparametrar i CreateDraftCertificate."
    },
    {
      "id" : "createdraftcertificate-request.intyg",
      "path" : "createdraftcertificate-request.intyg",
      "short" : "Utkast till intyg",
      "definition" : "Utkast till intyg.",
      "comment" : "TKB-fält: `intyg` (`Intyg (lokalt definierad i kontraktet)`, kardinalitet 1..1).\n\n**Mappning DIM:** Intyg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.typAvIntyg",
      "path" : "createdraftcertificate-request.intyg.typAvIntyg",
      "short" : "Kodat värde som anger intygstypen",
      "definition" : "Kodat värde som anger intygstypen.",
      "comment" : "TKB-fält: `../typAvIntyg` (`TypAvIntyg (se 7.2.11)`, kardinalitet 1..1).\n\n**Mappning DIM:** Intyg.typ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient",
      "path" : "createdraftcertificate-request.intyg.patient",
      "short" : "Uppgifter om den patient som intyg skapas för",
      "definition" : "Uppgifter om den patient som intyg skapas för.",
      "comment" : "TKB-fält: `../patient*` (`Patient (se 7.1.8)`, kardinalitet 1..1).\n\n**Mappning DIM:** Patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.personId",
      "path" : "createdraftcertificate-request.intyg.patient.personId",
      "short" : "Person- eller samordningsnummer",
      "definition" : "Person- eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.fornamn",
      "path" : "createdraftcertificate-request.intyg.patient.fornamn",
      "short" : "Förnamn",
      "definition" : "Förnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.mellannamn",
      "path" : "createdraftcertificate-request.intyg.patient.mellannamn",
      "short" : "Mellannamn",
      "definition" : "Mellannamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.efternamn",
      "path" : "createdraftcertificate-request.intyg.patient.efternamn",
      "short" : "Efternamn",
      "definition" : "Efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.postadress",
      "path" : "createdraftcertificate-request.intyg.patient.postadress",
      "short" : "Postadress",
      "definition" : "Postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.postnummer",
      "path" : "createdraftcertificate-request.intyg.patient.postnummer",
      "short" : "Postnummer",
      "definition" : "Postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.postort",
      "path" : "createdraftcertificate-request.intyg.patient.postort",
      "short" : "Postort",
      "definition" : "Postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv",
      "path" : "createdraftcertificate-request.intyg.skapadAv",
      "short" : "HoS-personal som skapar intyget",
      "definition" : "Hälso- och sjukvårdspersonal som skapar intyg.",
      "comment" : "TKB-fält: `../skapadAv` (`HosPersonal (lokalt definierad i kontraktet)`, kardinalitet 1..1).\n\n**Mappning DIM:** Hos-personal\n\n**Modellanteckning:** Namn hämtas från vårdsystemet — ej från HSA — och skickas med i anropet.\nUppgifter om vårdgivare ska ej skickas, utan hämtas från HSA via enhets-id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv.personalId",
      "path" : "createdraftcertificate-request.intyg.skapadAv.personalId",
      "short" : "HSA-id för hälso- och sjukvårdspersonalen",
      "definition" : "HSA-id för hälso- och sjukvårdspersonalen som skapar intygsutkastet.",
      "comment" : "TKB-fält: `../../personal-id` (`HsaId (se 7.2.5)`, kardinalitet 1..1).\n\n**Mappning DIM:** HoS-personal.personal-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv.fullstandigtNamn",
      "path" : "createdraftcertificate-request.intyg.skapadAv.fullstandigtNamn",
      "short" : "Personalens förnamn + efternamn (från vårdsystemet)",
      "definition" : "Personalens förnamn + efternamn.",
      "comment" : "TKB-fält: `../../fullstandigtNamn` (`string`, kardinalitet 1..1).\n\n**Mappning DIM:** HoS-personal.fullständigt namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv.enhet",
      "path" : "createdraftcertificate-request.intyg.skapadAv.enhet",
      "short" : "Enhet som intyget skapas på",
      "definition" : "Enhet som intyg skapas på.",
      "comment" : "TKB-fält: `../../enhet` (`Enhet (lokalt definierad i kontraktet)`, kardinalitet 1..1).\n\n**Mappning DIM:** Enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv.enhet.enhetsId",
      "path" : "createdraftcertificate-request.intyg.skapadAv.enhet.enhetsId",
      "short" : "HSA-id för enheten",
      "definition" : "HSA-id för enheten.",
      "comment" : "TKB-fält: `../../../enhets-id` (`HsaId (se 7.2.5)`, kardinalitet 1..1).\n\n**Mappning DIM:** Enhet.enhets-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv.enhet.enhetsnamn",
      "path" : "createdraftcertificate-request.intyg.skapadAv.enhet.enhetsnamn",
      "short" : "Enhetens namn (från vårdsystemet)",
      "definition" : "Enhetens namn.",
      "comment" : "TKB-fält: `../../../enhetsnamn` (`string`, kardinalitet 1..1).\n\n**Mappning DIM:** Enhet.enhetsnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.ref",
      "path" : "createdraftcertificate-request.intyg.ref",
      "short" : "Referens till något i det integrerande vårdsystemet (t.ex. vårdkontakt-id)",
      "definition" : "Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt.",
      "comment" : "TKB-fält: `../ref` (`string`, kardinalitet 0..1).\n\n**Mappning DIM:** Referens.ref",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
