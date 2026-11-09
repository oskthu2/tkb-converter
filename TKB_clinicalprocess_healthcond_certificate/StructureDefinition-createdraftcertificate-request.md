# CreateDraftCertificate — Request - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateDraftCertificate — Request**

## Logical Model: CreateDraftCertificate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/createdraftcertificate-request | *Version*:3.3 |
| Draft as of 2026-11-09 | *Computable Name*:CreateDraftCertificateRequest |
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
  "date" : "2026-11-09T03:21:30+00:00",
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
      "short" : "Intyg",
      "definition" : "Utkast till intyg.",
      "comment" : "TKB-fält: `intyg` (`Intyg (lokalt definierad i kontraktet)`, kardinalitet 1..1).\n\n**Mappning DIM:** Intyg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.typAvIntyg",
      "path" : "createdraftcertificate-request.intyg.typAvIntyg",
      "short" : "TypAvIntyg",
      "definition" : "Kodat värde som anger intygstypen.",
      "comment" : "TKB-fält: `../typAvIntyg` (`TypAvIntyg (se 7.2.11)`, kardinalitet 1..1).\n\n**Mappning DIM:** Intyg.typ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient",
      "path" : "createdraftcertificate-request.intyg.patient",
      "short" : "Patient",
      "definition" : "Uppgifter om den patient som intyg skapas för.",
      "comment" : "TKB-fält: `../patient*` (`Patient (se 7.1.8)`, kardinalitet 1..1).\n\n**Mappning DIM:** Patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.person-id",
      "path" : "createdraftcertificate-request.intyg.patient.person-id",
      "short" : "PersonId",
      "definition" : "person-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.fornamn",
      "path" : "createdraftcertificate-request.intyg.patient.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.efternamn",
      "path" : "createdraftcertificate-request.intyg.patient.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.mellannamn",
      "path" : "createdraftcertificate-request.intyg.patient.mellannamn",
      "short" : "mellannamn",
      "definition" : "mellannamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.postadress",
      "path" : "createdraftcertificate-request.intyg.patient.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.postnummer",
      "path" : "createdraftcertificate-request.intyg.patient.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.postort",
      "path" : "createdraftcertificate-request.intyg.patient.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.patient.kallaAdressuppgifter",
      "path" : "createdraftcertificate-request.intyg.patient.kallaAdressuppgifter",
      "short" : "KallaAdressuppgifterType",
      "definition" : "kallaAdressuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv",
      "path" : "createdraftcertificate-request.intyg.skapadAv",
      "short" : "HosPersonal",
      "definition" : "Hälso- och sjukvårdspersonal som skapar intyg.",
      "comment" : "TKB-fält: `../skapadAv` (`HosPersonal (lokalt definierad i kontraktet)`, kardinalitet 1..1).\n\n**Mappning DIM:** Hos-personal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv.personal-id",
      "path" : "createdraftcertificate-request.intyg.skapadAv.personal-id",
      "short" : "HsaId",
      "definition" : "HSA-id för hälso- och sjukvårdspersonalen som skapar intygsutkastet.",
      "comment" : "TKB-fält: `../../personal-id` (`HsaId (se 7.2.5)`, kardinalitet 1..1).\n\n**Mappning DIM:** HoS-personal.personal-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv.fullstandigtNamn",
      "path" : "createdraftcertificate-request.intyg.skapadAv.fullstandigtNamn",
      "short" : "Förnamn + efternamn sammanslaget. Personen kan ej ha skyddad identitet, så det fungerar med obligatoriskt namn.",
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
      "short" : "Enhet",
      "definition" : "Enhet som intyg skapas på.",
      "comment" : "TKB-fält: `../../enhet` (`Enhet (lokalt definierad i kontraktet)`, kardinalitet 1..1).\n\n**Mappning DIM:** Enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv.enhet.enhets-id",
      "path" : "createdraftcertificate-request.intyg.skapadAv.enhet.enhets-id",
      "short" : "HsaId",
      "definition" : "HSA-id för enheten.",
      "comment" : "TKB-fält: `../../../enhets-id` (`HsaId (se 7.2.5)`, kardinalitet 1..1).\n\n**Mappning DIM:** Enhet.enhets-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.skapadAv.enhet.enhetsnamn",
      "path" : "createdraftcertificate-request.intyg.skapadAv.enhet.enhetsnamn",
      "short" : "enhetsnamn",
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
      "short" : "ref",
      "definition" : "Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt.",
      "comment" : "TKB-fält: `../ref` (`string`, kardinalitet 0..1).\n\n**Mappning DIM:** Referens.ref",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.forifyllnad",
      "path" : "createdraftcertificate-request.intyg.forifyllnad",
      "short" : "Forifyllnad",
      "definition" : "forifyllnad",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.forifyllnad.svar",
      "path" : "createdraftcertificate-request.intyg.forifyllnad.svar",
      "short" : "Svar",
      "definition" : "svar",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.forifyllnad.svar.instans",
      "path" : "createdraftcertificate-request.intyg.forifyllnad.svar.instans",
      "short" : "instans",
      "definition" : "instans",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.forifyllnad.svar.delsvar",
      "path" : "createdraftcertificate-request.intyg.forifyllnad.svar.delsvar",
      "short" : "(anonym typ)",
      "definition" : "delsvar",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.forifyllnad.svar.delsvar.id",
      "path" : "createdraftcertificate-request.intyg.forifyllnad.svar.delsvar.id",
      "short" : "id",
      "definition" : "id (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/DelfrageIdType"]
      }]
    },
    {
      "id" : "createdraftcertificate-request.intyg.forifyllnad.svar.id",
      "path" : "createdraftcertificate-request.intyg.forifyllnad.svar.id",
      "short" : "id",
      "definition" : "id (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/FrageIdType"]
      }]
    }]
  }
}

```
