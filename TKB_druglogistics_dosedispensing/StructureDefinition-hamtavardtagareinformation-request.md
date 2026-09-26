# HamtaVardtagareinformation — Request - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaVardtagareinformation — Request**

## Logical Model: HamtaVardtagareinformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtavardtagareinformation-request | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaVardtagareinformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaVardtagareinformation (urn:riv:druglogistics:dosedispensing:HamtaVardtagareinformationResponder:1, HamtaVardtagareinformationType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-hamtavardtagareinformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtavardtagareinformation-request.csv), [Excel](StructureDefinition-hamtavardtagareinformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtavardtagareinformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtavardtagareinformation-request",
  "version" : "1.1.0",
  "name" : "HamtaVardtagareinformationRequest",
  "title" : "HamtaVardtagareinformation — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaVardtagareinformation\n(urn:riv:druglogistics:dosedispensing:HamtaVardtagareinformationResponder:1, HamtaVardtagareinformationType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtavardtagareinformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtavardtagareinformation-request",
      "path" : "hamtavardtagareinformation-request",
      "short" : "HamtaVardtagareinformation — Request",
      "definition" : "Logisk modell för begäran i HamtaVardtagareinformation\n(urn:riv:druglogistics:dosedispensing:HamtaVardtagareinformationResponder:1, HamtaVardtagareinformationType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "hamtavardtagareinformation-request.logicalAddress",
      "path" : "hamtavardtagareinformation-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtavardtagareinformation-request.glnkod",
      "path" : "hamtavardtagareinformation-request.glnkod",
      "short" : "glnkod",
      "definition" : "glnkod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation-request.Behorighetsinformation",
      "path" : "hamtavardtagareinformation-request.Behorighetsinformation",
      "short" : "Behorighetsinformation",
      "definition" : "Behorighetsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtavardtagareinformation-request.Behorighetsinformation.fornamn",
      "path" : "hamtavardtagareinformation-request.Behorighetsinformation.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation-request.Behorighetsinformation.efternamn",
      "path" : "hamtavardtagareinformation-request.Behorighetsinformation.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation-request.Behorighetsinformation.forskrivarkod",
      "path" : "hamtavardtagareinformation-request.Behorighetsinformation.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation-request.Behorighetsinformation.yrkeskod",
      "path" : "hamtavardtagareinformation-request.Behorighetsinformation.yrkeskod",
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
      "id" : "hamtavardtagareinformation-request.Behorighetsinformation.arbetsplatskod",
      "path" : "hamtavardtagareinformation-request.Behorighetsinformation.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation-request.Behorighetsinformation.hsaid",
      "path" : "hamtavardtagareinformation-request.Behorighetsinformation.hsaid",
      "short" : "hsaid",
      "definition" : "hsaid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation-request.Behorighetsinformation.personnummer",
      "path" : "hamtavardtagareinformation-request.Behorighetsinformation.personnummer",
      "short" : "personnummer",
      "definition" : "personnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation-request.Behorighetsinformation.organisationsnummer",
      "path" : "hamtavardtagareinformation-request.Behorighetsinformation.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtavardtagareinformation-request.identitetstyp",
      "path" : "hamtavardtagareinformation-request.identitetstyp",
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
      "id" : "hamtavardtagareinformation-request.personid",
      "path" : "hamtavardtagareinformation-request.personid",
      "short" : "personid",
      "definition" : "personid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
