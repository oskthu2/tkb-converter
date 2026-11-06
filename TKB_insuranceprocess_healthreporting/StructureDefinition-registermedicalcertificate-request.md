# RegisterMedicalCertificate — Request - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterMedicalCertificate — Request**

## Logical Model: RegisterMedicalCertificate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/registermedicalcertificate-request | *Version*:3.1 |
| Active as of 2026-11-06 | *Computable Name*:RegisterMedicalCertificateRequest |
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
  "date" : "2026-11-06T21:35:54+00:00",
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
      "id" : "registermedicalcertificate-request.lakarutlatandeId",
      "path" : "registermedicalcertificate-request.lakarutlatandeId",
      "short" : "Identitet på läkarintyget (GUID)",
      "definition" : "Identitet på läkarintyget. Är en GUID.",
      "comment" : "TKB-fält: `lakarutlatande.lakarutlatande-id` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Unik identifierare för läkarintyget. Är en GUID.\nFält: lakarutlatande.lakarutlatande-id. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.typAvUtlatande",
      "path" : "registermedicalcertificate-request.typAvUtlatande",
      "short" : "Typ av utlåtande",
      "definition" : "Fix text enligt: Läkarintyg enligt 3 kap, 8 § lagen (1962:381) om allmän försäkring",
      "comment" : "TKB-fält: `lakarutlatande.typAvUtlatande` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Fix text: 'Läkarintyg enligt 3 kap, 8 § lagen (1962:381) om allmän försäkring'.\nFält: lakarutlatande.typAvUtlatande. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.kommentar",
      "path" : "registermedicalcertificate-request.kommentar",
      "short" : "Extra upplysningar i fritext (Fält 13)",
      "definition" : "Extra upplysningar i fritext (Fält 13)",
      "comment" : "TKB-fält: `lakarutlatande.kommentar` (`string`, kardinalitet 0..1*).\n\n**Modellanteckning:** Extra upplysningar i fritext. Fält 13 på blanketten.\nVillkorligt: obligatoriskt om Prognosangivelse=DET_GAR_INTE_ATT_BEDOMMA eller Referenstyp=Annat.\nFält: lakarutlatande.kommentar. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.signeringsdatum",
      "path" : "registermedicalcertificate-request.signeringsdatum",
      "short" : "När läkarintyget signerades (Fält 14)",
      "definition" : "När läkarintyget signerades (Fält 14)",
      "comment" : "TKB-fält: `lakarutlatande.signeringsdatum` (`datetime`, kardinalitet 1..1).\n\n**Modellanteckning:** Datum och tid för signering. Fält 14 på blanketten.\nFält: lakarutlatande.signeringsdatum. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skickatdatum",
      "path" : "registermedicalcertificate-request.skickatdatum",
      "short" : "När läkarintyget skickades till FK",
      "definition" : "När läkarintyget skickades till FK",
      "comment" : "TKB-fält: `lakarutlatande.skickatdatum` (`datetime`, kardinalitet 1..1).\n\n**Modellanteckning:** Datum och tid för utskick till Försäkringskassan.\nFält: lakarutlatande.skickatdatum. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.patient",
      "path" : "registermedicalcertificate-request.patient",
      "short" : "Patienten",
      "definition" : "Patienten",
      "comment" : "TKB-fält: `lakarutlatande.patient` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.patient.personId",
      "path" : "registermedicalcertificate-request.patient.personId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "comment" : "TKB-fält: `..patient.person-id` (`Id`, kardinalitet 1..1).\n\n**Modellanteckning:** Patientens personnummer eller samordningsnummer.\nFält: lakarutlatande.patient.person-id. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.patient.fullstandigtNamn",
      "path" : "registermedicalcertificate-request.patient.fullstandigtNamn",
      "short" : "Patientens hela namn",
      "definition" : "Patientens hela namn",
      "comment" : "TKB-fält: `..patient.fullstandigtNamn` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Fält: lakarutlatande.patient.fullstandigtNamn. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal",
      "short" : "Vårdpersonal som utfärdar läkarintyget",
      "definition" : "Vårdpersonal",
      "comment" : "TKB-fält: `lakarutlatande.skapadAvHosPersonal` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.personalId",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.personalId",
      "short" : "HSA-Id för Hos-person som utfärdar läkarintyget",
      "definition" : "Hsa-Id för Hos-person som utfärdar läkarintyget.",
      "comment" : "TKB-fält: `..skapadAvHosPersonal.personal-id` (`hsaid`, kardinalitet 1..1).\n\n**Modellanteckning:** system = urn:oid:1.2.752.129.2.1.4.1 (HSA-ID).\nFält: lakarutlatande.skapadAvHosPersonal.personal-id. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.forskrivarkod",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.forskrivarkod",
      "short" : "Förskrivarkod för Hos-person",
      "definition" : "Förskrivarkod för Hos-person",
      "comment" : "TKB-fält: `..skapadAvHosPersonal.forskrivarkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.fullstandigtNamn",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.fullstandigtNamn",
      "short" : "Namn för Hos-person som utfärdar läkarintyget",
      "definition" : "Namn för Hos-person som utfärdar läkarintyget",
      "comment" : "TKB-fält: `..skapadAvHosPersonal.fullstandigtNamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet",
      "short" : "Vårdenhet",
      "definition" : "Vårdenhet",
      "comment" : "TKB-fält: `..skapadAvHosPersonal.enhet` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.enhetsId",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.enhetsId",
      "short" : "HSA-Id för Hos-vårdenhet",
      "definition" : "Hsa-Id för Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.enhets-id` (`hsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.arbetsplatskod",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.arbetsplatskod",
      "short" : "Arbetsplatskoden för vårdenheten (Fält 17)",
      "definition" : "Arbetsplatskoden för vårdenheten (Fält 17)",
      "comment" : "TKB-fält: `..enhet.arbetsplatskod` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.enhetsNamn",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.enhetsNamn",
      "short" : "Namn på Hos-vårdenhet",
      "definition" : "Namn på Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.enhets-namn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.postadress",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.postadress",
      "short" : "Postadress för Hos-vårdenhet",
      "definition" : "Postadress för Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.postadress` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.postnummer",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.postnummer",
      "short" : "Postnummer för Hos-vårdenhet",
      "definition" : "Postnummer för Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.postnummer` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.postort",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.postort",
      "short" : "Postort för Hos-vårdenhet",
      "definition" : "Postort för Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.postort` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.telefonnummer",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.telefonnummer",
      "short" : "Telefonnummer till Hos-vårdenhet",
      "definition" : "Telefonnummer till Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.telefonnummer` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.epost",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.epost",
      "short" : "Epost adress för Hos-vårdenhet",
      "definition" : "Epost adress för Hos-vårdenhet där läkarintyget utfärdas",
      "comment" : "TKB-fält: `..enhet.epost` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.vardgivare",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.vardgivare",
      "short" : "Vårdgivare",
      "definition" : "Vårdgivare",
      "comment" : "TKB-fält: `..enhet.vardgivare` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.vardgivare.vardgivareId",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.vardgivare.vardgivareId",
      "short" : "HSA-Id för Hos-vårdgivare",
      "definition" : "Hsa-Id för Hos-vårdgivare där läkarintyget utfärdas.",
      "comment" : "TKB-fält: `..vardgivare.vardgivare-id` (`hsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.vardgivare.vardgivareNamn",
      "path" : "registermedicalcertificate-request.skapadAvHosPersonal.enhet.vardgivare.vardgivareNamn",
      "short" : "Namn på Hos-vårdgivare",
      "definition" : "Namn på Hos-vårdgivare där läkarintyget utfärdas.",
      "comment" : "TKB-fält: `..vardgivare.vardgivare-namn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.vardkontakt",
      "path" : "registermedicalcertificate-request.vardkontakt",
      "short" : "Vårdkontakt",
      "definition" : "Vårdkontakt",
      "comment" : "TKB-fält: `lakarutlatande.vardkontakt` (kardinalitet 0..2).\n\n**Modellanteckning:** Typ av vårdkontakt. Fält 4, de 2 översta kryssrutorna.\nValfritt om fält 1 (Avstängning SmL) är valt.",
      "min" : 0,
      "max" : "2",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.vardkontakt.vardkontakttyp",
      "path" : "registermedicalcertificate-request.vardkontakt.vardkontakttyp",
      "short" : "Typ av vårdkontakt",
      "definition" : "Typ av vårdkontakt (min undersökning av patienten eller min telefonkontakt med patienten)\n\n(Fält 4, de 2 översta kryssrutorna)",
      "comment" : "TKB-fält: `..vardkontakt.vardkontakttyp` (`string`, kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/ValueSet/vardkontakttyp-vs"
      }
    },
    {
      "id" : "registermedicalcertificate-request.vardkontakt.vardkontaktstid",
      "path" : "registermedicalcertificate-request.vardkontakt.vardkontaktstid",
      "short" : "Datum då vårdkontakten skedde",
      "definition" : "Datum då vårdkontakten skedde",
      "comment" : "TKB-fält: `..vardkontakt.vardkontaktstid` (`datum`, kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.referens",
      "path" : "registermedicalcertificate-request.referens",
      "short" : "Referens",
      "definition" : "Referens",
      "comment" : "TKB-fält: `lakarutlatande.referens` (kardinalitet 0..2).\n\n**Modellanteckning:** Typ av referens. Fält 4, de 2 nedre kryssrutorna.",
      "min" : 0,
      "max" : "2",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.referens.referenstyp",
      "path" : "registermedicalcertificate-request.referens.referenstyp",
      "short" : "Typ av referens",
      "definition" : "Typ av referens (journaluppgifter eller annat)\n\n(Fält 4, de 2 nedre kryssrutorna)",
      "comment" : "TKB-fält: `..referens.referenstyp` (`string`, kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/ValueSet/referenstyp-vs"
      }
    },
    {
      "id" : "registermedicalcertificate-request.referens.datum",
      "path" : "registermedicalcertificate-request.referens.datum",
      "short" : "Datum för ovanstående referens",
      "definition" : "Datum för ovanstående referens",
      "comment" : "TKB-fält: `..referens.datum` (`datum`, kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.aktivitet",
      "path" : "registermedicalcertificate-request.aktivitet",
      "short" : "Aktiviteter",
      "definition" : "Aktiviteter",
      "comment" : "TKB-fält: `lakarutlatande.aktivitet` (kardinalitet 0..n*).\n\n**Modellanteckning:** Aktivitetskoder som representerar olika val i blanketten.\nFält 1, Fält 6a, Fält 6b, Fält 7, Fält 11, Fält 12.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.aktivitet.aktivitetskod",
      "path" : "registermedicalcertificate-request.aktivitet.aktivitetskod",
      "short" : "Aktivitetskod",
      "definition" : "Aktivitetskoder som representerar olika val i blanketten.\n\n(Fält 1, Fält 6a alla kryssrutor, Fält 6b alla kryssrutor, Fält 7 alla kryssrutor, Fält 11 alla kryssrutor, Fält 12)",
      "comment" : "TKB-fält: `..aktivitet.aktivitetskod` (`string`, kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/ValueSet/aktivitetskod-vs"
      }
    },
    {
      "id" : "registermedicalcertificate-request.aktivitet.beskrivning",
      "path" : "registermedicalcertificate-request.aktivitet.beskrivning",
      "short" : "Fritext kopplad till aktivitetskoden",
      "definition" : "En eventuell fritext som hänger ihop med aktivitetskoden.",
      "comment" : "TKB-fält: `..aktivitet.beskrivning` (kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.bedomtTillstand",
      "path" : "registermedicalcertificate-request.bedomtTillstand",
      "short" : "Bedömt tillstånd",
      "definition" : "Bedömt tillstånd",
      "comment" : "TKB-fält: `lakarutlatande.bedomtTillstand` (kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.bedomtTillstand.beskrivning",
      "path" : "registermedicalcertificate-request.bedomtTillstand.beskrivning",
      "short" : "Aktuellt sjukdomsförlopp (Fält 3)",
      "definition" : "Aktuellt sjukdomsförlopp (Fält 3)",
      "comment" : "TKB-fält: `..bedomtTillstand.beskrivning` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.medicinsktTillstand",
      "path" : "registermedicalcertificate-request.medicinsktTillstand",
      "short" : "Medicinskt tillstånd",
      "definition" : "Medicinskt tillstånd",
      "comment" : "TKB-fält: `lakarutlatande.medicinsktTillstand` (kardinalitet 0..1*).\n\n**Modellanteckning:** Valfritt om fält 1 är valt, annars obligatoriskt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.medicinsktTillstand.beskrivning",
      "path" : "registermedicalcertificate-request.medicinsktTillstand.beskrivning",
      "short" : "Diagnosinformation i fritext (Fält 2)",
      "definition" : "Diagnosinformation i fritext (Fält 2)",
      "comment" : "TKB-fält: `..medicinsktTillstand.beskrivning` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.medicinsktTillstand.tillstandskod",
      "path" : "registermedicalcertificate-request.medicinsktTillstand.tillstandskod",
      "short" : "Diagnoskod enligt ICD-10-SE alt. KSH97P (Fält 2)",
      "definition" : "Diagnoskod enligt ICD-10-SE alt. KSH97P (Fält 2)",
      "comment" : "TKB-fält: `..medicinsktTillstand.tillstandskod` (kardinalitet 0..1*).\n\n**Modellanteckning:** ASSUME: Diagnoskodverket är ICD-10-SE eller KSH97P. Canonical URL ej verifierad.\nSe QUESTIONS.md ASSUME-HR-001.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand",
      "path" : "registermedicalcertificate-request.funktionstillstand",
      "short" : "Funktionstillstånd",
      "definition" : "Funktionstillstånd",
      "comment" : "TKB-fält: `lakarutlatande.funktionstillstand` (kardinalitet 0..2*).\n\n**Modellanteckning:** Funktionstillstånd. Fält 4 (funktionsnedsättning) och Fält 5 (aktivitetsbegränsning).\nValfritt om fält 1 är valt, annars obligatoriskt.",
      "min" : 0,
      "max" : "2",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.beskrivning",
      "path" : "registermedicalcertificate-request.funktionstillstand.beskrivning",
      "short" : "Beskrivning av funktionsnedsättning eller aktivitetsbegränsning",
      "definition" : "Om typAvFunktionstillstand=Kroppsfunktion avses funktionsnedsättning (Fält 4)\n\nOm typAvFunktionstillstand=Aktivitet avses aktivitetsbegränsning (Fält 5)",
      "comment" : "TKB-fält: `..funktionstillstand.beskrivning` (`string`, kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.typAvFunktionstillstand",
      "path" : "registermedicalcertificate-request.funktionstillstand.typAvFunktionstillstand",
      "short" : "Typ av funktionstillstånd (Kroppsfunktion eller Aktivitet)",
      "definition" : "Styr olika typer enligt ovan",
      "comment" : "TKB-fält: `..funktionstillstand.typAvFunktionstillstand` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga",
      "short" : "Arbetsförmåga (enbart då typAvFunktionstillstand=Aktivitet)",
      "definition" : "Arbetsförmåga, enbart då typAvFunktionstillstand=Aktivitet",
      "comment" : "TKB-fält: `..funktionstillstand.arbetsformaga` (kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.motivering",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.motivering",
      "short" : "Arbetsförmågebedömning (Fält 9)",
      "definition" : "Arbetsförmågebedömning (Fält 9)",
      "comment" : "TKB-fält: `..arbetsformaga.motivering` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.prognosangivelse",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.prognosangivelse",
      "short" : "Prognosangivelse (Fält 10)",
      "definition" : "Prognosangivelse (Fält 10 alla kryssrutor)",
      "comment" : "TKB-fält: `..arbetsformaga.prognosangivelse` (`string`, kardinalitet 0..1*).\n\n**Modellanteckning:** Värden: Prognosangivelse.ATERSTALLAS_HELT, ATERSTALLAS_DELVIS, INTE_ATERSTALLAS, DET_GAR_INTE_ATT_BEDOMMA.\nOm DET_GAR_INTE_ATT_BEDOMMA skall Fält 13 fyllas i.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsuppgift",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsuppgift",
      "short" : "Arbetsuppgift",
      "definition" : "Arbetsuppgift",
      "comment" : "TKB-fält: `..arbetsformaga.arbetsuppgift` (kardinalitet 0..1*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsuppgift.typAvArbetsuppgift",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsuppgift.typAvArbetsuppgift",
      "short" : "Typ av arbetsuppgift i fritext (Fält 8a)",
      "definition" : "Anger patientens typ av arbetsuppgift i fritext (Fält 8a fritexten kopplad till översta kryssrutan)",
      "comment" : "TKB-fält: `..arbetsuppgift.typAvArbetsuppgift` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsformagaNedsattning",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsformagaNedsattning",
      "short" : "Arbetsförmågenedsättning (Fält 8b)",
      "definition" : "Minst 1 av 4 kryssrutor måste alltid väljas.",
      "comment" : "TKB-fält: `..arbetsformaga.arbetsformagaNedsattning` (kardinalitet 0..4*).\n\n**Modellanteckning:** Minst 1 av 4 kryssrutor måste alltid väljas.",
      "min" : 0,
      "max" : "4",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetFrom",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetFrom",
      "short" : "Från när arbetsförmågan är nedsatt",
      "definition" : "Från när arbetsförmågan är nedsatt (Fält 8b)",
      "comment" : "TKB-fält: `..arbetsformagaNedsattning.varaktighetFrom` (`datum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetTom",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetTom",
      "short" : "Till när arbetsförmågan är nedsatt",
      "definition" : "Till när arbetsförmågan är nedsatt (Fält 8b)",
      "comment" : "TKB-fält: `..arbetsformagaNedsattning.varaktighetTom` (`datum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad",
      "short" : "Grad av arbetsförmågenedsättning",
      "definition" : "Hur mycket arbetsförmågan är nedsatt (Fält 8b)",
      "comment" : "TKB-fält: `..arbetsformagaNedsattning.nedsattningsgrad` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/ValueSet/nedsattningsgrad-vs"
      }
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.sysselsattning",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.sysselsattning",
      "short" : "Sysselsättning (Fält 8a alla kryssrutor)",
      "definition" : "Sysselsättning(Fält 8a alla kryssrutor)",
      "comment" : "TKB-fält: `..arbetsformaga.sysselsattning` (kardinalitet 0..3*).",
      "min" : 0,
      "max" : "3",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.sysselsattning.typAvSysselsattning",
      "path" : "registermedicalcertificate-request.funktionstillstand.arbetsformaga.sysselsattning.typAvSysselsattning",
      "short" : "Patientens typ av sysselsättning",
      "definition" : "Patientens typ av sysselsättning",
      "comment" : "TKB-fält: `..sysselsattning.typAvSysselsattning` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Värden: TypAvSysselsattning.FORVARVSARBETE, ARBETSLOSHET, FORALDRALEDIGHET.\nOm FORVARVSARBETE skall arbetsuppgifter anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
