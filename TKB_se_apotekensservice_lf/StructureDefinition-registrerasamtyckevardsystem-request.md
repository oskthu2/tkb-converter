# RegistreraSamtyckeVardsystem — Request - se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegistreraSamtyckeVardsystem — Request**

## Logical Model: RegistreraSamtyckeVardsystem — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/registrerasamtyckevardsystem-request | *Version*:7.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:RegistreraSamtyckeVardsystemRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i RegistreraSamtyckeVardsystem (urn:riv:se.apotekensservice:lf:RegistreraSamtyckeVardsystemResponder:1, RegistreraSamtyckeVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-lf|current/StructureDefinition/StructureDefinition-registrerasamtyckevardsystem-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registrerasamtyckevardsystem-request.csv), [Excel](StructureDefinition-registrerasamtyckevardsystem-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registrerasamtyckevardsystem-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/registrerasamtyckevardsystem-request",
  "version" : "7.0.0",
  "name" : "RegistreraSamtyckeVardsystemRequest",
  "title" : "RegistreraSamtyckeVardsystem — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:43:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i RegistreraSamtyckeVardsystem\n(urn:riv:se.apotekensservice:lf:RegistreraSamtyckeVardsystemResponder:1, RegistreraSamtyckeVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/registrerasamtyckevardsystem-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registrerasamtyckevardsystem-request",
      "path" : "registrerasamtyckevardsystem-request",
      "short" : "RegistreraSamtyckeVardsystem — Request",
      "definition" : "Logisk modell för begäran i RegistreraSamtyckeVardsystem\n(urn:riv:se.apotekensservice:lf:RegistreraSamtyckeVardsystemResponder:1, RegistreraSamtyckeVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "registrerasamtyckevardsystem-request.logicalAddress",
      "path" : "registrerasamtyckevardsystem-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader",
      "path" : "registrerasamtyckevardsystem-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.forskrivarkod",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.legitimationskod",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.fornamn",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.efternamn",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.yrkesgrupp",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.befattningskod",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.arbetsplatskod",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.arbetsplatsnamn",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.postort",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.postadress",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.postnummer",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.telefonnummer",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.requestId",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.rollnamn",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.hsaID",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.katalog",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.organisationsnummer",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.systemnamn",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.systemversion",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.argosHeader.systemIp",
      "path" : "registrerasamtyckevardsystem-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.klientinformation",
      "path" : "registrerasamtyckevardsystem-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Information om anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.klientinformation.anvandare",
      "path" : "registrerasamtyckevardsystem-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.klientinformation.session",
      "path" : "registrerasamtyckevardsystem-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.klientinformation.system",
      "path" : "registrerasamtyckevardsystem-request.klientinformation.system",
      "short" : "system",
      "definition" : "GLN-kod för anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.samtyckesgivare",
      "path" : "registrerasamtyckevardsystem-request.samtyckesgivare",
      "short" : "samtyckesgivare",
      "definition" : "Giltigt personnummer för patient vars samtycke ska registreras. Valideras mot FOLK.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.samtyckestagareForskrivarkod",
      "path" : "registrerasamtyckevardsystem-request.samtyckestagareForskrivarkod",
      "short" : "samtyckestagareForskrivarkod",
      "definition" : "Förskrivarkod för förskrivare som skall få samtycke. Förskrivarens personnummer hämtas från FORS och sparas i LF Samtyckesregister. Förskrivarkoden sparas EJ.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
