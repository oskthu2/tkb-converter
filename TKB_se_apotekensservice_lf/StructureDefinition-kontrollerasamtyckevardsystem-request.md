# KontrolleraSamtyckeVardsystem — Request - se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KontrolleraSamtyckeVardsystem — Request**

## Logical Model: KontrolleraSamtyckeVardsystem — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/kontrollerasamtyckevardsystem-request | *Version*:7.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:KontrolleraSamtyckeVardsystemRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i KontrolleraSamtyckeVardsystem (urn:riv:se.apotekensservice:lf:KontrolleraSamtyckeVardsystemResponder:1, KontrolleraSamtyckeVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-lf|current/StructureDefinition/StructureDefinition-kontrollerasamtyckevardsystem-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-kontrollerasamtyckevardsystem-request.csv), [Excel](StructureDefinition-kontrollerasamtyckevardsystem-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "kontrollerasamtyckevardsystem-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/kontrollerasamtyckevardsystem-request",
  "version" : "7.0.0",
  "name" : "KontrolleraSamtyckeVardsystemRequest",
  "title" : "KontrolleraSamtyckeVardsystem — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:43:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i KontrolleraSamtyckeVardsystem\n(urn:riv:se.apotekensservice:lf:KontrolleraSamtyckeVardsystemResponder:1, KontrolleraSamtyckeVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/kontrollerasamtyckevardsystem-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "kontrollerasamtyckevardsystem-request",
      "path" : "kontrollerasamtyckevardsystem-request",
      "short" : "KontrolleraSamtyckeVardsystem — Request",
      "definition" : "Logisk modell för begäran i KontrolleraSamtyckeVardsystem\n(urn:riv:se.apotekensservice:lf:KontrolleraSamtyckeVardsystemResponder:1, KontrolleraSamtyckeVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.logicalAddress",
      "path" : "kontrollerasamtyckevardsystem-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.forskrivarkod",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.legitimationskod",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.fornamn",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.efternamn",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.yrkesgrupp",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.befattningskod",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.arbetsplatskod",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.arbetsplatsnamn",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.postort",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.postadress",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.postnummer",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.telefonnummer",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.requestId",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.rollnamn",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.hsaID",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.katalog",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.organisationsnummer",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.systemnamn",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.systemversion",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.argosHeader.systemIp",
      "path" : "kontrollerasamtyckevardsystem-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.klientinformation",
      "path" : "kontrollerasamtyckevardsystem-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Information om anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.klientinformation.anvandare",
      "path" : "kontrollerasamtyckevardsystem-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.klientinformation.session",
      "path" : "kontrollerasamtyckevardsystem-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.klientinformation.system",
      "path" : "kontrollerasamtyckevardsystem-request.klientinformation.system",
      "short" : "system",
      "definition" : "GLN-kod för anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.samtyckesgivare",
      "path" : "kontrollerasamtyckevardsystem-request.samtyckesgivare",
      "short" : "samtyckesgivare",
      "definition" : "Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem-request.samtyckestagareForskrivarkod",
      "path" : "kontrollerasamtyckevardsystem-request.samtyckestagareForskrivarkod",
      "short" : "samtyckestagareForskrivarkod",
      "definition" : "Förskrivarkod för förskrivare vars samtycke ska kontrolleras. Ska vara identisk med användare i klientinformation. Valideras mot FORS.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
