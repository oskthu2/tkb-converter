# RevokeMedicalCertificate — Request - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeMedicalCertificate — Request**

## Logical Model: RevokeMedicalCertificate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/revokemedicalcertificate-request | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:RevokeMedicalCertificateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet RevokeMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1). Skickar ett meddelande om rättelse av ett tidigare inskickat läkarintyg. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-revokemedicalcertificate-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-revokemedicalcertificate-request.csv), [Excel](StructureDefinition-revokemedicalcertificate-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "revokemedicalcertificate-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/revokemedicalcertificate-request",
  "version" : "1.0",
  "name" : "RevokeMedicalCertificateRequest",
  "title" : "RevokeMedicalCertificate — Request",
  "status" : "active",
  "date" : "2026-11-09T03:41:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet RevokeMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1).\nSkickar ett meddelande om rättelse av ett tidigare inskickat läkarintyg.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/revokemedicalcertificate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokemedicalcertificate-request",
      "path" : "revokemedicalcertificate-request",
      "short" : "RevokeMedicalCertificate — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet RevokeMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1).\nSkickar ett meddelande om rättelse av ett tidigare inskickat läkarintyg."
    },
    {
      "id" : "revokemedicalcertificate-request.revoke",
      "path" : "revokemedicalcertificate-request.revoke",
      "short" : "Rättelsen",
      "definition" : "Rättelsen",
      "comment" : "TKB-fält: `revoke` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.vardReferensId",
      "path" : "revokemedicalcertificate-request.revoke.vardReferensId",
      "short" : "Identitet för denna rättelse från vården",
      "definition" : "Identitet för denna rättelse från vården",
      "comment" : "TKB-fält: `revoke.vardReferens-id` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.meddelande",
      "path" : "revokemedicalcertificate-request.revoke.meddelande",
      "short" : "Beskrivning om orsak till rättningen",
      "definition" : "Beskrivning om orsk till rättningen",
      "comment" : "TKB-fält: `revoke.meddelande` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.avsantTidpunkt",
      "path" : "revokemedicalcertificate-request.revoke.avsantTidpunkt",
      "short" : "Tidpunkt då rättelsen skickades från vården",
      "definition" : "Tidpunkt då rättelsen skickades från vården",
      "comment" : "TKB-fält: `revoke.avsantTidpunkt` (`datumtid`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard",
      "path" : "revokemedicalcertificate-request.revoke.adressVard",
      "short" : "Vårdadress",
      "definition" : "Vårdadress",
      "comment" : "TKB-fält: `revoke.adressVard` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal",
      "short" : "Vårdpersonal som skickade rättelsen",
      "definition" : "Vårdpersonal",
      "comment" : "TKB-fält: `..adressVard.hosPersonal` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.fullstandigtNamn",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.fullstandigtNamn",
      "short" : "Namn för Hos-person som skickade rättelsen",
      "definition" : "Namn för Hos-person som skickade rättelsen.",
      "comment" : "TKB-fält: `..hosPersonal.fullstandigtNamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet",
      "short" : "Vårdenhet",
      "definition" : "Vårdenhet",
      "comment" : "TKB-fält: `..hosPersonal.enhet`.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.enhetsId",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.enhetsId",
      "short" : "HSA-Id för Hos-vårdenhet",
      "definition" : "Hsa-Id för Hos-vårdenhet varifrån rättelsen skickades.",
      "comment" : "TKB-fält: `..enhet.enhets-id` (`hsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.enhetsNamn",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.enhetsNamn",
      "short" : "Namn på Hos-vårdenhet",
      "definition" : "Namn på Hos-vårdenhet varifrån rättelsen skickades.",
      "comment" : "TKB-fält: `..enhet.enhets-namn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.postadress",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.postadress",
      "short" : "Postadress",
      "definition" : "Postadress för Hos-vårdenhet varifrån rättelsen skickades.",
      "comment" : "TKB-fält: `..enhet.postadress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.postnummer",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.postnummer",
      "short" : "Postnummer",
      "definition" : "Postnummer för Hos-vårdenhet varifrån rättelsen skickades.",
      "comment" : "TKB-fält: `..enhet.postnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.postort",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.postort",
      "short" : "Postort",
      "definition" : "Postort för Hos-vårdenhet varifrån rättelsen skickades.",
      "comment" : "TKB-fält: `..enhet.postort` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.telefonnummer",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.telefonnummer",
      "short" : "Telefonnummer",
      "definition" : "Telefonnummer till Hos-vårdenhet varifrån rättelsen skickades.",
      "comment" : "TKB-fält: `..enhet.telefonnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.epost",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.epost",
      "short" : "Epost",
      "definition" : "Epost adress för Hos-vårdenhet varifrån rättelsen skickades.",
      "comment" : "TKB-fält: `..enhet.epost` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.vardgivare",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.vardgivare",
      "short" : "Vårdgivaren",
      "definition" : "Vårdgivaren",
      "comment" : "TKB-fält: `..enhet.vardgivare` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.vardgivare.vardgivareId",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.vardgivare.vardgivareId",
      "short" : "HSA-Id för Hos-vårdgivare",
      "definition" : "Hsa-Id för Hos-vårdgivare varifrån rättelsen skickades.",
      "comment" : "TKB-fält: `..vardgivare.vardgivare-id` (`hsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.vardgivare.vardgivareNamn",
      "path" : "revokemedicalcertificate-request.revoke.adressVard.hosPersonal.enhet.vardgivare.vardgivareNamn",
      "short" : "Namn på Hos-vårdgivare",
      "definition" : "Namn på Hos-vårdgivare varifrån rättelsen skickades.",
      "comment" : "TKB-fält: `..vardgivare.vardgivare-namn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.lakarutlatandeId",
      "path" : "revokemedicalcertificate-request.lakarutlatandeId",
      "short" : "Unikt id för läkarintyget som rättelsen gäller",
      "definition" : "Unikt id för läkarintyget som rättelsen gäller",
      "comment" : "TKB-fält: `lakarutlatande.lakarutlatande-id` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.lakarutlatandeSigneringsTidpunkt",
      "path" : "revokemedicalcertificate-request.lakarutlatandeSigneringsTidpunkt",
      "short" : "Signeringstidpunkt för läkarintyget som rättelsen gäller",
      "definition" : "Signeringstidpunkt för läkarintyget som rättelsen gäller",
      "comment" : "TKB-fält: `lakarutlatande.signeringsTidpunkt` (`datumtid`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.patient",
      "path" : "revokemedicalcertificate-request.patient",
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
      "id" : "revokemedicalcertificate-request.patient.personId",
      "path" : "revokemedicalcertificate-request.patient.personId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningnummer",
      "comment" : "TKB-fält: `patient.person-id` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "revokemedicalcertificate-request.patient.fullstandigtNamn",
      "path" : "revokemedicalcertificate-request.patient.fullstandigtNamn",
      "short" : "Patientens namn",
      "definition" : "Patientens namn",
      "comment" : "TKB-fält: `patient.fullstandigtNamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
