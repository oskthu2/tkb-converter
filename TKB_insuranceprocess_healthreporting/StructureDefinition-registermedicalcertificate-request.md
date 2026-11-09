# RegisterMedicalCertificate — Request - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterMedicalCertificate — Request**

## Logical Model: RegisterMedicalCertificate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/registermedicalcertificate-request | *Version*:3.1 |
| Active as of 2026-11-09 | *Computable Name*:RegisterMedicalCertificateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet RegisterMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3). Skickar ett komplett läkarintyg FK7263. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-registermedicalcertificate-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registermedicalcertificate-request.csv), [Excel](StructureDefinition-registermedicalcertificate-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registermedicalcertificate-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/registermedicalcertificate-request",
  "version" : "3.1",
  "name" : "RegisterMedicalCertificateRequest",
  "title" : "RegisterMedicalCertificate — Request",
  "status" : "active",
  "date" : "2026-11-09T03:41:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet RegisterMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3).\nSkickar ett komplett läkarintyg FK7263.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/registermedicalcertificate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registermedicalcertificate-request",
      "path" : "registermedicalcertificate-request",
      "short" : "RegisterMedicalCertificate — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet RegisterMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3).\nSkickar ett komplett läkarintyg FK7263."
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande",
      "path" : "registermedicalcertificate-request.lakarutlatande",
      "short" : "lakarutlatandeType",
      "definition" : "lakarutlatande",
      "comment" : "TKB-fält: `lakarutlatande` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.lakarutlatande-id",
      "path" : "registermedicalcertificate-request.lakarutlatande.lakarutlatande-id",
      "short" : "Attributet efterfrågas inte i blanketten utan är något som genereras av källsystemet och hämtas därifrån",
      "definition" : "Identitet på läkarintyget. Är en GUID.",
      "comment" : "TKB-fält: `lakarutlatande.lakarutlatande-id` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.typAvUtlatande",
      "path" : "registermedicalcertificate-request.lakarutlatande.typAvUtlatande",
      "short" : "typAvUtlatande",
      "definition" : "Fix text enligt: Läkarintyg enligt 3 kap, 8 § lagen (1962:381) om allmän försäkring",
      "comment" : "TKB-fält: `lakarutlatande.typAvUtlatande` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.kommentar",
      "path" : "registermedicalcertificate-request.lakarutlatande.kommentar",
      "short" : "kommentar",
      "definition" : "Extra upplysningar i fritext (Fält 13)",
      "comment" : "TKB-fält: `lakarutlatande.kommentar` (`string`, kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.signeringsdatum",
      "path" : "registermedicalcertificate-request.lakarutlatande.signeringsdatum",
      "short" : "Datum och eventuellt klockslag när signering skedde.",
      "definition" : "När läkarintyget signerades (Fält 14)",
      "comment" : "TKB-fält: `lakarutlatande.signeringsdatum` (`datetime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skickatDatum",
      "path" : "registermedicalcertificate-request.lakarutlatande.skickatDatum",
      "short" : "Datum och klockslag när läkarintyget skickades av systemet.",
      "definition" : "När läkarintyget skickades till FK",
      "comment" : "TKB-fält: `lakarutlatande.skickatdatum` (`datetime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.patient",
      "path" : "registermedicalcertificate-request.lakarutlatande.patient",
      "short" : "patientType",
      "definition" : "Patienten",
      "comment" : "TKB-fält: `lakarutlatande.patient` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.patient.person-id",
      "path" : "registermedicalcertificate-request.lakarutlatande.patient.person-id",
      "short" : "II",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "comment" : "TKB-fält: `..patient.person-id` (`Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.patient.person-id.root",
      "path" : "registermedicalcertificate-request.lakarutlatande.patient.person-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.patient.person-id.extension",
      "path" : "registermedicalcertificate-request.lakarutlatande.patient.person-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.patient.person-id.identifierName",
      "path" : "registermedicalcertificate-request.lakarutlatande.patient.person-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.patient.fullstandigtNamn",
      "path" : "registermedicalcertificate-request.lakarutlatande.patient.fullstandigtNamn",
      "short" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "definition" : "Patientens hela namn",
      "comment" : "TKB-fält: `..patient.fullstandigtNamn` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal",
      "short" : "hosPersonalType",
      "definition" : "Vårdpersonal",
      "comment" : "TKB-fält: `lakarutlatande.skapadAvHosPersonal` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.personal-id",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.personal-id",
      "short" : "II",
      "definition" : "Hsa-Id för Hos-person som utfärdar läkarintyget.",
      "comment" : "TKB-fält: `..skapadAvHosPersonal.personal-id` (`hsaid`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.personal-id.root",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.personal-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.personal-id.extension",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.personal-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.personal-id.identifierName",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.personal-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.fullstandigtNamn",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.fullstandigtNamn",
      "short" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "definition" : "Namn för Hos-person som utfärdar läkarintyget",
      "comment" : "TKB-fält: `..skapadAvHosPersonal.fullstandigtNamn` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.forskrivarkod",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarkod för Hos-person",
      "comment" : "TKB-fält: `..skapadAvHosPersonal.forskrivarkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet",
      "short" : "enhetType",
      "definition" : "Vårdenhet",
      "comment" : "TKB-fält: `..skapadAvHosPersonal.enhet` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.enhets-id",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.enhets-id",
      "short" : "II",
      "definition" : "Hsa-Id för Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.enhets-id` (`hsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.enhets-id.root",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.enhets-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.enhets-id.extension",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.enhets-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.enhets-id.identifierName",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.enhets-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod",
      "short" : "II",
      "definition" : "Arbetsplatskoden för vårdenheten (Fält 17)",
      "comment" : "TKB-fält: `..enhet.arbetsplatskod` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** o.i.d för arbetsplatskod är 1.2.752.29.4.71",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod.root",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod.extension",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod.identifierName",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.enhetsnamn",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.enhetsnamn",
      "short" : "enhetsnamn",
      "definition" : "Namn på Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.enhets-namn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.postadress",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.postadress",
      "short" : "postadress",
      "definition" : "Postadress för Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.postadress` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.postnummer",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.postnummer",
      "short" : "postnummer",
      "definition" : "Postnummer för Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.postnummer` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.postort",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.postort",
      "short" : "postort",
      "definition" : "Postort för Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.postort` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.telefonnummer",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "Telefonnummer till Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.telefonnummer` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.epost",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.epost",
      "short" : "epost",
      "definition" : "Epost adress för Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.epost` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare",
      "short" : "vardgivareType",
      "definition" : "Vårdgivare",
      "comment" : "TKB-fält: `..enhet.vardgivare` (kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id",
      "short" : "II",
      "definition" : "Hsa-Id för Hos-vårdgivare där läkarintyget utfärdas.",
      "comment" : "TKB-fält: `..vardgivare.vardgivare-id` (`hsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id.root",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id.extension",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id.identifierName",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivarnamn",
      "path" : "registermedicalcertificate-request.lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivarnamn",
      "short" : "vardgivarnamn",
      "definition" : "vardgivarnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.vardkontakt",
      "path" : "registermedicalcertificate-request.lakarutlatande.vardkontakt",
      "short" : "vardkontaktType",
      "definition" : "Vårdkontakt",
      "comment" : "TKB-fält: `lakarutlatande.vardkontakt` (kardinalitet 0..2).\n\nObs: modellen anger 0..* där TKB:n anger 0..2.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.vardkontakt.vardkontakttyp",
      "path" : "registermedicalcertificate-request.lakarutlatande.vardkontakt.vardkontakttyp",
      "short" : "Mappas mot fält 4 del 2 på blanketten (de två översta kryssalternativen)",
      "definition" : "Typ av vårdkontakt (min undersökning av patienten eller min telefonkontakt med patienten)\n\n(Fält 4, de 2 översta kryssrutorna)",
      "comment" : "TKB-fält: `..vardkontakt.vardkontakttyp` (`string`, kardinalitet 0..1*).\n\n**Modellanteckning:** Mappas mot fält 4 del 2 på blanketten (de två översta kryssalternativen) Tillåtna värden: Min_undersokning_av_patienten, Min_telefonkontakt_med_patienten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.vardkontakt.vardkontaktstid",
      "path" : "registermedicalcertificate-request.lakarutlatande.vardkontakt.vardkontaktstid",
      "short" : "Mappas mot fält 4 del 2 på blanketten (de två översta alternativen under \"Datum\")",
      "definition" : "Datum då vårdkontakten skedde",
      "comment" : "TKB-fält: `..vardkontakt.vardkontaktstid` (`datum`, kardinalitet 0..1*).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.referens",
      "path" : "registermedicalcertificate-request.lakarutlatande.referens",
      "short" : "referensType",
      "definition" : "Referens",
      "comment" : "TKB-fält: `lakarutlatande.referens` (kardinalitet 0..2).",
      "min" : 0,
      "max" : "2",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.referens.referenstyp",
      "path" : "registermedicalcertificate-request.lakarutlatande.referens.referenstyp",
      "short" : "Mappas mot fält 4 del 2 på blanketten (de två nedersta kryssalternativen)",
      "definition" : "Typ av referens (journaluppgifter eller annat)\n\n(Fält 4, de 2 nedre kryssrutorna)",
      "comment" : "TKB-fält: `..referens.referenstyp` (`string`, kardinalitet 0..1*).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.referens.datum",
      "path" : "registermedicalcertificate-request.lakarutlatande.referens.datum",
      "short" : "Mappas mot fält 4 del 2 på blanketten (de två nedersta alternativen under \"Datum\")",
      "definition" : "Datum för ovanstående referens",
      "comment" : "TKB-fält: `..referens.datum` (`datum`, kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.aktivitet",
      "path" : "registermedicalcertificate-request.lakarutlatande.aktivitet",
      "short" : "aktivitetType",
      "definition" : "Aktiviteter",
      "comment" : "TKB-fält: `lakarutlatande.aktivitet` (kardinalitet 0..n*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.aktivitet.aktivitetskod",
      "path" : "registermedicalcertificate-request.lakarutlatande.aktivitet.aktivitetskod",
      "short" : "Mappas mot fält 6, 7, 11 och 12",
      "definition" : "Aktivitetskoder som representerar olika val i blanketten.\n\n(Fält 1, Fält 6a alla kryssrutor, Fält 6b alla kryssrutor, Fält 7 alla kryssrutor, Fält 11 alla kryssrutor, Fält 12)",
      "comment" : "TKB-fält: `..aktivitet.aktivitetskod` (`string`, kardinalitet 0..1*).\n\n**Modellanteckning:** Mappas mot fält 6, 7, 11 och 12 Tillåtna värden: Arbetslivsinriktad_rehabilitering_ar_aktuell, Arbetslivsinriktad_rehabilitering_ar_ej_aktuell, Gar_ej_att_bedomma_om_arbetslivsinriktad_rehabilitering_ar_aktuell, Forandrat_ressatt_till_arbetsplatsen_ar_aktuellt, Forandrat_ressatt_till_arbetsplatsen_ar_ej_aktuellt, Planerad_eller_pagaende_behandling_eller_atgard_inom_sjukvarden, Planerad_eller_pagaende_annan_atgard, Kontakt_med_Forsakringskassan_ar_aktuell, Patienten_behover_fa_kontakt_med_foretagshalsovarden, Avstangning_enligt_SmL_pga_smitta, Ovrigt, Patienten_behover_fa_kontakt_med_Arbetsformedlingen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.aktivitet.beskrivning",
      "path" : "registermedicalcertificate-request.lakarutlatande.aktivitet.beskrivning",
      "short" : "beskrivning",
      "definition" : "En eventuell fritext som hänger ihop med aktivitetskoden.",
      "comment" : "TKB-fält: `..aktivitet.beskrivning` (kardinalitet 0..1*).\n\n**Modellanteckning:** Mappas mot fält 6 i de fall aktivitetskod motsvarar någon av de kryss som har möjlighet att definieras tydligare (de med en linje efter sig).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.bedomtTillstand",
      "path" : "registermedicalcertificate-request.lakarutlatande.bedomtTillstand",
      "short" : "bedomtTillstandType",
      "definition" : "Bedömt tillstånd",
      "comment" : "TKB-fält: `lakarutlatande.bedomtTillstand` (kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.bedomtTillstand.beskrivning",
      "path" : "registermedicalcertificate-request.lakarutlatande.bedomtTillstand.beskrivning",
      "short" : "Mappas mot fält 3",
      "definition" : "Aktuellt sjukdomsförlopp (Fält 3)",
      "comment" : "TKB-fält: `..bedomtTillstand.beskrivning` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand",
      "path" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand",
      "short" : "medicinsktTillstandType",
      "definition" : "Medicinskt tillstånd",
      "comment" : "TKB-fält: `lakarutlatande.medicinsktTillstand` (kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.beskrivning",
      "path" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.beskrivning",
      "short" : "Mappas mot fält 2",
      "definition" : "Diagnosinformation i fritext (Fält 2)",
      "comment" : "TKB-fält: `..medicinsktTillstand.beskrivning` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.tillstandskod",
      "path" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.tillstandskod",
      "short" : "CD",
      "definition" : "Diagnoskod enligt ICD-10-SE alt. KSH97P (Fält 2)",
      "comment" : "TKB-fält: `..medicinsktTillstand.tillstandskod` (kardinalitet 0..1*).\n\n**Modellanteckning:** Mappas mot fält 2 del 2 (ICD-10-koden)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.tillstandskod.code",
      "path" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.tillstandskod.code",
      "short" : "code",
      "definition" : "kod",
      "comment" : "TKB-fält: `..tillstandskod.code` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** code (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.tillstandskod.codeSystem",
      "path" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.tillstandskod.codeSystem",
      "short" : "codeSystem",
      "definition" : "Kodsystemets identifierare",
      "comment" : "TKB-fält: `..tillstandskod.codeSystem` (`Uid`, kardinalitet 0..1).\n\n**Modellanteckning:** codeSystem (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.tillstandskod.codeSystemName",
      "path" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.tillstandskod.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "Kodsystemets namn",
      "comment" : "TKB-fält: `..tillstandskod.codeSystemName` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** codeSystemName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.tillstandskod.codeSystemVersion",
      "path" : "registermedicalcertificate-request.lakarutlatande.medicinsktTillstand.tillstandskod.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "Version av kodsystemet",
      "comment" : "TKB-fält: `..tillstandskod.codeSystemVersion` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** codeSystemVersion (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand",
      "short" : "funktionstillstandType",
      "definition" : "Funktionstillstånd",
      "comment" : "TKB-fält: `lakarutlatande.funktionstillstand` (kardinalitet 0..2*).",
      "min" : 0,
      "max" : "2",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.beskrivning",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.beskrivning",
      "short" : "beskrivning",
      "definition" : "Om typAvFunktionstillstand=Kroppsfunktion avses funktionsnedsättning (Fält 4)\n\nOm typAvFunktionstillstand=Aktivitet avses aktivitetsbegränsning (Fält 5)",
      "comment" : "TKB-fält: `..funktionstillstand.beskrivning` (`string`, kardinalitet 0..1*).\n\n**Modellanteckning:** Mappas mot fält 4 och 5. Informationen som återhämtas i fält 4 läggs i beskrivning med typAvFunktionstillstand satt till kroppsfunktion. Informationen som återhämtas i fält 5 läggs i beskrivning i en ny instans av klassen med typAvFunktionstillstand satt till Aktivitet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.typAvFunktionstillstand",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.typAvFunktionstillstand",
      "short" : "Mappas mot fält 4 när det är kroppsfunktion och 5 när det är aktivitet",
      "definition" : "Styr olika typer enligt ovan",
      "comment" : "TKB-fält: `..funktionstillstand.typAvFunktionstillstand` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga",
      "short" : "arbetsformagaType",
      "definition" : "Arbetsförmåga, enbart då typAvFunktionstillstand=Aktivitet",
      "comment" : "TKB-fält: `..funktionstillstand.arbetsformaga` (kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.motivering",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.motivering",
      "short" : "motivering",
      "definition" : "Arbetsförmågebedömning (Fält 9)",
      "comment" : "TKB-fält: `..arbetsformaga.motivering` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.prognosangivelse",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.prognosangivelse",
      "short" : "prognosangivelse",
      "definition" : "Prognosangivelse (Fält 10 alla kryssrutor)",
      "comment" : "TKB-fält: `..arbetsformaga.prognosangivelse` (`string`, kardinalitet 0..1*).\n\n**Modellanteckning:** prognosangivelse Tillåtna värden: Aterstallas_helt, Aterstallas_delvis, Inte_aterstallas, Det_gar_inte_att_bedomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsuppgift",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsuppgift",
      "short" : "arbetsuppgiftType",
      "definition" : "Arbetsuppgift",
      "comment" : "TKB-fält: `..arbetsformaga.arbetsuppgift` (kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsuppgift.typAvArbetsuppgift",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsuppgift.typAvArbetsuppgift",
      "short" : "Mappas mot fält 8, de två översta strecken till höger",
      "definition" : "Anger patientens typ av arbetsuppgift i fritext (Fält 8a fritexten kopplad till översta kryssrutan)",
      "comment" : "TKB-fält: `..arbetsuppgift.typAvArbetsuppgift` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning",
      "short" : "arbetsformagaNedsattningType",
      "definition" : "arbetsformagaNedsattning",
      "comment" : "TKB-fält: `..arbetsformaga.arbetsformagaNedsattning` (kardinalitet 0..4*).",
      "min" : 1,
      "max" : "4",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetFrom",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetFrom",
      "short" : "Mappas mot fält 8, de fyra nedersta strecken till höger",
      "definition" : "Från när arbetsförmågan är nedsatt (Fält 8b)",
      "comment" : "TKB-fält: `..arbetsformagaNedsattning.varaktighetFrom` (`datum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetTom",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetTom",
      "short" : "Mappas mot fält 8, de fyra nedersta strecken till höger",
      "definition" : "Till när arbetsförmågan är nedsatt (Fält 8b)",
      "comment" : "TKB-fält: `..arbetsformagaNedsattning.varaktighetTom` (`datum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad",
      "short" : "Mappas mot fält 8, de fyra nedersta kryssrutorna",
      "definition" : "Hur mycket arbetsförmågan är nedsatt (Fält 8b)",
      "comment" : "TKB-fält: `..arbetsformagaNedsattning.nedsattningsgrad` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Mappas mot fält 8, de fyra nedersta kryssrutorna Tillåtna värden: Helt_nedsatt, Nedsatt_med_3/4, Nedsatt_med_1/2, Nedsatt_med_1/4.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.sysselsattning",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.sysselsattning",
      "short" : "sysselsattningType",
      "definition" : "Sysselsättning(Fält 8a alla kryssrutor)",
      "comment" : "TKB-fält: `..arbetsformaga.sysselsattning` (kardinalitet 0..3*).",
      "min" : 0,
      "max" : "3",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.sysselsattning.typAvSysselsattning",
      "path" : "registermedicalcertificate-request.lakarutlatande.funktionstillstand.arbetsformaga.sysselsattning.typAvSysselsattning",
      "short" : "Mappas mot fält 8, de tre översta kryssrutorna",
      "definition" : "Patientens typ av sysselsättning",
      "comment" : "TKB-fält: `..sysselsattning.typAvSysselsattning` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Mappas mot fält 8, de tre översta kryssrutorna Tillåtna värden: Nuvarande_arbete, Arbetsloshet, Foraldraledighet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
