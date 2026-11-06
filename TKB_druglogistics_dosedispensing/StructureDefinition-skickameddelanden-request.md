# SkickaMeddelanden — Request - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkickaMeddelanden — Request**

## Logical Model: SkickaMeddelanden — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skickameddelanden-request | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:SkickaMeddelandenRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SkickaMeddelanden (urn:riv:druglogistics:dosedispensing:SkickaMeddelandenResponder:1, SkickaMeddelandenType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-skickameddelanden-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-skickameddelanden-request.csv), [Excel](StructureDefinition-skickameddelanden-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "skickameddelanden-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skickameddelanden-request",
  "version" : "1.0",
  "name" : "SkickaMeddelandenRequest",
  "title" : "SkickaMeddelanden — Request",
  "status" : "active",
  "date" : "2026-11-06T21:12:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SkickaMeddelanden\n(urn:riv:druglogistics:dosedispensing:SkickaMeddelandenResponder:1, SkickaMeddelandenType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skickameddelanden-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "skickameddelanden-request",
      "path" : "skickameddelanden-request",
      "short" : "SkickaMeddelanden — Request",
      "definition" : "Logisk modell för begäran i SkickaMeddelanden\n(urn:riv:druglogistics:dosedispensing:SkickaMeddelandenResponder:1, SkickaMeddelandenType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "skickameddelanden-request.logicalAddress",
      "path" : "skickameddelanden-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skickameddelanden-request.glnkod",
      "path" : "skickameddelanden-request.glnkod",
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
      "id" : "skickameddelanden-request.Behorighetsinformation",
      "path" : "skickameddelanden-request.Behorighetsinformation",
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
      "id" : "skickameddelanden-request.Behorighetsinformation.fornamn",
      "path" : "skickameddelanden-request.Behorighetsinformation.fornamn",
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
      "id" : "skickameddelanden-request.Behorighetsinformation.efternamn",
      "path" : "skickameddelanden-request.Behorighetsinformation.efternamn",
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
      "id" : "skickameddelanden-request.Behorighetsinformation.forskrivarkod",
      "path" : "skickameddelanden-request.Behorighetsinformation.forskrivarkod",
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
      "id" : "skickameddelanden-request.Behorighetsinformation.yrkeskod",
      "path" : "skickameddelanden-request.Behorighetsinformation.yrkeskod",
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
      "id" : "skickameddelanden-request.Behorighetsinformation.arbetsplatskod",
      "path" : "skickameddelanden-request.Behorighetsinformation.arbetsplatskod",
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
      "id" : "skickameddelanden-request.Behorighetsinformation.hsaid",
      "path" : "skickameddelanden-request.Behorighetsinformation.hsaid",
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
      "id" : "skickameddelanden-request.Behorighetsinformation.personnummer",
      "path" : "skickameddelanden-request.Behorighetsinformation.personnummer",
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
      "id" : "skickameddelanden-request.Behorighetsinformation.organisationsnummer",
      "path" : "skickameddelanden-request.Behorighetsinformation.organisationsnummer",
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
      "id" : "skickameddelanden-request.Meddelandeninfo",
      "path" : "skickameddelanden-request.Meddelandeninfo",
      "short" : "Meddelandeninfo",
      "definition" : "Meddelandeninfo",
      "comment" : "TKB-fält: `Meddelandeninfo` (`MeddelandeninfoRequest`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skickameddelanden-request.Meddelandeninfo.Meddelandetyp",
      "path" : "skickameddelanden-request.Meddelandeninfo.Meddelandetyp",
      "short" : "Meddelandetyp",
      "definition" : "Meddelandetyp",
      "comment" : "TKB-fält: `../Meddelandetyp` (`MeddelandetypEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-meddelandetyp-vs"
      }
    },
    {
      "id" : "skickameddelanden-request.Meddelandeninfo.Patientinformation",
      "path" : "skickameddelanden-request.Meddelandeninfo.Patientinformation",
      "short" : "Patientinformation",
      "definition" : "Patientinformation",
      "comment" : "TKB-fält: `../Patientinformation` (`PatientinfoResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.fornamn",
      "path" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.fornamn",
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
      "id" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.mellannamn",
      "path" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.mellannamn",
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
      "id" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.efternamn",
      "path" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.efternamn",
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
      "id" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.identitetstyp",
      "path" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.identitetstyp",
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
      "id" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.personid",
      "path" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.personid",
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
      "id" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.lanskod",
      "path" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.lanskod",
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
      "id" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.kommunkod",
      "path" : "skickameddelanden-request.Meddelandeninfo.Patientinformation.kommunkod",
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
      "id" : "skickameddelanden-request.Meddelandeninfo.kommunikationsriktning",
      "path" : "skickameddelanden-request.Meddelandeninfo.kommunikationsriktning",
      "short" : "kommunikationsriktning",
      "definition" : "kommunikationsriktning",
      "comment" : "TKB-fält: `../kommunikationsriktning` (`KommunikationsriktningEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-kommunikationsriktning-vs"
      }
    },
    {
      "id" : "skickameddelanden-request.Meddelandeninfo.tidigaremeddelandeid",
      "path" : "skickameddelanden-request.Meddelandeninfo.tidigaremeddelandeid",
      "short" : "tidigaremeddelandeid",
      "definition" : "tidigaremeddelandeid",
      "comment" : "TKB-fält: `../tidigaremeddelandeid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skickameddelanden-request.Meddelandeninfo.ordinationsid",
      "path" : "skickameddelanden-request.Meddelandeninfo.ordinationsid",
      "short" : "ordinationsid",
      "definition" : "ordinationsid",
      "comment" : "TKB-fält: `../ordinationsid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skickameddelanden-request.Meddelandeninfo.glnkod",
      "path" : "skickameddelanden-request.Meddelandeninfo.glnkod",
      "short" : "glnkod",
      "definition" : "glnkod",
      "comment" : "TKB-fält: `../glnkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skickameddelanden-request.Meddelandeninfo.sandningstidpunkt",
      "path" : "skickameddelanden-request.Meddelandeninfo.sandningstidpunkt",
      "short" : "sandningstidpunkt",
      "definition" : "sandningstidpunkt",
      "comment" : "TKB-fält: `../sandningstidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "skickameddelanden-request.Meddelandeninfo.rubrik",
      "path" : "skickameddelanden-request.Meddelandeninfo.rubrik",
      "short" : "rubrik",
      "definition" : "rubrik",
      "comment" : "TKB-fält: `../rubrik` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skickameddelanden-request.Meddelandeninfo.prioritet",
      "path" : "skickameddelanden-request.Meddelandeninfo.prioritet",
      "short" : "prioritet",
      "definition" : "prioritet",
      "comment" : "TKB-fält: `../prioritet` (`MeddelandePrioritetEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-meddelandeprioritet-vs"
      }
    },
    {
      "id" : "skickameddelanden-request.Meddelandeninfo.meddelande",
      "path" : "skickameddelanden-request.Meddelandeninfo.meddelande",
      "short" : "meddelande",
      "definition" : "meddelande",
      "comment" : "TKB-fält: `../meddelande` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
