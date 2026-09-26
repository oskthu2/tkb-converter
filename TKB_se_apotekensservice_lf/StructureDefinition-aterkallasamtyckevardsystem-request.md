# AterkallaSamtyckeVardsystem — Request - se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AterkallaSamtyckeVardsystem — Request**

## Logical Model: AterkallaSamtyckeVardsystem — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/aterkallasamtyckevardsystem-request | *Version*:7.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:AterkallaSamtyckeVardsystemRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i AterkallaSamtyckeVardsystem (urn:riv:se.apotekensservice:lf:AterkallaSamtyckeVardsystemResponder:1, AterkallaSamtyckeVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-lf|current/StructureDefinition/StructureDefinition-aterkallasamtyckevardsystem-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-aterkallasamtyckevardsystem-request.csv), [Excel](StructureDefinition-aterkallasamtyckevardsystem-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "aterkallasamtyckevardsystem-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/aterkallasamtyckevardsystem-request",
  "version" : "7.0.0",
  "name" : "AterkallaSamtyckeVardsystemRequest",
  "title" : "AterkallaSamtyckeVardsystem — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:43:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i AterkallaSamtyckeVardsystem\n(urn:riv:se.apotekensservice:lf:AterkallaSamtyckeVardsystemResponder:1, AterkallaSamtyckeVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/aterkallasamtyckevardsystem-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "aterkallasamtyckevardsystem-request",
      "path" : "aterkallasamtyckevardsystem-request",
      "short" : "AterkallaSamtyckeVardsystem — Request",
      "definition" : "Logisk modell för begäran i AterkallaSamtyckeVardsystem\n(urn:riv:se.apotekensservice:lf:AterkallaSamtyckeVardsystemResponder:1, AterkallaSamtyckeVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.logicalAddress",
      "path" : "aterkallasamtyckevardsystem-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.forskrivarkod",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.legitimationskod",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.fornamn",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.efternamn",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.yrkesgrupp",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.befattningskod",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.arbetsplatskod",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.arbetsplatsnamn",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.postort",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.postadress",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.postnummer",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.telefonnummer",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.requestId",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.rollnamn",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.hsaID",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.katalog",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.organisationsnummer",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.systemnamn",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.systemversion",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.argosHeader.systemIp",
      "path" : "aterkallasamtyckevardsystem-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.klientinformation",
      "path" : "aterkallasamtyckevardsystem-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Information om anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.klientinformation.anvandare",
      "path" : "aterkallasamtyckevardsystem-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.klientinformation.session",
      "path" : "aterkallasamtyckevardsystem-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.klientinformation.system",
      "path" : "aterkallasamtyckevardsystem-request.klientinformation.system",
      "short" : "system",
      "definition" : "GLN-kod för anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.samtyckesgivare",
      "path" : "aterkallasamtyckevardsystem-request.samtyckesgivare",
      "short" : "samtyckesgivare",
      "definition" : "Giltigt personnummer för patient vars samtycke ska återkallas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem-request.samtyckestagareForskrivarkod",
      "path" : "aterkallasamtyckevardsystem-request.samtyckestagareForskrivarkod",
      "short" : "samtyckestagareForskrivarkod",
      "definition" : "Förskrivarkod för förskrivare som vars samtycke ska återkallas, valideras mot FORS. Skall vara samma som användare i klientinformation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
