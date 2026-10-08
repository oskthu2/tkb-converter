# GetHsaUnit — Request - orgmaster: hsa v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHsaUnit — Request**

## Logical Model: GetHsaUnit — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaunit-request | *Version*:1.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetHsaUnitRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetHsaUnit (urn:riv:orgmaster:hsa:GetHsaUnitResponder:1, GetHsaUnitType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.orgmaster-hsa|current/StructureDefinition/StructureDefinition-gethsaunit-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethsaunit-request.csv), [Excel](StructureDefinition-gethsaunit-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethsaunit-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaunit-request",
  "version" : "1.0",
  "name" : "GetHsaUnitRequest",
  "title" : "GetHsaUnit — Request",
  "status" : "draft",
  "date" : "2026-10-08T18:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetHsaUnit\n(urn:riv:orgmaster:hsa:GetHsaUnitResponder:1, GetHsaUnitType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaunit-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethsaunit-request",
      "path" : "gethsaunit-request",
      "short" : "GetHsaUnit — Request",
      "definition" : "Logisk modell för begäran i GetHsaUnit\n(urn:riv:orgmaster:hsa:GetHsaUnitResponder:1, GetHsaUnitType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "gethsaunit-request.logicalAddress",
      "path" : "gethsaunit-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethsaunit-request.hsaIdentity",
      "path" : "gethsaunit-request.hsaIdentity",
      "short" : "hsaIdentity",
      "definition" : "hsaIdentity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethsaunit-request.searchBase",
      "path" : "gethsaunit-request.searchBase",
      "short" : "searchBase",
      "definition" : "searchBase",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethsaunit-request.getParentInfo",
      "path" : "gethsaunit-request.getParentInfo",
      "short" : "getParentInfo",
      "definition" : "getParentInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
