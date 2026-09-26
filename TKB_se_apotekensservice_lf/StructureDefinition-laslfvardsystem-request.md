# LasLFVardsystem — Request - se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LasLFVardsystem — Request**

## Logical Model: LasLFVardsystem — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/laslfvardsystem-request | *Version*:7.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:LasLFVardsystemRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i LasLFVardsystem (urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4, LasLFVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-lf|current/StructureDefinition/StructureDefinition-laslfvardsystem-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-laslfvardsystem-request.csv), [Excel](StructureDefinition-laslfvardsystem-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "laslfvardsystem-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/laslfvardsystem-request",
  "version" : "7.0.0",
  "name" : "LasLFVardsystemRequest",
  "title" : "LasLFVardsystem — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:43:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i LasLFVardsystem\n(urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4, LasLFVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/laslfvardsystem-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "laslfvardsystem-request",
      "path" : "laslfvardsystem-request",
      "short" : "LasLFVardsystem — Request",
      "definition" : "Logisk modell för begäran i LasLFVardsystem\n(urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4, LasLFVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "laslfvardsystem-request.logicalAddress",
      "path" : "laslfvardsystem-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader",
      "path" : "laslfvardsystem-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.forskrivarkod",
      "path" : "laslfvardsystem-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.legitimationskod",
      "path" : "laslfvardsystem-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.fornamn",
      "path" : "laslfvardsystem-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.efternamn",
      "path" : "laslfvardsystem-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.yrkesgrupp",
      "path" : "laslfvardsystem-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.befattningskod",
      "path" : "laslfvardsystem-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.arbetsplatskod",
      "path" : "laslfvardsystem-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.arbetsplatsnamn",
      "path" : "laslfvardsystem-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.postort",
      "path" : "laslfvardsystem-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.postadress",
      "path" : "laslfvardsystem-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.postnummer",
      "path" : "laslfvardsystem-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.telefonnummer",
      "path" : "laslfvardsystem-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.requestId",
      "path" : "laslfvardsystem-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.rollnamn",
      "path" : "laslfvardsystem-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.hsaID",
      "path" : "laslfvardsystem-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.katalog",
      "path" : "laslfvardsystem-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.organisationsnummer",
      "path" : "laslfvardsystem-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.systemnamn",
      "path" : "laslfvardsystem-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.systemversion",
      "path" : "laslfvardsystem-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.argosHeader.systemIp",
      "path" : "laslfvardsystem-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.anvandarnamn",
      "path" : "laslfvardsystem-request.anvandarnamn",
      "short" : "anvandarnamn",
      "definition" : "Användarnamn, används i kombination med HSA användar-id (klientinformation.anvandare) för att identifiera användare. Obligatoriskt om förskrivarkod saknas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.arbetsplatsId",
      "path" : "laslfvardsystem-request.arbetsplatsId",
      "short" : "arbetsplatsId",
      "definition" : "HSA-id för arbetsplats.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.arbetsplatskod",
      "path" : "laslfvardsystem-request.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Förskrivarens arbetsplatskod, valideras mot ARKO. Obligatorisk om arbetsplatsnamn och arbetsplatsort inte anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.arbetsplatsnamn",
      "path" : "laslfvardsystem-request.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "Namnet på användarens arbetsplats. Används istället för arbetsplatskod. Obligatorisk om arbetsplatskod inte anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.arbetsplatsort",
      "path" : "laslfvardsystem-request.arbetsplatsort",
      "short" : "arbetsplatsort",
      "definition" : "Orten för användarens arbetsplats. Används istället för arbetsplatskod. Obligatorisk om arbetsplatskod inte anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.atkomsttyp",
      "path" : "laslfvardsystem-request.atkomsttyp",
      "short" : "atkomsttyp",
      "definition" : "Treställig kod för typ av åtkomst. Tillåtna värden: ENG - Engångssamtycke SAM - Tillsvidaresamtycke NOD - Nödåtkomst",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.forskrivarkod",
      "path" : "laslfvardsystem-request.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens förskrivarkod, valideras mot FORS. Förskrivarkod skall även anges som användare i klientinformation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.klientinformation",
      "path" : "laslfvardsystem-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Information om anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "laslfvardsystem-request.klientinformation.anvandare",
      "path" : "laslfvardsystem-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.klientinformation.session",
      "path" : "laslfvardsystem-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.klientinformation.system",
      "path" : "laslfvardsystem-request.klientinformation.system",
      "short" : "system",
      "definition" : "Systemnamn för anropande system. GLN-kod krävs för anrop från MVK och LTj.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem-request.personnummer",
      "path" : "laslfvardsystem-request.personnummer",
      "short" : "personnummer",
      "definition" : "Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
