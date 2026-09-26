# HamtaMeddelanden — Request - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaMeddelanden — Request**

## Logical Model: HamtaMeddelanden — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtameddelanden-request | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaMeddelandenRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaMeddelanden (urn:riv:druglogistics:dosedispensing:HamtaMeddelandenResponder:1, HamtaMeddelandenType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-hamtameddelanden-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtameddelanden-request.csv), [Excel](StructureDefinition-hamtameddelanden-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtameddelanden-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtameddelanden-request",
  "version" : "1.1.0",
  "name" : "HamtaMeddelandenRequest",
  "title" : "HamtaMeddelanden — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaMeddelanden\n(urn:riv:druglogistics:dosedispensing:HamtaMeddelandenResponder:1, HamtaMeddelandenType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtameddelanden-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtameddelanden-request",
      "path" : "hamtameddelanden-request",
      "short" : "HamtaMeddelanden — Request",
      "definition" : "Logisk modell för begäran i HamtaMeddelanden\n(urn:riv:druglogistics:dosedispensing:HamtaMeddelandenResponder:1, HamtaMeddelandenType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "hamtameddelanden-request.logicalAddress",
      "path" : "hamtameddelanden-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtameddelanden-request.glnkod",
      "path" : "hamtameddelanden-request.glnkod",
      "short" : "glnkod",
      "definition" : "glnkod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Behorighetsinformation",
      "path" : "hamtameddelanden-request.Behorighetsinformation",
      "short" : "Behorighetsinformation",
      "definition" : "Behorighetsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Behorighetsinformation.fornamn",
      "path" : "hamtameddelanden-request.Behorighetsinformation.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Behorighetsinformation.efternamn",
      "path" : "hamtameddelanden-request.Behorighetsinformation.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Behorighetsinformation.forskrivarkod",
      "path" : "hamtameddelanden-request.Behorighetsinformation.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Behorighetsinformation.yrkeskod",
      "path" : "hamtameddelanden-request.Behorighetsinformation.yrkeskod",
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
      "id" : "hamtameddelanden-request.Behorighetsinformation.arbetsplatskod",
      "path" : "hamtameddelanden-request.Behorighetsinformation.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Behorighetsinformation.hsaid",
      "path" : "hamtameddelanden-request.Behorighetsinformation.hsaid",
      "short" : "hsaid",
      "definition" : "hsaid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Behorighetsinformation.personnummer",
      "path" : "hamtameddelanden-request.Behorighetsinformation.personnummer",
      "short" : "personnummer",
      "definition" : "personnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Behorighetsinformation.organisationsnummer",
      "path" : "hamtameddelanden-request.Behorighetsinformation.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval",
      "path" : "hamtameddelanden-request.Meddelandenutval",
      "short" : "Meddelandenutval",
      "definition" : "Meddelandenutval",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.Meddelandetyp",
      "path" : "hamtameddelanden-request.Meddelandenutval.Meddelandetyp",
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
      "id" : "hamtameddelanden-request.Meddelandenutval.Patientinformation",
      "path" : "hamtameddelanden-request.Meddelandenutval.Patientinformation",
      "short" : "Patientinformation",
      "definition" : "Patientinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.fornamn",
      "path" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.fornamn",
      "short" : "fornamn",
      "definition" : "Anvandarens fornamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.mellannamn",
      "path" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.mellannamn",
      "short" : "mellannamn",
      "definition" : "Anvandarens mellanamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.efternamn",
      "path" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.efternamn",
      "short" : "efternamn",
      "definition" : "Anvandarens efternamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.identitetstyp",
      "path" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.identitetstyp",
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
      "id" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.personid",
      "path" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.personid",
      "short" : "personid",
      "definition" : "Anvandarens personid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.lanskod",
      "path" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.lanskod",
      "short" : "lanskod",
      "definition" : "Anvandarens folkbokforda lanskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.kommunkod",
      "path" : "hamtameddelanden-request.Meddelandenutval.Patientinformation.kommunkod",
      "short" : "kommunkod",
      "definition" : "Anvandarens folkbokforda kommunkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.meddelandeid",
      "path" : "hamtameddelanden-request.Meddelandenutval.meddelandeid",
      "short" : "meddelandeid",
      "definition" : "meddelandeid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.meddelandestatus",
      "path" : "hamtameddelanden-request.Meddelandenutval.meddelandestatus",
      "short" : "meddelandestatus",
      "definition" : "meddelandestatus",
      "min" : 0,
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
      "id" : "hamtameddelanden-request.Meddelandenutval.ordinationsid",
      "path" : "hamtameddelanden-request.Meddelandenutval.ordinationsid",
      "short" : "ordinationsid",
      "definition" : "ordinationsid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.vardgivarespersonid",
      "path" : "hamtameddelanden-request.Meddelandenutval.vardgivarespersonid",
      "short" : "vardgivarespersonid",
      "definition" : "vardgivarespersonid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.forskrivarkod",
      "path" : "hamtameddelanden-request.Meddelandenutval.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.frantid",
      "path" : "hamtameddelanden-request.Meddelandenutval.frantid",
      "short" : "frantid",
      "definition" : "frantid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtameddelanden-request.Meddelandenutval.tilltid",
      "path" : "hamtameddelanden-request.Meddelandenutval.tilltid",
      "short" : "tilltid",
      "definition" : "tilltid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
