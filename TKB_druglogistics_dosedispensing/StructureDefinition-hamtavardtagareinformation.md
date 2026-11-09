# HamtaVardtagareinformation — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaVardtagareinformation — Response**

## Logical Model: HamtaVardtagareinformation — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtavardtagareinformation | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:HamtaVardtagareinformation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaVardtagareinformation (urn:riv:druglogistics:dosedispensing:HamtaVardtagareinformationResponder:1, HamtaVardtagareinformationResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-hamtavardtagareinformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtavardtagareinformation.csv), [Excel](StructureDefinition-hamtavardtagareinformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtavardtagareinformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtavardtagareinformation",
  "version" : "1.0",
  "name" : "HamtaVardtagareinformation",
  "title" : "HamtaVardtagareinformation — Response",
  "status" : "active",
  "date" : "2026-11-09T03:27:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaVardtagareinformation\n(urn:riv:druglogistics:dosedispensing:HamtaVardtagareinformationResponder:1, HamtaVardtagareinformationResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtavardtagareinformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtavardtagareinformation",
      "path" : "hamtavardtagareinformation",
      "short" : "HamtaVardtagareinformation — Response",
      "definition" : "Logisk modell för svaret i HamtaVardtagareinformation\n(urn:riv:druglogistics:dosedispensing:HamtaVardtagareinformationResponder:1, HamtaVardtagareinformationResponseType)."
    },
    {
      "id" : "hamtavardtagareinformation.resultatkod",
      "path" : "hamtavardtagareinformation.resultatkod",
      "short" : "resultatkod",
      "definition" : "resultatkod Tillåtna värden: 1, 2, 3.",
      "comment" : "TKB-fält: `resultatkod` (`ResultatkodEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** resultatkod Tillåtna värden: 1, 2, 3.",
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
      "id" : "hamtavardtagareinformation.meddelandetext",
      "path" : "hamtavardtagareinformation.meddelandetext",
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
      "id" : "hamtavardtagareinformation.meddelandeid",
      "path" : "hamtavardtagareinformation.meddelandeid",
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
      "id" : "hamtavardtagareinformation.Vardtagarinformation",
      "path" : "hamtavardtagareinformation.Vardtagarinformation",
      "short" : "Vardtagarinformation",
      "definition" : "Vardtagarinformation",
      "comment" : "TKB-fält: `Vardtagarinformation` (`Vardtagarinformation`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.hemmaboende",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.hemmaboende",
      "short" : "hemmaboende",
      "definition" : "hemmaboende",
      "comment" : "TKB-fält: `../hemmaboende` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.dosapoteksid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.dosapoteksid",
      "short" : "dosapoteksid",
      "definition" : "dosapoteksid",
      "comment" : "TKB-fält: `../dosapoteksid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.dosapoteknamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.dosapoteknamn",
      "short" : "dosapoteknamn",
      "definition" : "dosapoteknamn",
      "comment" : "TKB-fält: `../dosapoteknamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.forstadosdag",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.forstadosdag",
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
      "id" : "hamtavardtagareinformation.Vardtagarinformation.avvikandedosschema",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.avvikandedosschema",
      "short" : "avvikandedosschema",
      "definition" : "avvikandedosschema",
      "comment" : "TKB-fält: `../avvikandedosschema` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation",
      "short" : "PatientinfoResponse",
      "definition" : "Patientinformation",
      "comment" : "TKB-fält: `../Patientinformation` (`PatientinfoResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.fornamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.fornamn",
      "short" : "Anvandarens fornamn.",
      "definition" : "Anvandarens fornamn.",
      "comment" : "TKB-fält: `../../fornamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.mellannamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.mellannamn",
      "short" : "Anvandarens mellanamn.",
      "definition" : "Anvandarens mellanamn.",
      "comment" : "TKB-fält: `../../mellannamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.efternamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.efternamn",
      "short" : "Anvandarens efternamn.",
      "definition" : "Anvandarens efternamn.",
      "comment" : "TKB-fält: `../../efternamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.identitetstyp",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.identitetstyp",
      "short" : "identitetstyp",
      "definition" : "identitetstyp Tillåtna värden: P, R, S.",
      "comment" : "TKB-fält: `../../identitetstyp` (`IdentitetstypEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** identitetstyp Tillåtna värden: P, R, S.",
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
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.personid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.personid",
      "short" : "Anvandarens personid",
      "definition" : "Anvandarens personid",
      "comment" : "TKB-fält: `../../personid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.lanskod",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.lanskod",
      "short" : "Anvandarens folkbokforda lanskod",
      "definition" : "Anvandarens folkbokforda lanskod",
      "comment" : "TKB-fält: `../../lanskod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.kommunkod",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Patientinformation.kommunkod",
      "short" : "Anvandarens folkbokforda kommunkod",
      "definition" : "Anvandarens folkbokforda kommunkod",
      "comment" : "TKB-fält: `../../kommunkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation",
      "short" : "BoendeinfoResponse",
      "definition" : "Hemmaboendeinformation",
      "comment" : "TKB-fält: `../Hemmaboendeinformation` (`BoendeinfoResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.adress",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.adress",
      "short" : "adress",
      "definition" : "adress",
      "comment" : "TKB-fält: `../../adress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.postnummer",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "comment" : "TKB-fält: `../../postnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.ort",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.ort",
      "short" : "ort",
      "definition" : "ort",
      "comment" : "TKB-fält: `../../ort` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.telefon",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.telefon",
      "short" : "telefon",
      "definition" : "telefon",
      "comment" : "TKB-fält: `../../telefon` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.dosmottagareid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.dosmottagareid",
      "short" : "dosmottagareid",
      "definition" : "dosmottagareid",
      "comment" : "TKB-fält: `../../dosmottagareid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.dosmottagarenamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Hemmaboendeinformation.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "comment" : "TKB-fält: `../../dosmottagarenamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress",
      "short" : "BoendeinfoResponse",
      "definition" : "Tillfalligadress",
      "comment" : "TKB-fält: `../Tillfalligadress` (`BoendeinfoResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.adress",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.adress",
      "short" : "adress",
      "definition" : "adress",
      "comment" : "TKB-fält: `../../adress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.postnummer",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "comment" : "TKB-fält: `../../postnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.ort",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.ort",
      "short" : "ort",
      "definition" : "ort",
      "comment" : "TKB-fält: `../../ort` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.telefon",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.telefon",
      "short" : "telefon",
      "definition" : "telefon",
      "comment" : "TKB-fält: `../../telefon` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.dosmottagareid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.dosmottagareid",
      "short" : "dosmottagareid",
      "definition" : "dosmottagareid",
      "comment" : "TKB-fält: `../../dosmottagareid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.dosmottagarenamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Tillfalligadress.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "comment" : "TKB-fält: `../../dosmottagarenamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation",
      "short" : "LeveransadressinfoResponse",
      "definition" : "Leveransadressinformation",
      "comment" : "TKB-fält: `../Leveransadressinformation` (`LeveransadressinfoResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetnamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetnamn",
      "short" : "boendeenhetnamn",
      "definition" : "boendeenhetnamn",
      "comment" : "TKB-fält: `../../boendeenhetnamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetid",
      "short" : "boendeenhetid",
      "definition" : "boendeenhetid",
      "comment" : "TKB-fält: `../../boendeenhetid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetadress",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetadress",
      "short" : "boendeenhetadress",
      "definition" : "boendeenhetadress",
      "comment" : "TKB-fält: `../../boendeenhetadress` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetpostnummer",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetpostnummer",
      "short" : "boendeenhetpostnummer",
      "definition" : "boendeenhetpostnummer",
      "comment" : "TKB-fält: `../../boendeenhetpostnummer` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetpostort",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetpostort",
      "short" : "boendeenhetpostort",
      "definition" : "boendeenhetpostort",
      "comment" : "TKB-fält: `../../boendeenhetpostort` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetavdelning",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.boendeenhetavdelning",
      "short" : "boendeenhetavdelning",
      "definition" : "boendeenhetavdelning",
      "comment" : "TKB-fält: `../../boendeenhetavdelning` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.arbetsplatskod",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "comment" : "TKB-fält: `../../arbetsplatskod` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.dosmottagareid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.dosmottagareid",
      "short" : "dosmottagareid",
      "definition" : "dosmottagareid",
      "comment" : "TKB-fält: `../../dosmottagareid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.dosmottagarenamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Leveransadressinformation.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "comment" : "TKB-fält: `../../dosmottagarenamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation",
      "short" : "KontaktinfoResponse",
      "definition" : "Kontaktinformation",
      "comment" : "TKB-fält: `../Kontaktinformation` (`KontaktinfoResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.PALforskrivarkod",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.PALforskrivarkod",
      "short" : "PALforskrivarkod",
      "definition" : "PALforskrivarkod",
      "comment" : "TKB-fält: `../../PALforskrivarkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.PALfornamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.PALfornamn",
      "short" : "PALfornamn",
      "definition" : "PALfornamn",
      "comment" : "TKB-fält: `../../PALfornamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.PALefternamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.PALefternamn",
      "short" : "PALefternamn",
      "definition" : "PALefternamn",
      "comment" : "TKB-fält: `../../PALefternamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.anhorigkontaktnamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.anhorigkontaktnamn",
      "short" : "anhorigkontaktnamn",
      "definition" : "anhorigkontaktnamn",
      "comment" : "TKB-fält: `../../anhorigkontaktnamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.anhorigkontaktemail",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.anhorigkontaktemail",
      "short" : "anhorigkontaktemail",
      "definition" : "anhorigkontaktemail",
      "comment" : "TKB-fält: `../../anhorigkontaktemail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontaktnamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontaktnamn",
      "short" : "ansvarigkontaktnamn",
      "definition" : "ansvarigkontaktnamn",
      "comment" : "TKB-fält: `../../ansvarigkontaktnamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontaktemail",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontaktemail",
      "short" : "ansvarigkontaktemail",
      "definition" : "ansvarigkontaktemail",
      "comment" : "TKB-fält: `../../ansvarigkontaktemail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontaktadress",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontaktadress",
      "short" : "ansvarigkontaktadress",
      "definition" : "ansvarigkontaktadress",
      "comment" : "TKB-fält: `../../ansvarigkontaktadress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontaktpostnummer",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontaktpostnummer",
      "short" : "ansvarigkontaktpostnummer",
      "definition" : "ansvarigkontaktpostnummer",
      "comment" : "TKB-fält: `../../ansvarigkontaktpostnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontaktpostort",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontaktpostort",
      "short" : "ansvarigkontaktpostort",
      "definition" : "ansvarigkontaktpostort",
      "comment" : "TKB-fält: `../../ansvarigkontaktpostort` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontakttelefon1",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontakttelefon1",
      "short" : "ansvarigkontakttelefon1",
      "definition" : "ansvarigkontakttelefon1",
      "comment" : "TKB-fält: `../../ansvarigkontakttelefon1` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontakttelefon2",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.ansvarigkontakttelefon2",
      "short" : "ansvarigkontakttelefon2",
      "definition" : "ansvarigkontakttelefon2",
      "comment" : "TKB-fält: `../../ansvarigkontakttelefon2` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.vardandeenhetid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.vardandeenhetid",
      "short" : "vardandeenhetid",
      "definition" : "vardandeenhetid",
      "comment" : "TKB-fält: `../../vardandeenhetid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.vardandeenhetnamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.vardandeenhetnamn",
      "short" : "vardandeenhetnamn",
      "definition" : "vardandeenhetnamn",
      "comment" : "TKB-fält: `../../vardandeenhetnamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.vardandeenhetpostort",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.vardandeenhetpostort",
      "short" : "vardandeenhetpostort",
      "definition" : "vardandeenhetpostort",
      "comment" : "TKB-fält: `../../vardandeenhetpostort` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.vardandeenhetpostnummer",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Kontaktinformation.vardandeenhetpostnummer",
      "short" : "vardandeenhetpostnummer",
      "definition" : "vardandeenhetpostnummer",
      "comment" : "TKB-fält: `../../vardandeenhetpostnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation",
      "short" : "BetalningsinfoResponse",
      "definition" : "Betalningsinformation",
      "comment" : "TKB-fält: `../Betalningsinformation` (`BetalningsinfoResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.form",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.form",
      "short" : "form",
      "definition" : "form",
      "comment" : "TKB-fält: `../../form` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.information",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.information",
      "short" : "information",
      "definition" : "information",
      "comment" : "TKB-fält: `../../information` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigfornamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigfornamn",
      "short" : "betalningsansvarigfornamn",
      "definition" : "betalningsansvarigfornamn",
      "comment" : "TKB-fält: `../../betalningsansvarigfornamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigefternamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigefternamn",
      "short" : "betalningsansvarigefternamn",
      "definition" : "betalningsansvarigefternamn",
      "comment" : "TKB-fält: `../../betalningsansvarigefternamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigadress",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigadress",
      "short" : "betalningsansvarigadress",
      "definition" : "betalningsansvarigadress",
      "comment" : "TKB-fält: `../../betalningsansvarigadress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigpostnummer",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigpostnummer",
      "short" : "betalningsansvarigpostnummer",
      "definition" : "betalningsansvarigpostnummer",
      "comment" : "TKB-fält: `../../betalningsansvarigpostnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigort",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigort",
      "short" : "betalningsansvarigort",
      "definition" : "betalningsansvarigort",
      "comment" : "TKB-fält: `../../betalningsansvarigort` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigtelefon",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Betalningsinformation.betalningsansvarigtelefon",
      "short" : "betalningsansvarigtelefon",
      "definition" : "betalningsansvarigtelefon",
      "comment" : "TKB-fält: `../../betalningsansvarigtelefon` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo",
      "short" : "ProduktionsinfoResponse",
      "definition" : "Produktionsinfo",
      "comment" : "TKB-fält: `../Produktionsinfo` (`ProduktionsinfoResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosaktor",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosaktor",
      "short" : "dosaktor",
      "definition" : "dosaktor",
      "comment" : "TKB-fält: `../../dosaktor` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosapotek",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosapotek",
      "short" : "dosapotek",
      "definition" : "dosapotek",
      "comment" : "TKB-fält: `../../dosapotek` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosapotekid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosapotekid",
      "short" : "dosapotekid",
      "definition" : "dosapotekid",
      "comment" : "TKB-fält: `../../dosapotekid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.stopptidbestallning",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.stopptidbestallning",
      "short" : "stopptidbestallning",
      "definition" : "stopptidbestallning",
      "comment" : "TKB-fält: `../../stopptidbestallning` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.stopptidordination",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.stopptidordination",
      "short" : "stopptidordination",
      "definition" : "stopptidordination",
      "comment" : "TKB-fält: `../../stopptidordination` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.forstadosdag",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.forstadosdag",
      "short" : "forstadosdag",
      "definition" : "forstadosdag",
      "comment" : "TKB-fält: `../../forstadosdag` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosvecka",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosvecka",
      "short" : "dosvecka",
      "definition" : "dosvecka",
      "comment" : "TKB-fält: `../../dosvecka` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema",
      "short" : "DoseringsschemaResponse",
      "definition" : "doseringsschema",
      "comment" : "TKB-fält: `../../doseringsschema` (`DoseringsschemaResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema.periodlangd",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema.periodlangd",
      "short" : "periodlangd",
      "definition" : "Antal dagar som dosering skall galla. Vid regelbunden dosering anges periodlangd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag.",
      "comment" : "TKB-fält: `../../../periodlangd` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle",
      "short" : "IntagstillfalleResponse",
      "definition" : "Beskriver tid och mangd for intag av lakemedel.",
      "comment" : "TKB-fält: `../../../intagstillfalle` (`IntagstillfalleResponse`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.intagstillfalle",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.intagstillfalle",
      "short" : "Klockslag nar patienten ska inta medicinering.",
      "definition" : "Klockslag nar patienten ska inta medicinering.",
      "comment" : "TKB-fält: `../../../../intagstillfalle` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.intagsmangd",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.intagsmangd",
      "short" : "Intagsmangd per tillfalle",
      "definition" : "Intagsmangd per tillfalle",
      "comment" : "TKB-fält: `../../../../intagsmangd` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.dagIPeriod",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.dagIPeriod",
      "short" : "dagIPeriod",
      "definition" : "Dag i perioden nar intag skall goras. Exempel: Intag ska ske varje mandag och onsdag och startdatum ar pa en mandag. Mandag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period= 1. Onsdag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period=3.",
      "comment" : "TKB-fält: `../../../../dagIPeriod` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosmottagareid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosmottagareid",
      "short" : "dosmottagareid",
      "definition" : "dosmottagareid",
      "comment" : "TKB-fält: `../../dosmottagareid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosmottagarenamn",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Produktionsinfo.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "comment" : "TKB-fält: `../../dosmottagarenamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Vardtagarstatus",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Vardtagarstatus",
      "short" : "Vardtagarstatusinfo",
      "definition" : "Vardtagarstatus",
      "comment" : "TKB-fält: `../Vardtagarstatus` (`Vardtagarstatusinfo`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Vardtagarstatus.statuskod",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Vardtagarstatus.statuskod",
      "short" : "statuskod",
      "definition" : "statuskod Tillåtna värden: 1, 2, 3, 4, 5, 6.",
      "comment" : "TKB-fält: `../../statuskod` (`VardtagarStatusEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** statuskod Tillåtna värden: 1, 2, 3, 4, 5, 6.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-vardtagarstatus-vs"
      }
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Vardtagarstatus.frantid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Vardtagarstatus.frantid",
      "short" : "frantid",
      "definition" : "frantid",
      "comment" : "TKB-fält: `../../frantid` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.Vardtagarstatus.tilltid",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.Vardtagarstatus.tilltid",
      "short" : "tilltid",
      "definition" : "tilltid",
      "comment" : "TKB-fält: `../../tilltid` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtavardtagareinformation.Vardtagarinformation.vilandestatusorsak",
      "path" : "hamtavardtagareinformation.Vardtagarinformation.vilandestatusorsak",
      "short" : "vilandestatusorsak",
      "definition" : "vilandestatusorsak",
      "comment" : "TKB-fält: `../vilandestatusorsak` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
