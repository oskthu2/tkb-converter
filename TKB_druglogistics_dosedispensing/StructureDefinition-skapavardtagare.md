# SkapaVardtagare — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkapaVardtagare — Response**

## Logical Model: SkapaVardtagare — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skapavardtagare | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:SkapaVardtagare |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i SkapaVardtagare (urn:riv:druglogistics:dosedispensing:SkapaVardtagareResponder:1, SkapaVardtagareResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-skapavardtagare.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-skapavardtagare.csv), [Excel](StructureDefinition-skapavardtagare.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "skapavardtagare",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skapavardtagare",
  "version" : "1.0",
  "name" : "SkapaVardtagare",
  "title" : "SkapaVardtagare — Response",
  "status" : "active",
  "date" : "2026-11-06T21:12:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i SkapaVardtagare\n(urn:riv:druglogistics:dosedispensing:SkapaVardtagareResponder:1, SkapaVardtagareResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skapavardtagare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "skapavardtagare",
      "path" : "skapavardtagare",
      "short" : "SkapaVardtagare — Response",
      "definition" : "Logisk modell för svaret i SkapaVardtagare\n(urn:riv:druglogistics:dosedispensing:SkapaVardtagareResponder:1, SkapaVardtagareResponseType)."
    },
    {
      "id" : "skapavardtagare.resultatkod",
      "path" : "skapavardtagare.resultatkod",
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
      "id" : "skapavardtagare.meddelandetext",
      "path" : "skapavardtagare.meddelandetext",
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
      "id" : "skapavardtagare.meddelandeid",
      "path" : "skapavardtagare.meddelandeid",
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
      "id" : "skapavardtagare.Patientinformation",
      "path" : "skapavardtagare.Patientinformation",
      "short" : "Patientinformation",
      "definition" : "Patientinformation, se ref [1]",
      "comment" : "TKB-fält: `Patientinf ormation` (kardinalitet 0..1).\n\n**Attribut:** Patientidentitet\n\n**Värdemängd:** Valideras",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skapavardtagare.Patientinformation.fornamn",
      "path" : "skapavardtagare.Patientinformation.fornamn",
      "short" : "fornamn",
      "definition" : "Anvandarens fornamn.",
      "comment" : "TKB-fält: `../fornamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare.Patientinformation.mellannamn",
      "path" : "skapavardtagare.Patientinformation.mellannamn",
      "short" : "mellannamn",
      "definition" : "Anvandarens mellanamn.",
      "comment" : "TKB-fält: `../mellannamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare.Patientinformation.efternamn",
      "path" : "skapavardtagare.Patientinformation.efternamn",
      "short" : "efternamn",
      "definition" : "Anvandarens efternamn.",
      "comment" : "TKB-fält: `../efternamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare.Patientinformation.identitetstyp",
      "path" : "skapavardtagare.Patientinformation.identitetstyp",
      "short" : "identitetstyp",
      "definition" : "identitetstyp",
      "comment" : "TKB-fält: `../identitetstyp` (`IdentitetstypEnum`, kardinalitet 1..1).",
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
      "id" : "skapavardtagare.Patientinformation.personid",
      "path" : "skapavardtagare.Patientinformation.personid",
      "short" : "personid",
      "definition" : "Anvandarens personid",
      "comment" : "TKB-fält: `../personid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare.Patientinformation.lanskod",
      "path" : "skapavardtagare.Patientinformation.lanskod",
      "short" : "lanskod",
      "definition" : "Anvandarens folkbokforda lanskod",
      "comment" : "TKB-fält: `../lanskod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare.Patientinformation.kommunkod",
      "path" : "skapavardtagare.Patientinformation.kommunkod",
      "short" : "kommunkod",
      "definition" : "Anvandarens folkbokforda kommunkod",
      "comment" : "TKB-fält: `../kommunkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation",
      "path" : "skapavardtagare.Produktionsinformation",
      "short" : "Produktionsinformation",
      "definition" : "Information om stopptider, grundschema mm, se ref [1]",
      "comment" : "TKB-fält: `Produktio nsinforma tion` (kardinalitet 0..1).\n\n**Attribut:** Produktionsinformation\n\n**Värdemängd:** Valideras",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.dosaktor",
      "path" : "skapavardtagare.Produktionsinformation.dosaktor",
      "short" : "dosaktor",
      "definition" : "dosaktor",
      "comment" : "TKB-fält: `../dosaktor` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.dosapotek",
      "path" : "skapavardtagare.Produktionsinformation.dosapotek",
      "short" : "dosapotek",
      "definition" : "dosapotek",
      "comment" : "TKB-fält: `../dosapotek` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.dosapotekid",
      "path" : "skapavardtagare.Produktionsinformation.dosapotekid",
      "short" : "dosapotekid",
      "definition" : "dosapotekid",
      "comment" : "TKB-fält: `../dosapotekid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.stopptidbestallning",
      "path" : "skapavardtagare.Produktionsinformation.stopptidbestallning",
      "short" : "stopptidbestallning",
      "definition" : "stopptidbestallning",
      "comment" : "TKB-fält: `../stopptidbestallning` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.stopptidordination",
      "path" : "skapavardtagare.Produktionsinformation.stopptidordination",
      "short" : "stopptidordination",
      "definition" : "stopptidordination",
      "comment" : "TKB-fält: `../stopptidordination` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.forstadosdag",
      "path" : "skapavardtagare.Produktionsinformation.forstadosdag",
      "short" : "forstadosdag",
      "definition" : "forstadosdag",
      "comment" : "TKB-fält: `../forstadosdag` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.dosvecka",
      "path" : "skapavardtagare.Produktionsinformation.dosvecka",
      "short" : "dosvecka",
      "definition" : "dosvecka",
      "comment" : "TKB-fält: `../dosvecka` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.doseringsschema",
      "path" : "skapavardtagare.Produktionsinformation.doseringsschema",
      "short" : "doseringsschema",
      "definition" : "doseringsschema",
      "comment" : "TKB-fält: `../doseringsschema` (`DoseringsschemaResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.doseringsschema.periodlangd",
      "path" : "skapavardtagare.Produktionsinformation.doseringsschema.periodlangd",
      "short" : "periodlangd",
      "definition" : "Antal dagar som dosering skall galla. Vid regelbunden dosering anges periodlangd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag.",
      "comment" : "TKB-fält: `../../periodlangd` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.doseringsschema.intagstillfalle",
      "path" : "skapavardtagare.Produktionsinformation.doseringsschema.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Beskriver tid och mangd for intag av lakemedel.",
      "comment" : "TKB-fält: `../../intagstillfalle` (`IntagstillfalleResponse`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.doseringsschema.intagstillfalle.intagstillfalle",
      "path" : "skapavardtagare.Produktionsinformation.doseringsschema.intagstillfalle.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Klockslag nar patienten ska inta medicinering.",
      "comment" : "TKB-fält: `../../../intagstillfalle` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.doseringsschema.intagstillfalle.intagsmangd",
      "path" : "skapavardtagare.Produktionsinformation.doseringsschema.intagstillfalle.intagsmangd",
      "short" : "intagsmangd",
      "definition" : "Intagsmangd per tillfalle",
      "comment" : "TKB-fält: `../../../intagsmangd` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.doseringsschema.intagstillfalle.dagIPeriod",
      "path" : "skapavardtagare.Produktionsinformation.doseringsschema.intagstillfalle.dagIPeriod",
      "short" : "dagIPeriod",
      "definition" : "Dag i perioden nar intag skall goras. Exempel: Intag ska ske varje mandag och onsdag och startdatum ar pa en mandag. Mandag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period= 1. Onsdag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period=3.",
      "comment" : "TKB-fält: `../../../dagIPeriod` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "skapavardtagare.Produktionsinformation.dosmottagareid",
      "path" : "skapavardtagare.Produktionsinformation.dosmottagareid",
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
      "id" : "skapavardtagare.Produktionsinformation.dosmottagarenamn",
      "path" : "skapavardtagare.Produktionsinformation.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "comment" : "TKB-fält: `../dosmottagarenamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
