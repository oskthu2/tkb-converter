# SkickaMeddelanden — Request - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkickaMeddelanden — Request**

## Logical Model: SkickaMeddelanden — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/skickameddelanden-request | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:SkickaMeddelandenRequest |
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
  "version" : "1.1.0",
  "name" : "SkickaMeddelandenRequest",
  "title" : "SkickaMeddelanden — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
