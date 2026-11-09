# RegistreraSamtyckeVardsystem — Request - se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem v7.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegistreraSamtyckeVardsystem — Request**

## Logical Model: RegistreraSamtyckeVardsystem — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/registrerasamtyckevardsystem-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:RegistreraSamtyckeVardsystemRequest |
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
  "version" : "1.0",
  "name" : "RegistreraSamtyckeVardsystemRequest",
  "title" : "RegistreraSamtyckeVardsystem — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:48:21+00:00",
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
      "id" : "registrerasamtyckevardsystem-request.klientinformation",
      "path" : "registrerasamtyckevardsystem-request.klientinformation",
      "short" : "KlientinformationRequest",
      "definition" : "Information om anropande system.",
      "comment" : "TKB-fält: `klientinformation` (`KlientinformationRequest`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.klientinformation.anvandare",
      "path" : "registrerasamtyckevardsystem-request.klientinformation.anvandare",
      "short" : "Unikt användarid i anropande system.",
      "definition" : "Unikt användarid i anropande system.",
      "comment" : "TKB-fält: `../anvandare` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.klientinformation.session",
      "path" : "registrerasamtyckevardsystem-request.klientinformation.session",
      "short" : "Sessionens id i anropande system.",
      "definition" : "Sessionens id i anropande system.",
      "comment" : "TKB-fält: `../session` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.klientinformation.system",
      "path" : "registrerasamtyckevardsystem-request.klientinformation.system",
      "short" : "GLN-kod för anropande system.",
      "definition" : "GLN-kod för anropande system.",
      "comment" : "TKB-fält: `../system` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerasamtyckevardsystem-request.samtyckesgivare",
      "path" : "registrerasamtyckevardsystem-request.samtyckesgivare",
      "short" : "Giltigt personnummer för patient vars samtycke ska registreras. Valideras mot FOLK.",
      "definition" : "Giltigt personnummer för patient vars samtycke ska registreras. Valideras mot FOLK.",
      "comment" : "TKB-fält: `samtyckesgivare` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `samtyckestagareForskrivarkod` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
