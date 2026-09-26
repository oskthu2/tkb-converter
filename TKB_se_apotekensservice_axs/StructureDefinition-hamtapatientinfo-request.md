# HamtaPatientInfo — Request - se.apotekensservice: axs — Hämta patientinformation v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaPatientInfo — Request**

## Logical Model: HamtaPatientInfo — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-axs/StructureDefinition/hamtapatientinfo-request | *Version*:7.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaPatientInfoRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaPatientInfo (urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoRequestType), inklusive de två SOAP-huvuden som WSDL:en kräver (LogicalAddress och ArgosHeader). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-axs|current/StructureDefinition/StructureDefinition-hamtapatientinfo-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtapatientinfo-request.csv), [Excel](StructureDefinition-hamtapatientinfo-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtapatientinfo-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-axs/StructureDefinition/hamtapatientinfo-request",
  "version" : "7.0.0",
  "name" : "HamtaPatientInfoRequest",
  "title" : "HamtaPatientInfo — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:42:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaPatientInfo\n(urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoRequestType),\ninklusive de två SOAP-huvuden som WSDL:en kräver (LogicalAddress och ArgosHeader).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-axs/StructureDefinition/hamtapatientinfo-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtapatientinfo-request",
      "path" : "hamtapatientinfo-request",
      "short" : "HamtaPatientInfo — Request",
      "definition" : "Logisk modell för begäran i HamtaPatientInfo\n(urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoRequestType),\ninklusive de två SOAP-huvuden som WSDL:en kräver (LogicalAddress och ArgosHeader)."
    },
    {
      "id" : "hamtapatientinfo-request.logicalAddress",
      "path" : "hamtapatientinfo-request.logicalAddress",
      "short" : "Logisk adress",
      "definition" : "SOAP-huvud LogicalAddress (itintegration_registry_1.0.xsd). Enligt WSDL: organisationsnummer för Apotekens Service AB.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader",
      "path" : "hamtapatientinfo-request.argosHeader",
      "short" : "Argos-huvud",
      "definition" : "SOAP-huvud ArgosHeader (ArgosHeader_1.0.xsd). Enligt WSDL: se dokumentationen för vilka fält som är obligatoriska för just denna tjänsteinteraktion. Alla fält är 0..1 i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.forskrivarkod",
      "path" : "hamtapatientinfo-request.argosHeader.forskrivarkod",
      "short" : "Förskrivarkod",
      "definition" : "Förskrivarkod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.legitimationskod",
      "path" : "hamtapatientinfo-request.argosHeader.legitimationskod",
      "short" : "Legitimationskod",
      "definition" : "Legitimationskod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.fornamn",
      "path" : "hamtapatientinfo-request.argosHeader.fornamn",
      "short" : "Förnamn",
      "definition" : "Användarens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.efternamn",
      "path" : "hamtapatientinfo-request.argosHeader.efternamn",
      "short" : "Efternamn",
      "definition" : "Användarens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.yrkesgrupp",
      "path" : "hamtapatientinfo-request.argosHeader.yrkesgrupp",
      "short" : "Yrkesgrupp",
      "definition" : "Yrkesgrupp.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.befattningskod",
      "path" : "hamtapatientinfo-request.argosHeader.befattningskod",
      "short" : "Befattningskod",
      "definition" : "Befattningskod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.arbetsplatskod",
      "path" : "hamtapatientinfo-request.argosHeader.arbetsplatskod",
      "short" : "Arbetsplatskod",
      "definition" : "Arbetsplatskod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.arbetsplatsnamn",
      "path" : "hamtapatientinfo-request.argosHeader.arbetsplatsnamn",
      "short" : "Arbetsplatsnamn",
      "definition" : "Arbetsplatsnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.postort",
      "path" : "hamtapatientinfo-request.argosHeader.postort",
      "short" : "Postort",
      "definition" : "Postort.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.postadress",
      "path" : "hamtapatientinfo-request.argosHeader.postadress",
      "short" : "Postadress",
      "definition" : "Postadress.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.postnummer",
      "path" : "hamtapatientinfo-request.argosHeader.postnummer",
      "short" : "Postnummer",
      "definition" : "Postnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.telefonnummer",
      "path" : "hamtapatientinfo-request.argosHeader.telefonnummer",
      "short" : "Telefonnummer",
      "definition" : "Telefonnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.requestId",
      "path" : "hamtapatientinfo-request.argosHeader.requestId",
      "short" : "Anrops-id",
      "definition" : "Anropets identitet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.rollnamn",
      "path" : "hamtapatientinfo-request.argosHeader.rollnamn",
      "short" : "Rollnamn",
      "definition" : "Rollnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.hsaID",
      "path" : "hamtapatientinfo-request.argosHeader.hsaID",
      "short" : "HSA-id",
      "definition" : "Användarens HSA-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.katalog",
      "path" : "hamtapatientinfo-request.argosHeader.katalog",
      "short" : "Katalog",
      "definition" : "Katalog.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.organisationsnummer",
      "path" : "hamtapatientinfo-request.argosHeader.organisationsnummer",
      "short" : "Organisationsnummer",
      "definition" : "Organisationsnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.systemnamn",
      "path" : "hamtapatientinfo-request.argosHeader.systemnamn",
      "short" : "Systemnamn",
      "definition" : "Anropande systems namn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.systemversion",
      "path" : "hamtapatientinfo-request.argosHeader.systemversion",
      "short" : "Systemversion",
      "definition" : "Anropande systems version.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.argosHeader.systemIp",
      "path" : "hamtapatientinfo-request.argosHeader.systemIp",
      "short" : "System-IP",
      "definition" : "Anropande systems IP-adress.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtapatientinfo-request.personnummer",
      "path" : "hamtapatientinfo-request.personnummer",
      "short" : "Personnummer",
      "definition" : "Giltigt personnummer för patient. Typen är xs:string i schemat (inte PersonIdType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
