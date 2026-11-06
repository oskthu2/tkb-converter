# BestallOrginalforpackning — Request - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BestallOrginalforpackning — Request**

## Logical Model: BestallOrginalforpackning — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/bestallorginalforpackning-request | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:BestallOrginalforpackningRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i BestallOrginalforpackning (urn:riv:druglogistics:dosedispensing:BestallOrginalforpackningResponder:1, BestallOrginalforpackningType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-bestallorginalforpackning-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bestallorginalforpackning-request.csv), [Excel](StructureDefinition-bestallorginalforpackning-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bestallorginalforpackning-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/bestallorginalforpackning-request",
  "version" : "1.0",
  "name" : "BestallOrginalforpackningRequest",
  "title" : "BestallOrginalforpackning — Request",
  "status" : "active",
  "date" : "2026-11-06T21:12:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i BestallOrginalforpackning\n(urn:riv:druglogistics:dosedispensing:BestallOrginalforpackningResponder:1, BestallOrginalforpackningType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/bestallorginalforpackning-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "bestallorginalforpackning-request",
      "path" : "bestallorginalforpackning-request",
      "short" : "BestallOrginalforpackning — Request",
      "definition" : "Logisk modell för begäran i BestallOrginalforpackning\n(urn:riv:druglogistics:dosedispensing:BestallOrginalforpackningResponder:1, BestallOrginalforpackningType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "bestallorginalforpackning-request.logicalAddress",
      "path" : "bestallorginalforpackning-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.glnkod",
      "path" : "bestallorginalforpackning-request.glnkod",
      "short" : "glnkod",
      "definition" : "glnkod",
      "comment" : "TKB-fält: `glnkod` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Behorighetsinformation",
      "path" : "bestallorginalforpackning-request.Behorighetsinformation",
      "short" : "Behorighetsinformation",
      "definition" : "Behorighetsinformation",
      "comment" : "TKB-fält: `Behorighetsinformation` (`BehorighetsinfoRequest`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Behorighetsinformation.fornamn",
      "path" : "bestallorginalforpackning-request.Behorighetsinformation.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "comment" : "TKB-fält: `../fornamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Behorighetsinformation.efternamn",
      "path" : "bestallorginalforpackning-request.Behorighetsinformation.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "comment" : "TKB-fält: `../efternamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Behorighetsinformation.forskrivarkod",
      "path" : "bestallorginalforpackning-request.Behorighetsinformation.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "comment" : "TKB-fält: `../forskrivarkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Behorighetsinformation.yrkeskod",
      "path" : "bestallorginalforpackning-request.Behorighetsinformation.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "yrkeskod",
      "comment" : "TKB-fält: `../yrkeskod` (`YrkesKodEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-yrkeskod-vs"
      }
    },
    {
      "id" : "bestallorginalforpackning-request.Behorighetsinformation.arbetsplatskod",
      "path" : "bestallorginalforpackning-request.Behorighetsinformation.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "comment" : "TKB-fält: `../arbetsplatskod` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Behorighetsinformation.hsaid",
      "path" : "bestallorginalforpackning-request.Behorighetsinformation.hsaid",
      "short" : "hsaid",
      "definition" : "hsaid",
      "comment" : "TKB-fält: `../hsaid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Behorighetsinformation.personnummer",
      "path" : "bestallorginalforpackning-request.Behorighetsinformation.personnummer",
      "short" : "personnummer",
      "definition" : "personnummer",
      "comment" : "TKB-fält: `../personnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Behorighetsinformation.organisationsnummer",
      "path" : "bestallorginalforpackning-request.Behorighetsinformation.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "comment" : "TKB-fält: `../organisationsnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo",
      "short" : "Bestallningsinfo",
      "definition" : "Bestallningsinfo",
      "comment" : "TKB-fält: `Bestallningsinfo` (`BestallningsinfoRequest`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation",
      "short" : "Patientinformation",
      "definition" : "Patientinformation",
      "comment" : "TKB-fält: `../Patientinformation` (`PatientinfoResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.fornamn",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.fornamn",
      "short" : "fornamn",
      "definition" : "Anvandarens fornamn.",
      "comment" : "TKB-fält: `../../fornamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.mellannamn",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.mellannamn",
      "short" : "mellannamn",
      "definition" : "Anvandarens mellanamn.",
      "comment" : "TKB-fält: `../../mellannamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.efternamn",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.efternamn",
      "short" : "efternamn",
      "definition" : "Anvandarens efternamn.",
      "comment" : "TKB-fält: `../../efternamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.identitetstyp",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.identitetstyp",
      "short" : "identitetstyp",
      "definition" : "identitetstyp",
      "comment" : "TKB-fält: `../../identitetstyp` (`IdentitetstypEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-identitetstyp-vs"
      }
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.personid",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.personid",
      "short" : "personid",
      "definition" : "Anvandarens personid",
      "comment" : "TKB-fält: `../../personid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.lanskod",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.lanskod",
      "short" : "lanskod",
      "definition" : "Anvandarens folkbokforda lanskod",
      "comment" : "TKB-fält: `../../lanskod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.kommunkod",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.Patientinformation.kommunkod",
      "short" : "kommunkod",
      "definition" : "Anvandarens folkbokforda kommunkod",
      "comment" : "TKB-fält: `../../kommunkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.bestallningsid",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.bestallningsid",
      "short" : "bestallningsid",
      "definition" : "bestallningsid",
      "comment" : "TKB-fält: `../bestallningsid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.radid",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.radid",
      "short" : "radid",
      "definition" : "radid",
      "comment" : "TKB-fält: `../radid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.NPLpackid",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.NPLpackid",
      "short" : "NPLpackid",
      "definition" : "NPLpackid",
      "comment" : "TKB-fält: `../NPLpackid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.varunummer",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.varunummer",
      "short" : "varunummer",
      "definition" : "varunummer",
      "comment" : "TKB-fält: `../varunummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.receptid",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.receptid",
      "short" : "receptid",
      "definition" : "receptid",
      "comment" : "TKB-fält: `../receptid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.ordinationsid",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.ordinationsid",
      "short" : "ordinationsid",
      "definition" : "ordinationsid",
      "comment" : "TKB-fält: `../ordinationsid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.dosunderlagsversion",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.dosunderlagsversion",
      "short" : "dosunderlagsversion",
      "definition" : "dosunderlagsversion",
      "comment" : "TKB-fält: `../dosunderlagsversion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.antalforpackningar",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.antalforpackningar",
      "short" : "antalforpackningar",
      "definition" : "antalforpackningar",
      "comment" : "TKB-fält: `../antalforpackningar` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.akutbestallning",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.akutbestallning",
      "short" : "akutbestallning",
      "definition" : "akutbestallning",
      "comment" : "TKB-fält: `../akutbestallning` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.maxveckodos",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.maxveckodos",
      "short" : "maxveckodos",
      "definition" : "maxveckodos",
      "comment" : "TKB-fält: `../maxveckodos` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.maxdygnsdos",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.maxdygnsdos",
      "short" : "maxdygnsdos",
      "definition" : "maxdygnsdos",
      "comment" : "TKB-fält: `../maxdygnsdos` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.dosmottagareid",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.dosmottagareid",
      "short" : "dosmottagareid",
      "definition" : "dosmottagareid",
      "comment" : "TKB-fält: `../dosmottagareid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.dosmottagarenamn",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "comment" : "TKB-fält: `../dosmottagarenamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.meddelandetillapotek",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.meddelandetillapotek",
      "short" : "meddelandetillapotek",
      "definition" : "meddelandetillapotek",
      "comment" : "TKB-fält: `../meddelandetillapotek` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning-request.Bestallningsinfo.onskadleveransdatum",
      "path" : "bestallorginalforpackning-request.Bestallningsinfo.onskadleveransdatum",
      "short" : "onskadleveransdatum",
      "definition" : "onskadleveransdatum",
      "comment" : "TKB-fält: `../onskadleveransdatum` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
