# SkapaHkdbKonto — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkapaHkdbKonto — Request**

## Logical Model: SkapaHkdbKonto — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/skapahkdbkonto-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:SkapaHkdbKontoRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SkapaHkdbKonto (urn:riv:se.apotekensservice:pris:SkapaHkdbKontoResponder:4, SkapaHkdbKontoRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-skapahkdbkonto-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-skapahkdbkonto-request.csv), [Excel](StructureDefinition-skapahkdbkonto-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "skapahkdbkonto-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/skapahkdbkonto-request",
  "version" : "2.0.0",
  "name" : "SkapaHkdbKontoRequest",
  "title" : "SkapaHkdbKonto — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SkapaHkdbKonto\n(urn:riv:se.apotekensservice:pris:SkapaHkdbKontoResponder:4, SkapaHkdbKontoRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/skapahkdbkonto-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "skapahkdbkonto-request",
      "path" : "skapahkdbkonto-request",
      "short" : "SkapaHkdbKonto — Request",
      "definition" : "Logisk modell för begäran i SkapaHkdbKonto\n(urn:riv:se.apotekensservice:pris:SkapaHkdbKontoResponder:4, SkapaHkdbKontoRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "skapahkdbkonto-request.logicalAddress",
      "path" : "skapahkdbkonto-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader",
      "path" : "skapahkdbkonto-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.forskrivarkod",
      "path" : "skapahkdbkonto-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.legitimationskod",
      "path" : "skapahkdbkonto-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.fornamn",
      "path" : "skapahkdbkonto-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.efternamn",
      "path" : "skapahkdbkonto-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.yrkesgrupp",
      "path" : "skapahkdbkonto-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.befattningskod",
      "path" : "skapahkdbkonto-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.arbetsplatskod",
      "path" : "skapahkdbkonto-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.arbetsplatsnamn",
      "path" : "skapahkdbkonto-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.postort",
      "path" : "skapahkdbkonto-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.postadress",
      "path" : "skapahkdbkonto-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.postnummer",
      "path" : "skapahkdbkonto-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.telefonnummer",
      "path" : "skapahkdbkonto-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.requestId",
      "path" : "skapahkdbkonto-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.rollnamn",
      "path" : "skapahkdbkonto-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.hsaID",
      "path" : "skapahkdbkonto-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.katalog",
      "path" : "skapahkdbkonto-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.organisationsnummer",
      "path" : "skapahkdbkonto-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.systemnamn",
      "path" : "skapahkdbkonto-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.systemversion",
      "path" : "skapahkdbkonto-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.argosHeader.systemIp",
      "path" : "skapahkdbkonto-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.huvudPersNr",
      "path" : "skapahkdbkonto-request.huvudPersNr",
      "short" : "huvudPersNr",
      "definition" : "Personnummer för eventuell huvudperson.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.klientinformation",
      "path" : "skapahkdbkonto-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Objekt innehållande information om anropande klientsystem.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.klientinformation.anvandare",
      "path" : "skapahkdbkonto-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.klientinformation.session",
      "path" : "skapahkdbkonto-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.klientinformation.system",
      "path" : "skapahkdbkonto-request.klientinformation.system",
      "short" : "system",
      "definition" : "GLN-kod för anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.periodBrutto",
      "path" : "skapahkdbkonto-request.periodBrutto",
      "short" : "periodBrutto",
      "definition" : "Ackumulerat bruttobelopp i kronor och ören. Från och med version 10.3 ersätter periodBrutto periodNetto.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.periodStart",
      "path" : "skapahkdbkonto-request.periodStart",
      "short" : "periodStart",
      "definition" : "Eventuellt startdatum för innevarande högkostnadsperiod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "skapahkdbkonto-request.persNr",
      "path" : "skapahkdbkonto-request.persNr",
      "short" : "persNr",
      "definition" : "Personnummer för den som ska anslutas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
