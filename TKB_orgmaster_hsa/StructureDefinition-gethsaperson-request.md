# GetHsaPerson — Request - orgmaster: hsa v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHsaPerson — Request**

## Logical Model: GetHsaPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaperson-request | *Version*:1.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetHsaPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetHsaPerson (urn:riv:orgmaster:hsa:GetHsaPersonResponder:1, GetHsaPersonType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.orgmaster-hsa|current/StructureDefinition/StructureDefinition-gethsaperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethsaperson-request.csv), [Excel](StructureDefinition-gethsaperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethsaperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaperson-request",
  "version" : "1.0.0",
  "name" : "GetHsaPersonRequest",
  "title" : "GetHsaPerson — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:15:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetHsaPerson\n(urn:riv:orgmaster:hsa:GetHsaPersonResponder:1, GetHsaPersonType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethsaperson-request",
      "path" : "gethsaperson-request",
      "short" : "GetHsaPerson — Request",
      "definition" : "Logisk modell för begäran i GetHsaPerson\n(urn:riv:orgmaster:hsa:GetHsaPersonResponder:1, GetHsaPersonType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "gethsaperson-request.logicalAddress",
      "path" : "gethsaperson-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethsaperson-request.hsaIdentity",
      "path" : "gethsaperson-request.hsaIdentity",
      "short" : "hsaIdentity",
      "definition" : "hsaIdentity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethsaperson-request.personalIdentityNumber",
      "path" : "gethsaperson-request.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "personalIdentityNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethsaperson-request.searchBase",
      "path" : "gethsaperson-request.searchBase",
      "short" : "searchBase",
      "definition" : "searchBase",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
