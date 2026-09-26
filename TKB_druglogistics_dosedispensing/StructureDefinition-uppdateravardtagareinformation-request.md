# UppdateraVardtagareinformation — Request - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UppdateraVardtagareinformation — Request**

## Logical Model: UppdateraVardtagareinformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/uppdateravardtagareinformation-request | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:UppdateraVardtagareinformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i UppdateraVardtagareinformation (urn:riv:druglogistics:dosedispensing:UppdateraVardtagareinformationResponder:1, UppdateraVardtagareinformationType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-uppdateravardtagareinformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-uppdateravardtagareinformation-request.csv), [Excel](StructureDefinition-uppdateravardtagareinformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uppdateravardtagareinformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/uppdateravardtagareinformation-request",
  "version" : "1.1.0",
  "name" : "UppdateraVardtagareinformationRequest",
  "title" : "UppdateraVardtagareinformation — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i UppdateraVardtagareinformation\n(urn:riv:druglogistics:dosedispensing:UppdateraVardtagareinformationResponder:1, UppdateraVardtagareinformationType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/uppdateravardtagareinformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "uppdateravardtagareinformation-request",
      "path" : "uppdateravardtagareinformation-request",
      "short" : "UppdateraVardtagareinformation — Request",
      "definition" : "Logisk modell för begäran i UppdateraVardtagareinformation\n(urn:riv:druglogistics:dosedispensing:UppdateraVardtagareinformationResponder:1, UppdateraVardtagareinformationType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "uppdateravardtagareinformation-request.logicalAddress",
      "path" : "uppdateravardtagareinformation-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.glnkod",
      "path" : "uppdateravardtagareinformation-request.glnkod",
      "short" : "glnkod",
      "definition" : "glnkod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Behorighetsinformation",
      "path" : "uppdateravardtagareinformation-request.Behorighetsinformation",
      "short" : "Behorighetsinformation",
      "definition" : "Behorighetsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Behorighetsinformation.fornamn",
      "path" : "uppdateravardtagareinformation-request.Behorighetsinformation.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Behorighetsinformation.efternamn",
      "path" : "uppdateravardtagareinformation-request.Behorighetsinformation.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Behorighetsinformation.forskrivarkod",
      "path" : "uppdateravardtagareinformation-request.Behorighetsinformation.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Behorighetsinformation.yrkeskod",
      "path" : "uppdateravardtagareinformation-request.Behorighetsinformation.yrkeskod",
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
      "id" : "uppdateravardtagareinformation-request.Behorighetsinformation.arbetsplatskod",
      "path" : "uppdateravardtagareinformation-request.Behorighetsinformation.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Behorighetsinformation.hsaid",
      "path" : "uppdateravardtagareinformation-request.Behorighetsinformation.hsaid",
      "short" : "hsaid",
      "definition" : "hsaid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Behorighetsinformation.personnummer",
      "path" : "uppdateravardtagareinformation-request.Behorighetsinformation.personnummer",
      "short" : "personnummer",
      "definition" : "personnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Behorighetsinformation.organisationsnummer",
      "path" : "uppdateravardtagareinformation-request.Behorighetsinformation.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare",
      "path" : "uppdateravardtagareinformation-request.Vardtagare",
      "short" : "Vardtagare",
      "definition" : "Vardtagare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.hemmaboende",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.hemmaboende",
      "short" : "hemmaboende",
      "definition" : "hemmaboende",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.dosapoteksid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.dosapoteksid",
      "short" : "dosapoteksid",
      "definition" : "dosapoteksid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.dosapoteknamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.dosapoteknamn",
      "short" : "dosapoteknamn",
      "definition" : "dosapoteknamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.forstadosdag",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.forstadosdag",
      "short" : "forstadosdag",
      "definition" : "forstadosdag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.avvikandedosschema",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.avvikandedosschema",
      "short" : "avvikandedosschema",
      "definition" : "avvikandedosschema",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation",
      "short" : "Patientinformation",
      "definition" : "Patientinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.fornamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.fornamn",
      "short" : "fornamn",
      "definition" : "Anvandarens fornamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.mellannamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.mellannamn",
      "short" : "mellannamn",
      "definition" : "Anvandarens mellanamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.efternamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.efternamn",
      "short" : "efternamn",
      "definition" : "Anvandarens efternamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.identitetstyp",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.identitetstyp",
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
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.personid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.personid",
      "short" : "personid",
      "definition" : "Anvandarens personid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.lanskod",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.lanskod",
      "short" : "lanskod",
      "definition" : "Anvandarens folkbokforda lanskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.kommunkod",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Patientinformation.kommunkod",
      "short" : "kommunkod",
      "definition" : "Anvandarens folkbokforda kommunkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation",
      "short" : "Hemmaboendeinformation",
      "definition" : "Hemmaboendeinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.adress",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.adress",
      "short" : "adress",
      "definition" : "adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.postnummer",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.ort",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.ort",
      "short" : "ort",
      "definition" : "ort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.telefon",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.telefon",
      "short" : "telefon",
      "definition" : "telefon",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.dosmottagareid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.dosmottagareid",
      "short" : "dosmottagareid",
      "definition" : "dosmottagareid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.dosmottagarenamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Hemmaboendeinformation.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress",
      "short" : "Tillfalligadress",
      "definition" : "Tillfalligadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.adress",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.adress",
      "short" : "adress",
      "definition" : "adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.postnummer",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.ort",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.ort",
      "short" : "ort",
      "definition" : "ort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.telefon",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.telefon",
      "short" : "telefon",
      "definition" : "telefon",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.dosmottagareid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.dosmottagareid",
      "short" : "dosmottagareid",
      "definition" : "dosmottagareid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.dosmottagarenamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Tillfalligadress.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation",
      "short" : "Leveransadressinformation",
      "definition" : "Leveransadressinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetnamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetnamn",
      "short" : "boendeenhetnamn",
      "definition" : "boendeenhetnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetid",
      "short" : "boendeenhetid",
      "definition" : "boendeenhetid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetadress",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetadress",
      "short" : "boendeenhetadress",
      "definition" : "boendeenhetadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetpostnummer",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetpostnummer",
      "short" : "boendeenhetpostnummer",
      "definition" : "boendeenhetpostnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetpostort",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetpostort",
      "short" : "boendeenhetpostort",
      "definition" : "boendeenhetpostort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetavdelning",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.boendeenhetavdelning",
      "short" : "boendeenhetavdelning",
      "definition" : "boendeenhetavdelning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.arbetsplatskod",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.dosmottagareid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.dosmottagareid",
      "short" : "dosmottagareid",
      "definition" : "dosmottagareid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.dosmottagarenamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Leveransadressinformation.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation",
      "short" : "Kontaktinformation",
      "definition" : "Kontaktinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.PALforskrivarkod",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.PALforskrivarkod",
      "short" : "PALforskrivarkod",
      "definition" : "PALforskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.PALfornamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.PALfornamn",
      "short" : "PALfornamn",
      "definition" : "PALfornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.PALefternamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.PALefternamn",
      "short" : "PALefternamn",
      "definition" : "PALefternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.anhorigkontaktnamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.anhorigkontaktnamn",
      "short" : "anhorigkontaktnamn",
      "definition" : "anhorigkontaktnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.anhorigkontaktemail",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.anhorigkontaktemail",
      "short" : "anhorigkontaktemail",
      "definition" : "anhorigkontaktemail",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontaktnamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontaktnamn",
      "short" : "ansvarigkontaktnamn",
      "definition" : "ansvarigkontaktnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontaktemail",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontaktemail",
      "short" : "ansvarigkontaktemail",
      "definition" : "ansvarigkontaktemail",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontaktadress",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontaktadress",
      "short" : "ansvarigkontaktadress",
      "definition" : "ansvarigkontaktadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontaktpostnummer",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontaktpostnummer",
      "short" : "ansvarigkontaktpostnummer",
      "definition" : "ansvarigkontaktpostnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontaktpostort",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontaktpostort",
      "short" : "ansvarigkontaktpostort",
      "definition" : "ansvarigkontaktpostort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontakttelefon1",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontakttelefon1",
      "short" : "ansvarigkontakttelefon1",
      "definition" : "ansvarigkontakttelefon1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontakttelefon2",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.ansvarigkontakttelefon2",
      "short" : "ansvarigkontakttelefon2",
      "definition" : "ansvarigkontakttelefon2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.vardandeenhetid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.vardandeenhetid",
      "short" : "vardandeenhetid",
      "definition" : "vardandeenhetid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.vardandeenhetnamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.vardandeenhetnamn",
      "short" : "vardandeenhetnamn",
      "definition" : "vardandeenhetnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.vardandeenhetpostort",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.vardandeenhetpostort",
      "short" : "vardandeenhetpostort",
      "definition" : "vardandeenhetpostort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.vardandeenhetpostnummer",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Kontaktinformation.vardandeenhetpostnummer",
      "short" : "vardandeenhetpostnummer",
      "definition" : "vardandeenhetpostnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation",
      "short" : "Betalningsinformation",
      "definition" : "Betalningsinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.form",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.form",
      "short" : "form",
      "definition" : "form",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.information",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.information",
      "short" : "information",
      "definition" : "information",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigfornamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigfornamn",
      "short" : "betalningsansvarigfornamn",
      "definition" : "betalningsansvarigfornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigefternamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigefternamn",
      "short" : "betalningsansvarigefternamn",
      "definition" : "betalningsansvarigefternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigadress",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigadress",
      "short" : "betalningsansvarigadress",
      "definition" : "betalningsansvarigadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigpostnummer",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigpostnummer",
      "short" : "betalningsansvarigpostnummer",
      "definition" : "betalningsansvarigpostnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigort",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigort",
      "short" : "betalningsansvarigort",
      "definition" : "betalningsansvarigort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigtelefon",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Betalningsinformation.betalningsansvarigtelefon",
      "short" : "betalningsansvarigtelefon",
      "definition" : "betalningsansvarigtelefon",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo",
      "short" : "Produktionsinfo",
      "definition" : "Produktionsinfo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosaktor",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosaktor",
      "short" : "dosaktor",
      "definition" : "dosaktor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosapotek",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosapotek",
      "short" : "dosapotek",
      "definition" : "dosapotek",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosapotekid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosapotekid",
      "short" : "dosapotekid",
      "definition" : "dosapotekid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.stopptidbestallning",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.stopptidbestallning",
      "short" : "stopptidbestallning",
      "definition" : "stopptidbestallning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.stopptidordination",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.stopptidordination",
      "short" : "stopptidordination",
      "definition" : "stopptidordination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.forstadosdag",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.forstadosdag",
      "short" : "forstadosdag",
      "definition" : "forstadosdag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosvecka",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosvecka",
      "short" : "dosvecka",
      "definition" : "dosvecka",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema",
      "short" : "doseringsschema",
      "definition" : "doseringsschema",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema.periodlangd",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema.periodlangd",
      "short" : "periodlangd",
      "definition" : "Antal dagar som dosering skall galla. Vid regelbunden dosering anges periodlangd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema.intagstillfalle",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Beskriver tid och mangd for intag av lakemedel.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema.intagstillfalle.intagstillfalle",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema.intagstillfalle.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Klockslag nar patienten ska inta medicinering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema.intagstillfalle.intagsmangd",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema.intagstillfalle.intagsmangd",
      "short" : "intagsmangd",
      "definition" : "Intagsmangd per tillfalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema.intagstillfalle.dagIPeriod",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.doseringsschema.intagstillfalle.dagIPeriod",
      "short" : "dagIPeriod",
      "definition" : "Dag i perioden nar intag skall goras. Exempel: Intag ska ske varje mandag och onsdag och startdatum ar pa en mandag. Mandag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period= 1. Onsdag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period=3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosmottagareid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosmottagareid",
      "short" : "dosmottagareid",
      "definition" : "dosmottagareid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosmottagarenamn",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Produktionsinfo.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Vardtagarstatus",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Vardtagarstatus",
      "short" : "Vardtagarstatus",
      "definition" : "Vardtagarstatus",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Vardtagarstatus.statuskod",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Vardtagarstatus.statuskod",
      "short" : "statuskod",
      "definition" : "statuskod",
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
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Vardtagarstatus.frantid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Vardtagarstatus.frantid",
      "short" : "frantid",
      "definition" : "frantid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.Vardtagarstatus.tilltid",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.Vardtagarstatus.tilltid",
      "short" : "tilltid",
      "definition" : "tilltid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.Vardtagare.vilandestatusorsak",
      "path" : "uppdateravardtagareinformation-request.Vardtagare.vilandestatusorsak",
      "short" : "vilandestatusorsak",
      "definition" : "vilandestatusorsak",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation-request.meddelandetillapotek",
      "path" : "uppdateravardtagareinformation-request.meddelandetillapotek",
      "short" : "meddelandetillapotek",
      "definition" : "meddelandetillapotek",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
