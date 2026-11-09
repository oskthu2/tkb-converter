# ListCertificatesForCareWithQA - clinicalprocess: healthcond: certificate v4.1.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListCertificatesForCareWithQA**

## Logical Model: ListCertificatesForCareWithQA 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcarewithqa | *Version*:3.3 |
| Draft as of 2026-11-09 | *Computable Name*:ListCertificatesForCareWithQA |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet ListCertificatesForCareWithQA (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:3). Representerar responsens lista med intyg inkl. händelser och ärendekommunikation. Inkluderar både signerade, makulerade och intygsutkast. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-listcertificatesforcarewithqa.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listcertificatesforcarewithqa.csv), [Excel](StructureDefinition-listcertificatesforcarewithqa.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listcertificatesforcarewithqa",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcarewithqa",
  "version" : "3.3",
  "name" : "ListCertificatesForCareWithQA",
  "title" : "ListCertificatesForCareWithQA",
  "status" : "draft",
  "date" : "2026-11-09T03:21:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet ListCertificatesForCareWithQA\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:3).\nRepresenterar responsens lista med intyg inkl. händelser och ärendekommunikation.\nInkluderar både signerade, makulerade och intygsutkast.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcarewithqa",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listcertificatesforcarewithqa",
      "path" : "listcertificatesforcarewithqa",
      "short" : "ListCertificatesForCareWithQA",
      "definition" : "Logisk modell för tjänstekontraktet ListCertificatesForCareWithQA\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:3).\nRepresenterar responsens lista med intyg inkl. händelser och ärendekommunikation.\nInkluderar både signerade, makulerade och intygsutkast."
    },
    {
      "id" : "listcertificatesforcarewithqa.list",
      "path" : "listcertificatesforcarewithqa.list",
      "short" : "List",
      "definition" : "En lista av intyg som kan vara signerade, makulerade eller i form av intygsutkast.",
      "comment" : "TKB-fält: `list` (`List (lokalt definierad i kontraktet)`, kardinalitet 0..1).\n\n**Mappning DIM:** -",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item",
      "path" : "listcertificatesforcarewithqa.list.item",
      "short" : "ListItem",
      "definition" : "Element som håller ihop objekt för ett intyg",
      "comment" : "TKB-fält: `../item` (`ListItem (lokalt definierad i kontraktet)`, kardinalitet 0..*).\n\n**Mappning DIM:** -",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg",
      "path" : "listcertificatesforcarewithqa.list.item.intyg",
      "short" : "Intyg",
      "definition" : "Ett intyg enligt den gemensamma fälttypen Intyg.",
      "comment" : "TKB-fält: `../../intyg` (`Intyg (se 7.1.5)`, kardinalitet 1..1).\n\n**Mappning DIM:** Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.intygs-id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.intygs-id",
      "short" : "IntygId",
      "definition" : "intygs-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.mottagare",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.mottagare",
      "short" : "Part",
      "definition" : "mottagare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.typ",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.typ",
      "short" : "TypAvIntyg",
      "definition" : "typ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.version",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.version",
      "short" : "version",
      "definition" : "version",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.signeringstidpunkt",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.signeringstidpunkt",
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
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skickatTidpunkt",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skickatTidpunkt",
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
      "id" : "listcertificatesforcarewithqa.list.item.intyg.patient",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.patient",
      "short" : "Patient",
      "definition" : "patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.patient.person-id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.patient.person-id",
      "short" : "PersonId",
      "definition" : "person-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.patient.fornamn",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.patient.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.patient.efternamn",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.patient.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.patient.mellannamn",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.patient.mellannamn",
      "short" : "mellannamn",
      "definition" : "mellannamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.patient.postadress",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.patient.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.patient.postnummer",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.patient.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.patient.postort",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.patient.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.patient.kallaAdressuppgifter",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.patient.kallaAdressuppgifter",
      "short" : "KallaAdressuppgifterType",
      "definition" : "kallaAdressuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv",
      "short" : "HosPersonal",
      "definition" : "skapadAv",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.personal-id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.personal-id",
      "short" : "HsaId",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.fullstandigtNamn",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.fullstandigtNamn",
      "short" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "definition" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.forskrivarkod",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.befattning",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.befattning",
      "short" : "Befattning",
      "definition" : "befattning",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet",
      "short" : "Enhet",
      "definition" : "enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.enhets-id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.enhets-id",
      "short" : "HsaId",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.arbetsplatskod",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.arbetsplatskod",
      "short" : "ArbetsplatsKod",
      "definition" : "o.i.d för arbetsplatskod är 1.2.752.29.4.71",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.enhetsnamn",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.enhetsnamn",
      "short" : "enhetsnamn",
      "definition" : "enhetsnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.postadress",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.postnummer",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.postort",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.telefonnummer",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.epost",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.epost",
      "short" : "epost",
      "definition" : "epost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.vardgivare",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.vardgivare",
      "short" : "Vardgivare",
      "definition" : "vardgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.vardgivare.vardgivare-id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.vardgivare.vardgivare-id",
      "short" : "HsaId",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.vardgivare.vardgivarnamn",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.enhet.vardgivare.vardgivarnamn",
      "short" : "vardgivarnamn",
      "definition" : "vardgivarnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.specialistkompetens",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.specialistkompetens",
      "short" : "Specialistkompetens",
      "definition" : "specialistkompetens",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.specialistkompetens.code",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.specialistkompetens.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.specialistkompetens.displayName",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.specialistkompetens.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.legitimeratYrke",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.skapadAv.legitimeratYrke",
      "short" : "LegitimeratYrkeType",
      "definition" : "legitimeratYrke",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.relation",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.relation",
      "short" : "Relation",
      "definition" : "relation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.relation.typ",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.relation.typ",
      "short" : "TypAvRelation",
      "definition" : "typ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.relation.intygs-id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.relation.intygs-id",
      "short" : "IntygId",
      "definition" : "intygs-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.status",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.status",
      "short" : "IntygsStatus",
      "definition" : "status",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.status.part",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.status.part",
      "short" : "Part",
      "definition" : "part",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.status.status",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.status.status",
      "short" : "Statuskod",
      "definition" : "status",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.status.tidpunkt",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.status.tidpunkt",
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
      "id" : "listcertificatesforcarewithqa.list.item.intyg.svar",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.svar",
      "short" : "Svar",
      "definition" : "svar",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.svar.instans",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.svar.instans",
      "short" : "instans",
      "definition" : "instans",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.svar.delsvar",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.svar.delsvar",
      "short" : "(anonym typ)",
      "definition" : "delsvar",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.svar.delsvar.id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.svar.delsvar.id",
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
      "id" : "listcertificatesforcarewithqa.list.item.intyg.svar.id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.svar.id",
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
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift",
      "short" : "UnderskriftType",
      "definition" : "underskrift",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature",
      "short" : "SignatureType",
      "definition" : "Signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo",
      "short" : "SignedInfoType",
      "definition" : "SignedInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod",
      "short" : "CanonicalizationMethodType",
      "definition" : "CanonicalizationMethod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod.Algorithm",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod.Algorithm",
      "short" : "Algorithm",
      "definition" : "Algorithm (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.SignatureMethod",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.SignatureMethod",
      "short" : "SignatureMethodType",
      "definition" : "SignatureMethod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.SignatureMethod.HMACOutputLength",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.SignatureMethod.HMACOutputLength",
      "short" : "HMACOutputLength",
      "definition" : "HMACOutputLength",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.SignatureMethod.Algorithm",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.SignatureMethod.Algorithm",
      "short" : "Algorithm",
      "definition" : "Algorithm (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference",
      "short" : "ReferenceType",
      "definition" : "Reference",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms",
      "short" : "TransformsType",
      "definition" : "Transforms",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform",
      "short" : "TransformType",
      "definition" : "Transform",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.XPath",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.XPath",
      "short" : "XPath",
      "definition" : "XPath",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.Algorithm",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.Algorithm",
      "short" : "Algorithm",
      "definition" : "Algorithm (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod",
      "short" : "DigestMethodType",
      "definition" : "DigestMethod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod.Algorithm",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod.Algorithm",
      "short" : "Algorithm",
      "definition" : "Algorithm (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.DigestValue",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.DigestValue",
      "short" : "DigestValue",
      "definition" : "DigestValue",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.URI",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.URI",
      "short" : "URI",
      "definition" : "URI (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Type",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Reference.Type",
      "short" : "Type",
      "definition" : "Type (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignedInfo.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignatureValue",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignatureValue",
      "short" : "SignatureValueType",
      "definition" : "SignatureValue",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignatureValue.value",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignatureValue.value",
      "short" : "Textinnehåll",
      "definition" : "Elementets textinnehåll i XML (simpleContent).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignatureValue.Id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.SignatureValue.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo",
      "short" : "KeyInfoType",
      "definition" : "KeyInfo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyName",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyName",
      "short" : "KeyName",
      "definition" : "KeyName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue",
      "short" : "KeyValueType",
      "definition" : "KeyValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "listcertificatesforcarewithqa-choice-1",
        "severity" : "error",
        "human" : "Exakt ett av DSAKeyValue, RSAKeyValue ska anges (xs:choice i schemat).",
        "expression" : "DSAKeyValue.exists() xor RSAKeyValue.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcarewithqa"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue",
      "short" : "DSAKeyValueType",
      "definition" : "DSAKeyValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.P",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.P",
      "short" : "P",
      "definition" : "P",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Q",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Q",
      "short" : "Q",
      "definition" : "Q",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.G",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.G",
      "short" : "G",
      "definition" : "G",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Y",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Y",
      "short" : "Y",
      "definition" : "Y",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.J",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.J",
      "short" : "J",
      "definition" : "J",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Seed",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Seed",
      "short" : "Seed",
      "definition" : "Seed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.PgenCounter",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.PgenCounter",
      "short" : "PgenCounter",
      "definition" : "PgenCounter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue",
      "short" : "RSAKeyValueType",
      "definition" : "RSAKeyValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Modulus",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Modulus",
      "short" : "Modulus",
      "definition" : "Modulus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Exponent",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Exponent",
      "short" : "Exponent",
      "definition" : "Exponent",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod",
      "short" : "RetrievalMethodType",
      "definition" : "RetrievalMethod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms",
      "short" : "TransformsType",
      "definition" : "Transforms",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform",
      "short" : "TransformType",
      "definition" : "Transform",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.XPath",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.XPath",
      "short" : "XPath",
      "definition" : "XPath",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.Algorithm",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.Algorithm",
      "short" : "Algorithm",
      "definition" : "Algorithm (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.URI",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.URI",
      "short" : "URI",
      "definition" : "URI (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Type",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Type",
      "short" : "Type",
      "definition" : "Type (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data",
      "short" : "X509DataType",
      "definition" : "X509Data",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "listcertificatesforcarewithqa-choice-6",
        "severity" : "error",
        "human" : "Exakt ett av X509IssuerSerial, X509SKI, X509SubjectName, X509Certificate, X509CRL ska anges (xs:choice i schemat).",
        "expression" : "iif(X509IssuerSerial.exists(), 1, 0) + iif(X509SKI.exists(), 1, 0) + iif(X509SubjectName.exists(), 1, 0) + iif(X509Certificate.exists(), 1, 0) + iif(X509CRL.exists(), 1, 0) = 1",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcarewithqa"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial",
      "short" : "X509IssuerSerialType",
      "definition" : "X509IssuerSerial",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509IssuerName",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509IssuerName",
      "short" : "X509IssuerName",
      "definition" : "X509IssuerName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509SerialNumber",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509SerialNumber",
      "short" : "X509SerialNumber",
      "definition" : "X509SerialNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509SKI",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509SKI",
      "short" : "X509SKI",
      "definition" : "X509SKI",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509SubjectName",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509SubjectName",
      "short" : "X509SubjectName",
      "definition" : "X509SubjectName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509Certificate",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509Certificate",
      "short" : "X509Certificate",
      "definition" : "X509Certificate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509CRL",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509CRL",
      "short" : "X509CRL",
      "definition" : "X509CRL",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.PGPData",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.PGPData",
      "short" : "PGPDataType",
      "definition" : "PGPData",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "listcertificatesforcarewithqa-choice-11",
        "severity" : "error",
        "human" : "Exakt ett av PGPKeyID, PGPKeyPacket ska anges (xs:choice i schemat).",
        "expression" : "PGPKeyID.exists() xor PGPKeyPacket.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcarewithqa"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyID",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyID",
      "short" : "PGPKeyID",
      "definition" : "PGPKeyID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyPacket",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyPacket",
      "short" : "PGPKeyPacket",
      "definition" : "PGPKeyPacket",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.SPKIData",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.SPKIData",
      "short" : "SPKIDataType",
      "definition" : "SPKIData",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.SPKIData.SPKISexp",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.SPKIData.SPKISexp",
      "short" : "SPKISexp",
      "definition" : "SPKISexp",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.MgmtData",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.MgmtData",
      "short" : "MgmtData",
      "definition" : "MgmtData",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.Id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.KeyInfo.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.Object",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.Object",
      "short" : "ObjectType",
      "definition" : "Object",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.Object.Id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.Object.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.Object.MimeType",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.Object.MimeType",
      "short" : "MimeType",
      "definition" : "MimeType (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.Object.Encoding",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.Object.Encoding",
      "short" : "Encoding",
      "definition" : "Encoding (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.Id",
      "path" : "listcertificatesforcarewithqa.list.item.intyg.underskrift.Signature.Id",
      "short" : "Id",
      "definition" : "Id (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.handelser",
      "path" : "listcertificatesforcarewithqa.list.item.handelser",
      "short" : "HandelseList",
      "definition" : "En lista innehållande samtliga händelser för ett intyg.",
      "comment" : "TKB-fält: `../../handelser` (`HandelseList`, kardinalitet 1..1).\n\n**Mappning DIM:** -",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.handelser.handelse",
      "path" : "listcertificatesforcarewithqa.list.item.handelser.handelse",
      "short" : "Handelse",
      "definition" : "Information om en händelse.\n\nEn händelse kan gälla ett intygsutkast, ett signerat intyg eller ärendekommunikationen för ett intyg.",
      "comment" : "TKB-fält: `../../../handelse` (`Handelse (se 7.1.3)`, kardinalitet 0..*).\n\n**Mappning DIM:** Händelse",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.handelser.handelse.handelsekod",
      "path" : "listcertificatesforcarewithqa.list.item.handelser.handelse.handelsekod",
      "short" : "Handelsekod",
      "definition" : "handelsekod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.handelser.handelse.tidpunkt",
      "path" : "listcertificatesforcarewithqa.list.item.handelser.handelse.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/TimeStampMedMillisekunder"]
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.handelser.handelse.amne",
      "path" : "listcertificatesforcarewithqa.list.item.handelser.handelse.amne",
      "short" : "Amneskod",
      "definition" : "amne",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.handelser.handelse.sistaDatumForSvar",
      "path" : "listcertificatesforcarewithqa.list.item.handelser.handelse.sistaDatumForSvar",
      "short" : "sistaDatumForSvar",
      "definition" : "sistaDatumForSvar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.handelser.handelse.hanteratAv",
      "path" : "listcertificatesforcarewithqa.list.item.handelser.handelse.hanteratAv",
      "short" : "HsaId",
      "definition" : "hanteratAv",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.skickadeFragor",
      "path" : "listcertificatesforcarewithqa.list.item.skickadeFragor",
      "short" : "Arenden",
      "definition" : "Frågor som rör intyget och som har skickats från vården.",
      "comment" : "TKB-fält: `../../skickadeFragor` (`Arenden (se 7.1.1)`, kardinalitet 1..1).\n\n**Mappning DIM:** Ärende",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.skickadeFragor.totalt",
      "path" : "listcertificatesforcarewithqa.list.item.skickadeFragor.totalt",
      "short" : "totalt",
      "definition" : "totalt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.skickadeFragor.ejBesvarade",
      "path" : "listcertificatesforcarewithqa.list.item.skickadeFragor.ejBesvarade",
      "short" : "ejBesvarade",
      "definition" : "ejBesvarade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.skickadeFragor.besvarade",
      "path" : "listcertificatesforcarewithqa.list.item.skickadeFragor.besvarade",
      "short" : "besvarade",
      "definition" : "besvarade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.skickadeFragor.hanterade",
      "path" : "listcertificatesforcarewithqa.list.item.skickadeFragor.hanterade",
      "short" : "hanterade",
      "definition" : "hanterade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.mottagnaFragor",
      "path" : "listcertificatesforcarewithqa.list.item.mottagnaFragor",
      "short" : "Arenden",
      "definition" : "Frågor som rör intyget och som har skickats från intygsmottagaren.",
      "comment" : "TKB-fält: `../../mottagnaFragor` (`Arenden (se 7.1.1)`, kardinalitet 1..1).\n\n**Mappning DIM:** Ärende",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.mottagnaFragor.totalt",
      "path" : "listcertificatesforcarewithqa.list.item.mottagnaFragor.totalt",
      "short" : "totalt",
      "definition" : "totalt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.mottagnaFragor.ejBesvarade",
      "path" : "listcertificatesforcarewithqa.list.item.mottagnaFragor.ejBesvarade",
      "short" : "ejBesvarade",
      "definition" : "ejBesvarade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.mottagnaFragor.besvarade",
      "path" : "listcertificatesforcarewithqa.list.item.mottagnaFragor.besvarade",
      "short" : "besvarade",
      "definition" : "besvarade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.mottagnaFragor.hanterade",
      "path" : "listcertificatesforcarewithqa.list.item.mottagnaFragor.hanterade",
      "short" : "hanterade",
      "definition" : "hanterade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listcertificatesforcarewithqa.list.item.ref",
      "path" : "listcertificatesforcarewithqa.list.item.ref",
      "short" : "ref",
      "definition" : "Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt.",
      "comment" : "TKB-fält: `../../ref` (`string`, kardinalitet 0..1).\n\n**Mappning DIM:** Referens.ref",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
