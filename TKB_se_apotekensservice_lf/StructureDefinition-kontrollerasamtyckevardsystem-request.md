# KontrolleraSamtyckeVardsystem — Request - se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem v7.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KontrolleraSamtyckeVardsystem — Request**

## Logical Model: KontrolleraSamtyckeVardsystem — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/kontrollerasamtyckevardsystem-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:KontrolleraSamtyckeVardsystemRequest |
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
  "version" : "1.0",
  "name" : "KontrolleraSamtyckeVardsystemRequest",
  "title" : "KontrolleraSamtyckeVardsystem — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:48:21+00:00",
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
      "id" : "kontrollerasamtyckevardsystem-request.klientinformation",
      "path" : "kontrollerasamtyckevardsystem-request.klientinformation",
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
      "id" : "kontrollerasamtyckevardsystem-request.klientinformation.anvandare",
      "path" : "kontrollerasamtyckevardsystem-request.klientinformation.anvandare",
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
      "id" : "kontrollerasamtyckevardsystem-request.klientinformation.session",
      "path" : "kontrollerasamtyckevardsystem-request.klientinformation.session",
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
      "id" : "kontrollerasamtyckevardsystem-request.klientinformation.system",
      "path" : "kontrollerasamtyckevardsystem-request.klientinformation.system",
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
      "id" : "kontrollerasamtyckevardsystem-request.samtyckesgivare",
      "path" : "kontrollerasamtyckevardsystem-request.samtyckesgivare",
      "short" : "Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas.",
      "definition" : "Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas.",
      "comment" : "TKB-fält: `samtyckesgivare` (`string`, kardinalitet 1..1).",
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
