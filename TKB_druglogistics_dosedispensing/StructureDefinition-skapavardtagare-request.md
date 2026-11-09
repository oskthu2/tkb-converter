# SkapaVardtagare — Request - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkapaVardtagare — Request**

## Logical Model: SkapaVardtagare — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skapavardtagare-request | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:SkapaVardtagareRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SkapaVardtagare (urn:riv:druglogistics:dosedispensing:SkapaVardtagareResponder:1, SkapaVardtagareType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-skapavardtagare-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-skapavardtagare-request.csv), [Excel](StructureDefinition-skapavardtagare-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "skapavardtagare-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skapavardtagare-request",
  "version" : "1.0",
  "name" : "SkapaVardtagareRequest",
  "title" : "SkapaVardtagare — Request",
  "status" : "active",
  "date" : "2026-11-09T03:27:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SkapaVardtagare\n(urn:riv:druglogistics:dosedispensing:SkapaVardtagareResponder:1, SkapaVardtagareType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skapavardtagare-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "skapavardtagare-request",
      "path" : "skapavardtagare-request",
      "short" : "SkapaVardtagare — Request",
      "definition" : "Logisk modell för begäran i SkapaVardtagare\n(urn:riv:druglogistics:dosedispensing:SkapaVardtagareResponder:1, SkapaVardtagareType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "skapavardtagare-request.glnkod",
      "path" : "skapavardtagare-request.glnkod",
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
      "id" : "skapavardtagare-request.Behorighetsinformation",
      "path" : "skapavardtagare-request.Behorighetsinformation",
      "short" : "BehorighetsinfoRequest",
      "definition" : "Behorighetsinformation",
      "comment" : "TKB-fält: `Behorighetsinformation` (`BehorighetsinfoRequest`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "skapavardtagare-request.Behorighetsinformation.fornamn",
      "path" : "skapavardtagare-request.Behorighetsinformation.fornamn",
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
      "id" : "skapavardtagare-request.Behorighetsinformation.efternamn",
      "path" : "skapavardtagare-request.Behorighetsinformation.efternamn",
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
      "id" : "skapavardtagare-request.Behorighetsinformation.forskrivarkod",
      "path" : "skapavardtagare-request.Behorighetsinformation.forskrivarkod",
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
      "id" : "skapavardtagare-request.Behorighetsinformation.yrkeskod",
      "path" : "skapavardtagare-request.Behorighetsinformation.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "yrkeskod Tillåtna värden: LK, TL, BM, SJ, RS, TH.",
      "comment" : "TKB-fält: `../yrkeskod` (`YrkesKodEnum`, kardinalitet 0..1).\n\n**Modellanteckning:** yrkeskod Tillåtna värden: LK, TL, BM, SJ, RS, TH.",
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
      "id" : "skapavardtagare-request.Behorighetsinformation.arbetsplatskod",
      "path" : "skapavardtagare-request.Behorighetsinformation.arbetsplatskod",
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
      "id" : "skapavardtagare-request.Behorighetsinformation.hsaid",
      "path" : "skapavardtagare-request.Behorighetsinformation.hsaid",
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
      "id" : "skapavardtagare-request.Behorighetsinformation.personnummer",
      "path" : "skapavardtagare-request.Behorighetsinformation.personnummer",
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
      "id" : "skapavardtagare-request.Behorighetsinformation.organisationsnummer",
      "path" : "skapavardtagare-request.Behorighetsinformation.organisationsnummer",
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
      "id" : "skapavardtagare-request.forskrivaresamtyckefornamn",
      "path" : "skapavardtagare-request.forskrivaresamtyckefornamn",
      "short" : "forskrivaresamtyckefornamn",
      "definition" : "forskrivaresamtyckefornamn",
      "comment" : "TKB-fält: `forskrivaresamtyckefornamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare-request.forskrivaresamtyckeefternamn",
      "path" : "skapavardtagare-request.forskrivaresamtyckeefternamn",
      "short" : "forskrivaresamtyckeefternamn",
      "definition" : "forskrivaresamtyckeefternamn",
      "comment" : "TKB-fält: `forskrivaresamtyckeefternamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare-request.forskrivaresamtyckeforskrivarkod",
      "path" : "skapavardtagare-request.forskrivaresamtyckeforskrivarkod",
      "short" : "forskrivaresamtyckeforskrivarkod",
      "definition" : "forskrivaresamtyckeforskrivarkod",
      "comment" : "TKB-fält: `forskrivaresamtyckeforskrivarkod` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare-request.forskrivaresamtyckearbetsplatskod",
      "path" : "skapavardtagare-request.forskrivaresamtyckearbetsplatskod",
      "short" : "forskrivaresamtyckearbetsplatskod",
      "definition" : "forskrivaresamtyckearbetsplatskod",
      "comment" : "TKB-fält: `forskrivaresamtyckearbetsplatskod` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare-request.forskrivaresamtyckeyrkeskod",
      "path" : "skapavardtagare-request.forskrivaresamtyckeyrkeskod",
      "short" : "forskrivaresamtyckeyrkeskod",
      "definition" : "forskrivaresamtyckeyrkeskod Tillåtna värden: LK, TL, BM, SJ, RS, TH.",
      "comment" : "TKB-fält: `forskrivaresamtyckeyrkeskod` (`YrkesKodEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** forskrivaresamtyckeyrkeskod Tillåtna värden: LK, TL, BM, SJ, RS, TH.",
      "min" : 1,
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
      "id" : "skapavardtagare-request.Vardtagarinformation",
      "path" : "skapavardtagare-request.Vardtagarinformation",
      "short" : "Vardtagarinformation",
      "definition" : "Vardtagarinformation",
      "comment" : "TKB-fält: `Vardtagarinformation` (`Vardtagarinformation`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "skapavardtagare-request.Vardtagarinformation.hemmaboende",
      "path" : "skapavardtagare-request.Vardtagarinformation.hemmaboende",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.dosapoteksid",
      "path" : "skapavardtagare-request.Vardtagarinformation.dosapoteksid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.dosapoteknamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.dosapoteknamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.forstadosdag",
      "path" : "skapavardtagare-request.Vardtagarinformation.forstadosdag",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.avvikandedosschema",
      "path" : "skapavardtagare-request.Vardtagarinformation.avvikandedosschema",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Patientinformation",
      "path" : "skapavardtagare-request.Vardtagarinformation.Patientinformation",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.fornamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.fornamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.mellannamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.mellannamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.efternamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.efternamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.identitetstyp",
      "path" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.identitetstyp",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.personid",
      "path" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.personid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.lanskod",
      "path" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.lanskod",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.kommunkod",
      "path" : "skapavardtagare-request.Vardtagarinformation.Patientinformation.kommunkod",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation",
      "path" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.adress",
      "path" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.adress",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.postnummer",
      "path" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.postnummer",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.ort",
      "path" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.ort",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.telefon",
      "path" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.telefon",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.dosmottagareid",
      "path" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.dosmottagareid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.dosmottagarenamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Hemmaboendeinformation.dosmottagarenamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress",
      "path" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.adress",
      "path" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.adress",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.postnummer",
      "path" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.postnummer",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.ort",
      "path" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.ort",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.telefon",
      "path" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.telefon",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.dosmottagareid",
      "path" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.dosmottagareid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.dosmottagarenamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Tillfalligadress.dosmottagarenamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation",
      "path" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetnamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetnamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetid",
      "path" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetadress",
      "path" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetadress",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetpostnummer",
      "path" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetpostnummer",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetpostort",
      "path" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetpostort",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetavdelning",
      "path" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.boendeenhetavdelning",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.arbetsplatskod",
      "path" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.arbetsplatskod",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.dosmottagareid",
      "path" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.dosmottagareid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.dosmottagarenamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Leveransadressinformation.dosmottagarenamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.PALforskrivarkod",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.PALforskrivarkod",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.PALfornamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.PALfornamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.PALefternamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.PALefternamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.anhorigkontaktnamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.anhorigkontaktnamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.anhorigkontaktemail",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.anhorigkontaktemail",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontaktnamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontaktnamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontaktemail",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontaktemail",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontaktadress",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontaktadress",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontaktpostnummer",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontaktpostnummer",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontaktpostort",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontaktpostort",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontakttelefon1",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontakttelefon1",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontakttelefon2",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.ansvarigkontakttelefon2",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.vardandeenhetid",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.vardandeenhetid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.vardandeenhetnamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.vardandeenhetnamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.vardandeenhetpostort",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.vardandeenhetpostort",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.vardandeenhetpostnummer",
      "path" : "skapavardtagare-request.Vardtagarinformation.Kontaktinformation.vardandeenhetpostnummer",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation",
      "path" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.form",
      "path" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.form",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.information",
      "path" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.information",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigfornamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigfornamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigefternamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigefternamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigadress",
      "path" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigadress",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigpostnummer",
      "path" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigpostnummer",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigort",
      "path" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigort",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigtelefon",
      "path" : "skapavardtagare-request.Vardtagarinformation.Betalningsinformation.betalningsansvarigtelefon",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosaktor",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosaktor",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosapotek",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosapotek",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosapotekid",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosapotekid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.stopptidbestallning",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.stopptidbestallning",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.stopptidordination",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.stopptidordination",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.forstadosdag",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.forstadosdag",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosvecka",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosvecka",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema.periodlangd",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema.periodlangd",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.intagstillfalle",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.intagstillfalle",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.intagsmangd",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.intagsmangd",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.dagIPeriod",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.doseringsschema.intagstillfalle.dagIPeriod",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosmottagareid",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosmottagareid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosmottagarenamn",
      "path" : "skapavardtagare-request.Vardtagarinformation.Produktionsinfo.dosmottagarenamn",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Vardtagarstatus",
      "path" : "skapavardtagare-request.Vardtagarinformation.Vardtagarstatus",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Vardtagarstatus.statuskod",
      "path" : "skapavardtagare-request.Vardtagarinformation.Vardtagarstatus.statuskod",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Vardtagarstatus.frantid",
      "path" : "skapavardtagare-request.Vardtagarinformation.Vardtagarstatus.frantid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.Vardtagarstatus.tilltid",
      "path" : "skapavardtagare-request.Vardtagarinformation.Vardtagarstatus.tilltid",
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
      "id" : "skapavardtagare-request.Vardtagarinformation.vilandestatusorsak",
      "path" : "skapavardtagare-request.Vardtagarinformation.vilandestatusorsak",
      "short" : "vilandestatusorsak",
      "definition" : "vilandestatusorsak",
      "comment" : "TKB-fält: `../vilandestatusorsak` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapavardtagare-request.akut",
      "path" : "skapavardtagare-request.akut",
      "short" : "akut",
      "definition" : "akut",
      "comment" : "TKB-fält: `akut` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapavardtagare-request.meddelandetillapotek",
      "path" : "skapavardtagare-request.meddelandetillapotek",
      "short" : "meddelandetillapotek",
      "definition" : "meddelandetillapotek",
      "comment" : "TKB-fält: `meddelandetillapotek` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
