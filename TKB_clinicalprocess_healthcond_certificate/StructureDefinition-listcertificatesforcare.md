# ListCertificatesForCare - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListCertificatesForCare**

## Logical Model: ListCertificatesForCare 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare | *Version*:3.1 |
| Draft as of 2026-11-09 | *Computable Name*:ListCertificatesForCare |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet ListCertificatesForCare (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3). Representerar responsens lista med intyg för en patient på en enhet eller hos en vårdgivare. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-listcertificatesforcare.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listcertificatesforcare.csv), [Excel](StructureDefinition-listcertificatesforcare.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listcertificatesforcare",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare",
  "version" : "3.1",
  "name" : "ListCertificatesForCare",
  "title" : "ListCertificatesForCare",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet ListCertificatesForCare\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3).\nRepresenterar responsens lista med intyg för en patient på en enhet eller hos en vårdgivare.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listcertificatesforcare",
      "path" : "listcertificatesforcare",
      "short" : "ListCertificatesForCare",
      "definition" : "Logisk modell för tjänstekontraktet ListCertificatesForCare\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3).\nRepresenterar responsens lista med intyg för en patient på en enhet eller hos en vårdgivare."
    },
    {
      "id" : "listcertificatesforcare.intygsLista",
      "path" : "listcertificatesforcare.intygsLista",
      "short" : "ListaType",
      "definition" : "En lista av intyg som är signerade eller makulerade.",
      "comment" : "TKB-fält: `intygsLista` (`ListaType (lokalt definierad i kontraktet)`, kardinalitet 1..1).\n\n**Mappning DIM:** -",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg",
      "path" : "listcertificatesforcare.intygsLista.intyg",
      "short" : "Intyg",
      "definition" : "Ett intyg.",
      "comment" : "TKB-fält: `../intyg` (`Intyg (se 7.1.5)`, kardinalitet 0..*).\n\n**Mappning DIM:** Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.skickattidpunkt",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.intygs-id",
      "path" : "listcertificatesforcare.intygsLista.intyg.intygs-id",
      "short" : "IntygId",
      "definition" : "intygs-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.mottagare",
      "path" : "listcertificatesforcare.intygsLista.intyg.mottagare",
      "short" : "Part",
      "definition" : "mottagare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.typ",
      "path" : "listcertificatesforcare.intygsLista.intyg.typ",
      "short" : "TypAvIntyg",
      "definition" : "typ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.version",
      "path" : "listcertificatesforcare.intygsLista.intyg.version",
      "short" : "version",
      "definition" : "version",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.signeringstidpunkt",
      "path" : "listcertificatesforcare.intygsLista.intyg.signeringstidpunkt",
      "short" : "signeringstidpunkt",
      "definition" : "signeringstidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skickatTidpunkt",
      "path" : "listcertificatesforcare.intygsLista.intyg.skickatTidpunkt",
      "short" : "skickatTidpunkt",
      "definition" : "skickatTidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient",
      "short" : "Patient",
      "definition" : "patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient.person-id",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient.person-id",
      "short" : "PersonId",
      "definition" : "person-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient.fornamn",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient.efternamn",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient.mellannamn",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient.mellannamn",
      "short" : "mellannamn",
      "definition" : "mellannamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient.postadress",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient.postnummer",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient.postort",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient.kallaAdressuppgifter",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient.kallaAdressuppgifter",
      "short" : "KallaAdressuppgifterType",
      "definition" : "kallaAdressuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv",
      "short" : "HosPersonal",
      "definition" : "skapadAv",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.personal-id",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.personal-id",
      "short" : "HsaId",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.fullstandigtNamn",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.fullstandigtNamn",
      "short" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "definition" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.forskrivarkod",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.befattning",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.befattning",
      "short" : "Befattning",
      "definition" : "befattning",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet",
      "short" : "Enhet",
      "definition" : "enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.enhets-id",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.enhets-id",
      "short" : "HsaId",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.arbetsplatskod",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.arbetsplatskod",
      "short" : "ArbetsplatsKod",
      "definition" : "o.i.d för arbetsplatskod är 1.2.752.29.4.71",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.enhetsnamn",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.enhetsnamn",
      "short" : "enhetsnamn",
      "definition" : "enhetsnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.postadress",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.postnummer",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.postort",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.telefonnummer",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.epost",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.epost",
      "short" : "epost",
      "definition" : "epost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.vardgivare",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.vardgivare",
      "short" : "Vardgivare",
      "definition" : "vardgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.vardgivare.vardgivare-id",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.vardgivare.vardgivare-id",
      "short" : "HsaId",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.vardgivare.vardgivarnamn",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.vardgivare.vardgivarnamn",
      "short" : "vardgivarnamn",
      "definition" : "vardgivarnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.specialistkompetens",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.specialistkompetens",
      "short" : "Specialistkompetens",
      "definition" : "specialistkompetens",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.specialistkompetens.code",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.specialistkompetens.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.specialistkompetens.displayName",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.specialistkompetens.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.legitimeratYrke",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.legitimeratYrke",
      "short" : "LegitimeratYrkeType",
      "definition" : "legitimeratYrke",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.relation",
      "path" : "listcertificatesforcare.intygsLista.intyg.relation",
      "short" : "Relation",
      "definition" : "relation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.relation.typ",
      "path" : "listcertificatesforcare.intygsLista.intyg.relation.typ",
      "short" : "TypAvRelation",
      "definition" : "typ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.relation.intygs-id",
      "path" : "listcertificatesforcare.intygsLista.intyg.relation.intygs-id",
      "short" : "IntygId",
      "definition" : "intygs-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.status",
      "path" : "listcertificatesforcare.intygsLista.intyg.status",
      "short" : "IntygsStatus",
      "definition" : "status",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.status.part",
      "path" : "listcertificatesforcare.intygsLista.intyg.status.part",
      "short" : "Part",
      "definition" : "part",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.status.status",
      "path" : "listcertificatesforcare.intygsLista.intyg.status.status",
      "short" : "Statuskod",
      "definition" : "status",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.status.tidpunkt",
      "path" : "listcertificatesforcare.intygsLista.intyg.status.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.svar",
      "path" : "listcertificatesforcare.intygsLista.intyg.svar",
      "short" : "Svar",
      "definition" : "svar",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.svar.instans",
      "path" : "listcertificatesforcare.intygsLista.intyg.svar.instans",
      "short" : "instans",
      "definition" : "instans",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.svar.delsvar",
      "path" : "listcertificatesforcare.intygsLista.intyg.svar.delsvar",
      "short" : "(anonym typ)",
      "definition" : "delsvar",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.svar.delsvar.id",
      "path" : "listcertificatesforcare.intygsLista.intyg.svar.delsvar.id",
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
      "id" : "listcertificatesforcare.intygsLista.intyg.svar.id",
      "path" : "listcertificatesforcare.intygsLista.intyg.svar.id",
      "short" : "id",
      "definition" : "id (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/FrageIdType"]
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift",
      "short" : "UnderskriftType",
      "definition" : "underskrift",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature",
      "short" : "SignatureType",
      "definition" : "Signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo",
      "short" : "SignedInfoType",
      "definition" : "SignedInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod",
      "short" : "CanonicalizationMethodType",
      "definition" : "CanonicalizationMethod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod.Algorithm",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod.Algorithm",
      "short" : "Algorithm",
      "definition" : "Algorithm (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.SignatureMethod",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.SignatureMethod",
      "short" : "SignatureMethodType",
      "definition" : "SignatureMethod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.SignatureMethod.HMACOutputLength",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.SignatureMethod.HMACOutputLength",
      "short" : "HMACOutputLength",
      "definition" : "HMACOutputLength",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.SignatureMethod.Algorithm",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.SignatureMethod.Algorithm",
      "short" : "Algorithm",
      "definition" : "Algorithm (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference",
      "short" : "ReferenceType",
      "definition" : "Reference",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms",
      "short" : "TransformsType",
      "definition" : "Transforms",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform",
      "short" : "TransformType",
      "definition" : "Transform",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.XPath",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.XPath",
      "short" : "XPath",
      "definition" : "XPath",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.Algorithm",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.Algorithm",
      "short" : "Algorithm",
      "definition" : "Algorithm (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod",
      "short" : "DigestMethodType",
      "definition" : "DigestMethod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod.Algorithm",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod.Algorithm",
      "short" : "Algorithm",
      "definition" : "Algorithm (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.DigestValue",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.DigestValue",
      "short" : "DigestValue",
      "definition" : "DigestValue",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Id",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.URI",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.URI",
      "short" : "URI",
      "definition" : "URI (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Type",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Type",
      "short" : "Type",
      "definition" : "Type (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Id",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignedInfo.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignatureValue",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignatureValue",
      "short" : "SignatureValueType",
      "definition" : "SignatureValue",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignatureValue.value",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignatureValue.value",
      "short" : "Textinnehåll",
      "definition" : "Elementets textinnehåll i XML (simpleContent).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignatureValue.Id",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.SignatureValue.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo",
      "short" : "KeyInfoType",
      "definition" : "KeyInfo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyName",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyName",
      "short" : "KeyName",
      "definition" : "KeyName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue",
      "short" : "KeyValueType",
      "definition" : "KeyValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "listcertificatesforcare-choice-1",
        "severity" : "error",
        "human" : "Exakt ett av DSAKeyValue, RSAKeyValue ska anges (xs:choice i schemat).",
        "expression" : "DSAKeyValue.exists() xor RSAKeyValue.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue",
      "short" : "DSAKeyValueType",
      "definition" : "DSAKeyValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.P",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.P",
      "short" : "P",
      "definition" : "P",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Q",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Q",
      "short" : "Q",
      "definition" : "Q",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.G",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.G",
      "short" : "G",
      "definition" : "G",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Y",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Y",
      "short" : "Y",
      "definition" : "Y",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.J",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.J",
      "short" : "J",
      "definition" : "J",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Seed",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Seed",
      "short" : "Seed",
      "definition" : "Seed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.PgenCounter",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.PgenCounter",
      "short" : "PgenCounter",
      "definition" : "PgenCounter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue",
      "short" : "RSAKeyValueType",
      "definition" : "RSAKeyValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Modulus",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Modulus",
      "short" : "Modulus",
      "definition" : "Modulus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Exponent",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Exponent",
      "short" : "Exponent",
      "definition" : "Exponent",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod",
      "short" : "RetrievalMethodType",
      "definition" : "RetrievalMethod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms",
      "short" : "TransformsType",
      "definition" : "Transforms",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform",
      "short" : "TransformType",
      "definition" : "Transform",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.XPath",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.XPath",
      "short" : "XPath",
      "definition" : "XPath",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.Algorithm",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.Algorithm",
      "short" : "Algorithm",
      "definition" : "Algorithm (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.URI",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.URI",
      "short" : "URI",
      "definition" : "URI (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Type",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Type",
      "short" : "Type",
      "definition" : "Type (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data",
      "short" : "X509DataType",
      "definition" : "X509Data",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "listcertificatesforcare-choice-6",
        "severity" : "error",
        "human" : "Exakt ett av X509IssuerSerial, X509SKI, X509SubjectName, X509Certificate, X509CRL ska anges (xs:choice i schemat).",
        "expression" : "iif(X509IssuerSerial.exists(), 1, 0) + iif(X509SKI.exists(), 1, 0) + iif(X509SubjectName.exists(), 1, 0) + iif(X509Certificate.exists(), 1, 0) + iif(X509CRL.exists(), 1, 0) = 1",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial",
      "short" : "X509IssuerSerialType",
      "definition" : "X509IssuerSerial",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509IssuerName",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509IssuerName",
      "short" : "X509IssuerName",
      "definition" : "X509IssuerName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509SerialNumber",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509SerialNumber",
      "short" : "X509SerialNumber",
      "definition" : "X509SerialNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509SKI",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509SKI",
      "short" : "X509SKI",
      "definition" : "X509SKI",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509SubjectName",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509SubjectName",
      "short" : "X509SubjectName",
      "definition" : "X509SubjectName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509Certificate",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509Certificate",
      "short" : "X509Certificate",
      "definition" : "X509Certificate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509CRL",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509CRL",
      "short" : "X509CRL",
      "definition" : "X509CRL",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.PGPData",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.PGPData",
      "short" : "PGPDataType",
      "definition" : "PGPData",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "listcertificatesforcare-choice-11",
        "severity" : "error",
        "human" : "Exakt ett av PGPKeyID, PGPKeyPacket ska anges (xs:choice i schemat).",
        "expression" : "PGPKeyID.exists() xor PGPKeyPacket.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyID",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyID",
      "short" : "PGPKeyID",
      "definition" : "PGPKeyID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyPacket",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyPacket",
      "short" : "PGPKeyPacket",
      "definition" : "PGPKeyPacket",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.SPKIData",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.SPKIData",
      "short" : "SPKIDataType",
      "definition" : "SPKIData",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.SPKIData.SPKISexp",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.SPKIData.SPKISexp",
      "short" : "SPKISexp",
      "definition" : "SPKISexp",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.MgmtData",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.MgmtData",
      "short" : "MgmtData",
      "definition" : "MgmtData",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.Id",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.KeyInfo.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.Object",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.Object",
      "short" : "ObjectType",
      "definition" : "Object",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.Object.Id",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.Object.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.Object.MimeType",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.Object.MimeType",
      "short" : "MimeType",
      "definition" : "MimeType (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.Object.Encoding",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.Object.Encoding",
      "short" : "Encoding",
      "definition" : "Encoding (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.Id",
      "path" : "listcertificatesforcare.intygsLista.intyg.underskrift.Signature.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
