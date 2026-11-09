# GetMiuForPerson — Request - orgmaster: hsa v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMiuForPerson — Request**

## Logical Model: GetMiuForPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getmiuforperson-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetMiuForPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetMiuForPerson (urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1, GetMiuForPersonType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.orgmaster-hsa|current/StructureDefinition/StructureDefinition-getmiuforperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmiuforperson-request.csv), [Excel](StructureDefinition-getmiuforperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmiuforperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getmiuforperson-request",
  "version" : "1.0",
  "name" : "GetMiuForPersonRequest",
  "title" : "GetMiuForPerson — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:45:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetMiuForPerson\n(urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1, GetMiuForPersonType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getmiuforperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmiuforperson-request",
      "path" : "getmiuforperson-request",
      "short" : "GetMiuForPerson — Request",
      "definition" : "Logisk modell för begäran i GetMiuForPerson\n(urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1, GetMiuForPersonType), inklusive SOAP-huvuden enligt WSDL.",
      "constraint" : [{
        "key" : "getmiuforpersonrequest-choice-1",
        "severity" : "error",
        "human" : "Exakt ett av hsaIdentity, personalIdentityNumber ska anges (xs:choice i schemat).",
        "expression" : "hsaIdentity.exists() xor personalIdentityNumber.exists()",
        "source" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getmiuforperson-request"
      },
      {
        "key" : "getmiuforperson-request-hsaid-xor-pnr",
        "severity" : "error",
        "human" : "Exakt ett av hsaIdentity och personalIdentityNumber ska anges (xs:choice i schemat).",
        "expression" : "hsaIdentity.exists() xor personalIdentityNumber.exists()",
        "source" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/getmiuforperson-request"
      }]
    },
    {
      "id" : "getmiuforperson-request.hsaIdentity",
      "path" : "getmiuforperson-request.hsaIdentity",
      "short" : "hsaIdentity",
      "definition" : "hsaIdentity",
      "comment" : "TKB-fält: `hsaIdentity` (`HsaIdentityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson-request.personalIdentityNumber",
      "path" : "getmiuforperson-request.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "personalIdentityNumber",
      "comment" : "TKB-fält: `personalIdentityNumber` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmiuforperson-request.searchBase",
      "path" : "getmiuforperson-request.searchBase",
      "short" : "searchBase",
      "definition" : "searchBase",
      "comment" : "TKB-fält: `searchBase` (`SearchBaseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/SearchBaseType"]
      }]
    }]
  }
}

```
