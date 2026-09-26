# KontrolleraForman — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KontrolleraForman — Request**

## Logical Model: KontrolleraForman — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kontrolleraforman-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:KontrolleraFormanRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i KontrolleraForman (urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1, KontrolleraFormanRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-kontrolleraforman-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-kontrolleraforman-request.csv), [Excel](StructureDefinition-kontrolleraforman-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "kontrolleraforman-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kontrolleraforman-request",
  "version" : "2.0.0",
  "name" : "KontrolleraFormanRequest",
  "title" : "KontrolleraForman — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i KontrolleraForman\n(urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1, KontrolleraFormanRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kontrolleraforman-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "kontrolleraforman-request",
      "path" : "kontrolleraforman-request",
      "short" : "KontrolleraForman — Request",
      "definition" : "Logisk modell för begäran i KontrolleraForman\n(urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1, KontrolleraFormanRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "kontrolleraforman-request.logicalAddress",
      "path" : "kontrolleraforman-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader",
      "path" : "kontrolleraforman-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.forskrivarkod",
      "path" : "kontrolleraforman-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.legitimationskod",
      "path" : "kontrolleraforman-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.fornamn",
      "path" : "kontrolleraforman-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.efternamn",
      "path" : "kontrolleraforman-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.yrkesgrupp",
      "path" : "kontrolleraforman-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.befattningskod",
      "path" : "kontrolleraforman-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.arbetsplatskod",
      "path" : "kontrolleraforman-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.arbetsplatsnamn",
      "path" : "kontrolleraforman-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.postort",
      "path" : "kontrolleraforman-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.postadress",
      "path" : "kontrolleraforman-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.postnummer",
      "path" : "kontrolleraforman-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.telefonnummer",
      "path" : "kontrolleraforman-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.requestId",
      "path" : "kontrolleraforman-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.rollnamn",
      "path" : "kontrolleraforman-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.hsaID",
      "path" : "kontrolleraforman-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.katalog",
      "path" : "kontrolleraforman-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.organisationsnummer",
      "path" : "kontrolleraforman-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.systemnamn",
      "path" : "kontrolleraforman-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.systemversion",
      "path" : "kontrolleraforman-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.argosHeader.systemIp",
      "path" : "kontrolleraforman-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.artikelIdLista",
      "path" : "kontrolleraforman-request.artikelIdLista",
      "short" : "artikelIdLista",
      "definition" : "Artikel - Endast ett id per artikel",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "kontrolleraforman-request.artikelIdLista.gtin",
      "path" : "kontrolleraforman-request.artikelIdLista.gtin",
      "short" : "gtin",
      "definition" : "GTIN-kod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.artikelIdLista.nplPackageId",
      "path" : "kontrolleraforman-request.artikelIdLista.nplPackageId",
      "short" : "nplPackageId",
      "definition" : "Förpackningsid från Nationellt Produktregister för Läkemedel Unikt id för LM-artikel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.artikelIdLista.varunr",
      "path" : "kontrolleraforman-request.artikelIdLista.varunr",
      "short" : "varunr",
      "definition" : "Nordiskt varunummer Unik för handelsvaror. För läkemedel kan dubletter förekomma vid parallellimport",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.klientinformation",
      "path" : "kontrolleraforman-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Objekt innehållande information om anropande klientsystem.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "kontrolleraforman-request.klientinformation.anvandare",
      "path" : "kontrolleraforman-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.klientinformation.session",
      "path" : "kontrolleraforman-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.klientinformation.system",
      "path" : "kontrolleraforman-request.klientinformation.system",
      "short" : "system",
      "definition" : "GLN-kod för anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman-request.fodelsedatum",
      "path" : "kontrolleraforman-request.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Födelsedatum. Anges på formen yyyymmdd. Används vid framtagning av förmånskod när varan är preventivmedel med förmånskod R. Om personen är under 21 år blir förmånskoden F för dessa varor. Gäller när lagen om gratis preventivmedel för personer under 21 år trätt i kraft. (Refererat element ur KontrolleraFormanResponder_1_ext_1.0.xsd, namnrymd urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1:ext:1.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
