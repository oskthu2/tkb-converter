# HamtaMeddelanden — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaMeddelanden — Response**

## Logical Model: HamtaMeddelanden — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtameddelanden | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:HamtaMeddelanden |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaMeddelanden (urn:riv:druglogistics:dosedispensing:HamtaMeddelandenResponder:1, HamtaMeddelandenResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-hamtameddelanden.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtameddelanden.csv), [Excel](StructureDefinition-hamtameddelanden.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtameddelanden",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtameddelanden",
  "version" : "1.0",
  "name" : "HamtaMeddelanden",
  "title" : "HamtaMeddelanden — Response",
  "status" : "active",
  "date" : "2026-11-06T21:12:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaMeddelanden\n(urn:riv:druglogistics:dosedispensing:HamtaMeddelandenResponder:1, HamtaMeddelandenResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtameddelanden",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtameddelanden",
      "path" : "hamtameddelanden",
      "short" : "HamtaMeddelanden — Response",
      "definition" : "Logisk modell för svaret i HamtaMeddelanden\n(urn:riv:druglogistics:dosedispensing:HamtaMeddelandenResponder:1, HamtaMeddelandenResponseType)."
    },
    {
      "id" : "hamtameddelanden.resultatkod",
      "path" : "hamtameddelanden.resultatkod",
      "short" : "resultatkod",
      "definition" : "resultatkod",
      "comment" : "TKB-fält: `resultatkod` (`ResultatkodEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-resultatkod-vs"
      }
    },
    {
      "id" : "hamtameddelanden.meddelandetext",
      "path" : "hamtameddelanden.meddelandetext",
      "short" : "meddelandetext",
      "definition" : "meddelandetext",
      "comment" : "TKB-fält: `meddelandetext` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden.meddelandeid",
      "path" : "hamtameddelanden.meddelandeid",
      "short" : "meddelandeid",
      "definition" : "meddelandeid",
      "comment" : "TKB-fält: `meddelandeid` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden",
      "path" : "hamtameddelanden.Meddelanden",
      "short" : "Meddelanden",
      "definition" : "Meddelanden",
      "comment" : "TKB-fält: `Meddelanden` (`HamtaMeddelandeninfoResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.meddelandeid",
      "path" : "hamtameddelanden.Meddelanden.meddelandeid",
      "short" : "meddelandeid",
      "definition" : "meddelandeid",
      "comment" : "TKB-fält: `../meddelandeid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.Patientinformation",
      "path" : "hamtameddelanden.Meddelanden.Patientinformation",
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
      "id" : "hamtameddelanden.Meddelanden.Patientinformation.fornamn",
      "path" : "hamtameddelanden.Meddelanden.Patientinformation.fornamn",
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
      "id" : "hamtameddelanden.Meddelanden.Patientinformation.mellannamn",
      "path" : "hamtameddelanden.Meddelanden.Patientinformation.mellannamn",
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
      "id" : "hamtameddelanden.Meddelanden.Patientinformation.efternamn",
      "path" : "hamtameddelanden.Meddelanden.Patientinformation.efternamn",
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
      "id" : "hamtameddelanden.Meddelanden.Patientinformation.identitetstyp",
      "path" : "hamtameddelanden.Meddelanden.Patientinformation.identitetstyp",
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
      "id" : "hamtameddelanden.Meddelanden.Patientinformation.personid",
      "path" : "hamtameddelanden.Meddelanden.Patientinformation.personid",
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
      "id" : "hamtameddelanden.Meddelanden.Patientinformation.lanskod",
      "path" : "hamtameddelanden.Meddelanden.Patientinformation.lanskod",
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
      "id" : "hamtameddelanden.Meddelanden.Patientinformation.kommunkod",
      "path" : "hamtameddelanden.Meddelanden.Patientinformation.kommunkod",
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
      "id" : "hamtameddelanden.Meddelanden.kommunikationsriktning",
      "path" : "hamtameddelanden.Meddelanden.kommunikationsriktning",
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
      "id" : "hamtameddelanden.Meddelanden.tidigaremeddelandeid",
      "path" : "hamtameddelanden.Meddelanden.tidigaremeddelandeid",
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
      "id" : "hamtameddelanden.Meddelanden.ordinationsid",
      "path" : "hamtameddelanden.Meddelanden.ordinationsid",
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
      "id" : "hamtameddelanden.Meddelanden.glnkod",
      "path" : "hamtameddelanden.Meddelanden.glnkod",
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
      "id" : "hamtameddelanden.Meddelanden.dosapoteknamn",
      "path" : "hamtameddelanden.Meddelanden.dosapoteknamn",
      "short" : "dosapoteknamn",
      "definition" : "dosapoteknamn",
      "comment" : "TKB-fält: `../dosapoteknamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.sandningstidpunkt",
      "path" : "hamtameddelanden.Meddelanden.sandningstidpunkt",
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
      "id" : "hamtameddelanden.Meddelanden.sandarefornamn",
      "path" : "hamtameddelanden.Meddelanden.sandarefornamn",
      "short" : "sandarefornamn",
      "definition" : "sandarefornamn",
      "comment" : "TKB-fält: `../sandarefornamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.sandareefternamn",
      "path" : "hamtameddelanden.Meddelanden.sandareefternamn",
      "short" : "sandareefternamn",
      "definition" : "sandareefternamn",
      "comment" : "TKB-fält: `../sandareefternamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.sandarehsaid",
      "path" : "hamtameddelanden.Meddelanden.sandarehsaid",
      "short" : "sandarehsaid",
      "definition" : "sandarehsaid",
      "comment" : "TKB-fält: `../sandarehsaid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.sandareyrkeskod",
      "path" : "hamtameddelanden.Meddelanden.sandareyrkeskod",
      "short" : "sandareyrkeskod",
      "definition" : "sandareyrkeskod",
      "comment" : "TKB-fält: `../sandareyrkeskod` (`YrkesKodEnum`, kardinalitet 0..1).",
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
      "id" : "hamtameddelanden.Meddelanden.sandarearbetsplats",
      "path" : "hamtameddelanden.Meddelanden.sandarearbetsplats",
      "short" : "sandarearbetsplats",
      "definition" : "sandarearbetsplats",
      "comment" : "TKB-fält: `../sandarearbetsplats` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.rubrik",
      "path" : "hamtameddelanden.Meddelanden.rubrik",
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
      "id" : "hamtameddelanden.Meddelanden.prioritet",
      "path" : "hamtameddelanden.Meddelanden.prioritet",
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
      "id" : "hamtameddelanden.Meddelanden.meddelandestatus",
      "path" : "hamtameddelanden.Meddelanden.meddelandestatus",
      "short" : "meddelandestatus",
      "definition" : "meddelandestatus",
      "comment" : "TKB-fält: `../meddelandestatus` (`MeddelandeStatusEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-meddelandestatus-vs"
      }
    },
    {
      "id" : "hamtameddelanden.Meddelanden.meddelandestatusfornamn",
      "path" : "hamtameddelanden.Meddelanden.meddelandestatusfornamn",
      "short" : "meddelandestatusfornamn",
      "definition" : "meddelandestatusfornamn",
      "comment" : "TKB-fält: `../meddelandestatusfornamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.meddelandestatusefternamn",
      "path" : "hamtameddelanden.Meddelanden.meddelandestatusefternamn",
      "short" : "meddelandestatusefternamn",
      "definition" : "meddelandestatusefternamn",
      "comment" : "TKB-fält: `../meddelandestatusefternamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.meddelandestatusarbetsplats",
      "path" : "hamtameddelanden.Meddelanden.meddelandestatusarbetsplats",
      "short" : "meddelandestatusarbetsplats",
      "definition" : "meddelandestatusarbetsplats",
      "comment" : "TKB-fält: `../meddelandestatusarbetsplats` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.statustidpunkt",
      "path" : "hamtameddelanden.Meddelanden.statustidpunkt",
      "short" : "statustidpunkt",
      "definition" : "statustidpunkt",
      "comment" : "TKB-fält: `../statustidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtameddelanden.Meddelanden.meddelande",
      "path" : "hamtameddelanden.Meddelanden.meddelande",
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
